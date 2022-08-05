package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

public class FileUtil {

	public void uploadPath(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		// request 내장 객체를 통해 서버의 물리적 경로를 얻어옴.
		// 파일업로드를 위한 디렉토리는 정적파일 저장을 위한 resources 하위에 생성한다.
		String path = req.getSession().getServletContext().getRealPath("resources/upload");
		// View 호출 없이 컨트롤러에서 직접 출력하기 위해 MIME타입을 지정한다.
		resp.setContentType("text/html; charset=UTF-8");
		// PrintWriter 객체 생성 후 경로를 출력한다.
		PrintWriter pw = resp.getWriter();
		pw.print("/upload 디렉토리의 물리적 경로 : " + path); 
	}
	
	public static String getUuid() {
		// 생성된 원본 그대로 출력. 하이픈이 포함된 문자열.
		String uuid = UUID.randomUUID().toString();
		System.out.println("생성된 UUID-1 : " + uuid);
		// 하이픈을 제거한 상태로 출력.
		uuid = uuid.replaceAll("-", "");
		System.out.println("생성된 UUID-2 : " + uuid);
		return uuid;
	}
	
	// 파일 다운로드 처리
	/*
		download(
		HttpServletRequest req, : request 내장객체
		HttpServletResponse resp, : response 내장객체
		String directory, : 파일이 저장된 서버의 물리적 경로( 절대 경로 )
		String sfileName, : 서버에 저장된 파일명
	    String ofileName : 원본 파일명
	    )
	 */
	public static void download(HttpServletRequest req, HttpServletResponse resp, String directory, String sfileName, String ofileName) {
		
		// 디렉토리의 물리적 경로 얻어오기
		String sDirectory = req.getServletContext().getRealPath(directory);
		
		try {
			
			// 서버에 저장된 파일을 찾아 File 객체 생성
			File file = new File(sDirectory, sfileName);
			
			// 입력 스트림 생성
			InputStream iStream = new FileInputStream(file);
			
			// request 헤더를 통해 해당 웹 브라우저의 종류를 얻어온다.
			String client = req.getHeader("User-Agent");
			if(client.indexOf("WOW64") == -1) {
				//인터넷 익스플로러가 아닌경우 한글파일명 인코딩( 깨짐 방지 )
				ofileName = new String(ofileName.getBytes("UTF-8"), "ISO-8859-1");
			} else {
				//인터넷 익스플로러일 때 한글파일명 인코딩
				ofileName = new String(ofileName.getBytes("KSC5601"), "ISO-8859-1");
			}
			
			// 다운로드를 위한 response 헤더 설정
			resp.reset();
			resp.setContentType("application/octet-stream");
			// 여기에서 파일 다운로드 시 파일명 변경
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + sfileName + "\"");
			resp.setHeader("Content-Length", "" + file.length() );
			
			//out.clear();
			// response 내장객체를 통해 새로운 출력 스트림 생성
			OutputStream oStream = resp.getOutputStream();
			
			// 출력 스트림을 통해 파일 내용을 출력한다. [ read => write ]
			byte b[] = new byte[(int)file.length()];
			int readBuffer = 0;
			while ( (readBuffer = iStream.read(b)) > 0 ) {
				oStream.write(b, 0, readBuffer);
			}
			
			//입출력 스트림을 닫아준다.( 자원해제 )
			iStream.close();
			oStream.close();
			
		} catch (FileNotFoundException e) {
			System.out.println("파일을 찾을 수 없습니다.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("예외가 발생하였습니다.");
			e.printStackTrace();
		}
	}
	
	public static void deleteFile(HttpServletRequest req, String directory, String filename) {
		
		String sDirectory = req.getServletContext().getRealPath(directory);
		File file = new File(sDirectory + File.separator + filename);
		if (file.exists()) {
			file.delete();
		}
	}
}
