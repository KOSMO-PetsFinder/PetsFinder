package com.kosmo.petsfinder;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import fileupload.FileUtil;
import petsfinder.member.MemberDAOImpl;
import petsfinder.member.MemberDTO;
import petsfinder.utils.CookieManager;
import smtp.SMTPAuth;

@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@SuppressWarnings("null")
	@RequestMapping(value="/NaverLogin", method=RequestMethod.GET)
	public String naverLogin(Model model, HttpServletRequest req) {
		
		String clientId = "DdXnsRLETvCMpBvo8zo2";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "dmNcWO32M7";//애플리케이션 클라이언트 시크릿값";
	    String code = req.getParameter("code");
	    String state = req.getParameter("state");
	    String redirectURI = "";
		try {
			redirectURI = URLEncoder.encode("http://localhost:8088/PetsFinder/", "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
	    String apiURL;
	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
	    apiURL += "client_id=" + clientId;
	    apiURL += "&client_secret=" + clientSecret;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&code=" + code;
	    apiURL += "&state=" + state;
	    String access_token = "";
	    String refresh_token = "";
	    try {
	    	URL url = new URL(apiURL);
	    	HttpURLConnection con = (HttpURLConnection)url.openConnection();
	    	con.setRequestMethod("GET");
	    	int responseCode = con.getResponseCode();
	    	BufferedReader br;
	    	if(responseCode==200) { // 정상 호출
	    		br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    	} else {  // 에러 발생
	    		br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	    	}
	        String inputLine;
	        StringBuffer res = new StringBuffer();
	        while ((inputLine = br.readLine()) != null) {
	        	res.append(inputLine);
	        }
	        br.close();
	        if(responseCode==200) {
	        	JSONParser parsing = new JSONParser();
	        	Object obj = parsing.parse(res.toString());
	        	JSONObject jsonObj = (JSONObject)obj;
    			        
	        	access_token = (String)jsonObj.get("access_token");
	        	refresh_token = (String)jsonObj.get("refresh_token");
	        }
	    } catch (Exception e) {
	    	System.out.println(e);
	    }
		
	    if(access_token != null) { // access_token을 잘 받아왔다면
	    	try {
	    		String token = access_token; // 네이버 로그인 접근 토큰;
	            String header = "Bearer " + token; // Bearer 다음에 공백 추가
	    		String apiurl = "https://openapi.naver.com/v1/nid/me";
	    		URL url = new URL(apiurl);
	    		HttpURLConnection con = (HttpURLConnection)url.openConnection();
	    		con.setRequestMethod("GET");
	    		con.setRequestProperty("Authorization", header);
	    		int responseCode = con.getResponseCode();
	    		BufferedReader br;
	    		if(responseCode==200) { // 정상 호출
	    			br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    		} else {  // 에러 발생
	    			br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	    		}
	    		String inputLine;
	    		StringBuffer res = new StringBuffer();
	    		while ((inputLine = br.readLine()) != null) {
	    			res.append(inputLine);
	    			JSONParser parsing = new JSONParser();
	    			Object obj = parsing.parse(res.toString());
	    			JSONObject jsonObj = (JSONObject)obj;
	    			JSONObject resObj = (JSONObject)jsonObj.get("response");
	    			String splitToken = access_token.substring(1, 5) + access_token.substring(40, 44);

	    			String id = ((String)resObj.get("id")).substring(5, 14);
	    			String pw = splitToken;
	    			String email = (String)resObj.get("email");
	    			String address = " ";
	    			String name = (String)resObj.get("name");
	    			String phone = (String)resObj.get("mobile");
	    			String birthday = (String)resObj.get("birthyear") + "-" + (String)resObj.get("birthday");
	    			String gender = (String)resObj.get("gender");
	    			String photo = (String)resObj.get("profile_image");
	    			
	    			String id_val = sqlSession.getMapper(MemberDAOImpl.class).idValidate(id);
	    			
	    			if (id_val == null) {
	    				
	    				MemberDTO dto = new MemberDTO();
	    				
	    				dto.setMember_id(id);
	    				dto.setMember_pass(pw);
	    				dto.setMember_email(email);
	    				dto.setMember_addr(address);
	    				dto.setMember_name(name);
	    				dto.setMember_phone(phone);
	    				dto.setMember_birth(birthday);
	    				dto.setMember_gender(gender);
	    				dto.setMember_photo(photo);
	    				
	    				int result = sqlSession.getMapper(MemberDAOImpl.class).memberInsert(dto);
	    				if(result == 1) 
	    					System.out.println("네이버 회원 가입 완료");
	    				else 
	    					System.out.println("네이버 회원 가입 실패");
	    			} else {
	    				System.out.println("이미 있는 아이디");
	    			}
	    			System.out.println("네이버 로그인");
	    			HttpSession session = req.getSession();
	    			session.setAttribute("id", id);
	    			session.setAttribute("name", name);
	    			session.setAttribute("email", email);
	    		}
	    		br.close();
	        } catch (Exception e) {
	        	e.printStackTrace();
	        }
	    }

		return "redirect:./";
	}
	
	@RequestMapping(value="/Login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		String id = req.getParameter("id");
		String pass = req.getParameter("password");
		String save_check = req.getParameter("save_check");
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMember_id(id);
		memberDTO.setMember_pass(pass);
		MemberDTO dto = sqlSession.getMapper(MemberDAOImpl.class).memberLogin(memberDTO);
		if(dto != null) {
			session.setAttribute("idx", dto.getMember_idx());
			session.setAttribute("id", dto.getMember_id());
			session.setAttribute("name", dto.getMember_name());
			session.setAttribute("email", dto.getMember_email());
			session.setAttribute("type", dto.getMember_type());
			if (save_check != null && save_check.equals("Y")) {
				CookieManager.makeCookie(resp, "loginId", id, 86400);
			} else {
				CookieManager.deleteCookie(resp, "loginId");
			}
			
			model.addAttribute("dto", dto);
			return "redirect:./";
		} else {
			return "redirect:./Login";
		}
	}
	
	@RequestMapping("/idDuple")
	@ResponseBody
	public void idDuple(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/html; charset=UTF-8");
		String member_id = req.getParameter("id");
		
		String result = "";
		
		if(member_id == "") {
	        
			result = "아이디 입력하세요";
			
	    // 아이디 입력 O
		} else {
	        // 아이디가 6 ~ 12자리인지 확인
	        if(member_id.length() >= 6 && member_id.length() <= 12) {
	        	boolean check = true;
	          	for(int i = 0; i < member_id.length(); i++) {
		            int ascii = member_id.charAt(i);
		            if(!((ascii >= 48 && ascii <= 57)
		                || (ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122))) {
		            	check = false;
		            	break;
		            }
	          	}
				// check가 false이면 영문, 숫자 이외의 문자가 입력되었으므로 새로 입력하라는 문구 출력
				if(check == false) {
					result = "아이디는 영문과 숫자의 조합으로 입력하세요";
				} else {
					String id = sqlSession.getMapper(MemberDAOImpl.class).idValidate(member_id);
					
					if(id == null) {
						result = "사용 가능합니다";
					} else if (id.equals(member_id)) {
						result = "중복되었습니다";
					}
	            }
	        } else {
	        	result = "아이디는 6자리에서 12자리로 입력하세요";
	        }
		}
		PrintWriter pw = resp.getWriter();
		pw.print(result);
	}
	
	@RequestMapping(value="/Regist", method = RequestMethod.POST)
	public String Regist(Model model, HttpServletRequest req) {
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("pass2");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String address = req.getParameter("zipcode") + " / " + req.getParameter("address1") + " / " + req.getParameter("address2");
		String phone = req.getParameter("mobile1") + "-" + req.getParameter("mobile2") + "-" + req.getParameter("mobile3");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(id);
		dto.setMember_pass(pw);
		dto.setMember_email(email);
		dto.setMember_addr(address);
		dto.setMember_name(name);
		dto.setMember_phone(phone);
		dto.setMember_birth(birth);
		dto.setMember_gender(gender);
		
		int success = sqlSession.getMapper(MemberDAOImpl.class).memberInsert(dto);
		
		if(success == 1) {
			System.out.println("회원가입 성공");
			return "redirect:./";
		} else {
			System.out.println("회원가입 실패");
			return "redirect:./Regist";
		}
	}
	
	public boolean emailSending(Map<String, String> map) {
		
		boolean sendOk = false;
		
		// 네이버 SMTP 서버를 사용하기 위한 속성으로 이미 정해져 있는 값으로 설정
		Properties p = new Properties();
        p.put("mail.smtp.host", "smtp.naver.com");
        p.put("mail.smtp.port", "465");
        p.put("mail.smtp.starttls.enable", "true");
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.debug", "true");
        p.put("mail.smtp.socketFactory.port", "465");
        p.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        p.put("mail.smtp.socketFactory.fallback", "false");
        
        try {
        	// 네이버에 로그인 하여 인증 정보를 얻어온다.
        	Authenticator auth = new SMTPAuth();
        	
        	Session session = Session.getInstance(p, auth);
        	session.setDebug(true);
        	
        	// 제목 설정
        	MimeMessage msg = new MimeMessage(session);
        	msg.setSubject(map.get("subject"));
        	
        	// 보내는 사람 Email 설정
        	Address fromAddr = new InternetAddress(map.get("from"));
        	msg.setFrom(fromAddr);
        	
        	// 받는 사람 Email 설정
        	Address toAddr = new InternetAddress(map.get("to"));
        	msg.addRecipient(Message.RecipientType.TO, toAddr);
        	
        	// 내용 줄바꿈 처리
        	msg.setContent(map.get("content"), "text/html;charset=UTF-8");
        	
        	// 실제 Email 발송 처리 부분
        	Transport.send(msg);
        	sendOk = true;
        } catch (Exception e) {
        	sendOk = false;
        	e.printStackTrace();
        }
        
        return sendOk;
	}
	
	// 사용자가 작성한 내용을 form값으로 받아 정리한 후 메일 발송
	@RequestMapping(value="/emailSendAction.do", method = RequestMethod.POST)
	public void emailSendAction(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String sendResult = "이메일 전송 준비";
		// form값 정리를 위한 Map 컬렉션
		Map<String,	String> emailContent = new HashMap<String, String>();
		// 보내는 사람
		emailContent.put("from", req.getParameter("from"));
		// 받는 사람
		emailContent.put("to", req.getParameter("to"));
		// 제목
		emailContent.put("subject", req.getParameter("subject"));
		
		// 메일 발송 형식
		String format = req.getParameter("format");
		// 내용
		String content = req.getParameter("content").replace("\r\n", "<br/>");
		
		if(format.equals("text")) {
			// 전송 형식이 text라면 순수한 텍스트만 내용에 추가
			emailContent.put("content", content);
		} else if (format.equals("html")) {
			// html 형식이라면 우리가 디자인 한 메일form에 내용을 추가한 후 메일 발송
			String oneLine="", mailContents="";
			try {
				// 메일 form이 있는 디렉토리의 물리적 경로 얻어오기
				String dirPath = req.getSession().getServletContext().getRealPath("/resources/mailForm/MailForm.html");
				// 파일의 내용을 읽어오기 위해 IO스트림을 생성한다.
	            BufferedReader br = new BufferedReader(new FileReader(dirPath));
	            // 파일의 내용을 한 줄씩 읽어 변수에 저장
	            // 더 이상 내용이 없으면 while문 탈출
	            while((oneLine = br.readLine()) != null){
	               mailContents += oneLine + "\n";
	            }
	            // 스트림 자원 반납
	            br.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
			// 메일 form에서 읽어온 내용(HTML태그)에서 내용 부분 변경
	        mailContents = mailContents.replace("__CONTENT__", content);
	        // 내용을 Map컬렉션에 추가
	        emailContent.put("content", mailContents);
		}
		if(req.getParameter("content") != null) {
			// 입력된 내용이 있다면 메일 발송.
			// 이 때 form값을 저장한 Map컬렉션을 인수로 전달
			emailSending(emailContent);
			// 전송 여부 확인 용
//            boolean emailResult = emailSending(emailContent);
//            if(emailResult==true) {
//               System.out.println("이메일 전송 성공");
//               sendResult = "이메일 전송 성공";
//            }
//            else {
//               System.out.println("이메일 전송 실패");
//               sendResult = "이메일 전송 실패";
//            }
        }
		// 컨트롤러에서 즉시 전송 결과 출력
        resp.setContentType("text/html; charset=utf-8");
        // 전송 완료 후 뜨는 페이지에 뜨자마자 닫는 script 태그 삽입
        resp.getWriter().write("<script src=\"https://code.jquery.com/jquery-3.6.0.js\" integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\" crossorigin=\"anonymous\"></script>\r\n"
        		+ "<script>\r\n"
        		+ "$(document).ready(function(){\r\n"
        		+ "	self.close();\r\n"
        		+ "});\r\n"
        		+ "</script>");
	}
	
	@RequestMapping(value="/id_Search", method = RequestMethod.POST)
	public void id_Search(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email"); 
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_name(name);
		dto.setMember_email(email);
		
		String id = sqlSession.getMapper(MemberDAOImpl.class).idSearch(dto);
		
		if(id != null) {
			model.addAttribute("toEmail", email);
			model.addAttribute("id", id);
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
    		out.println(String.format("<script>window.open('./idEmailSend?toEmail=%s&id=%s', 'IdCheck', 'width=1, height=1'); location.replace('./Login')</script>", email, id));
		} else {
			resp.sendRedirect("./id_Search");
		}
	}
	
	@RequestMapping(value="/pw_Search", method = RequestMethod.POST)
	public String pw_Search(Model model, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String email = req.getParameter("email"); 
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_name(name);
		dto.setMember_id(id);
		dto.setMember_email(email);
		
		String pw = sqlSession.getMapper(MemberDAOImpl.class).pwSearch(dto);
		
		if(pw != null) {
			model.addAttribute("id", id);
			model.addAttribute("name", name);
			return "pw_Reset";
		} else {
			return "redirect:./pw_Search";
		}
	}
	
	@RequestMapping(value="/pw_Reset", method = RequestMethod.POST)
	public String pw_Reset(Model model, HttpServletRequest req, HttpServletResponse resp) {
		
		String resetPass = req.getParameter("pass2");
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_pass(resetPass);
		dto.setMember_id(id);
		dto.setMember_name(name);

		int result = sqlSession.getMapper(MemberDAOImpl.class).pwReset(dto);
		
		if(result == 1)
			System.out.println("비밀번호 변경 성공");
		else 
			System.out.println("비밀번호 변경 실패");
		
		return "redirect:./Login";
	}
	
	@RequestMapping(value="/re_Info", method = RequestMethod.POST)
	public String passCheck(Model model, HttpServletRequest req, HttpSession session) {
		
		String pass = req.getParameter("pass");
		String id = session.getAttribute("id").toString();
		String name = session.getAttribute("name").toString();
		String email = session.getAttribute("email").toString();
		String mode = req.getParameter("mode");
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(id);
		dto.setMember_name(name);
		dto.setMember_email(email);
		dto.setMember_pass(pass);
		
		String checkPass = sqlSession.getMapper(MemberDAOImpl.class).pwSearch(dto);
		if(checkPass.equals(pass)) {
			if(mode.equals("p")) {
				return "pw_Reset";
			} else if(mode.equals("i")) {
				MemberDTO mto = sqlSession.getMapper(MemberDAOImpl.class).memberLogin(dto);
				String email1 = mto.getMember_email().split("@")[0];
				String email2 = mto.getMember_email().split("@")[1];
				String zipcode = mto.getMember_addr().split(" / ")[0];
				String address1 = mto.getMember_addr().split(" / ")[1];
				String address2 = mto.getMember_addr().split(" / ")[2];
				String mobile1 = mto.getMember_phone().split("-")[0];
				String mobile2 = mto.getMember_phone().split("-")[1];
				String mobile3 = mto.getMember_phone().split("-")[2];
				String photo = mto.getMember_photo();
				model.addAttribute("m_info", mto);
				model.addAttribute("email1", email1);
				model.addAttribute("email2", email2);
				model.addAttribute("zipcode", zipcode);
				model.addAttribute("address1", address1);
				model.addAttribute("address2", address2);
				model.addAttribute("mobile1", mobile1);
				model.addAttribute("mobile2", mobile2);
				model.addAttribute("mobile3", mobile3);
				model.addAttribute("photo", photo);
				return "info_update";
			}
		} else {
			return "redirect:./passCheck";
		}
		return "";
	}
	
	@RequestMapping(value="/info_update", method = RequestMethod.POST)
	public String info_update(Model model, HttpServletRequest req, HttpSession session, MultipartHttpServletRequest mr) {
		
		String id = session.getAttribute("id").toString();
		String email = req.getParameter("email1") + "@" + req.getParameter("email2");
		String address = req.getParameter("zipcode") + " / " + req.getParameter("address1") + " / " + req.getParameter("address2");
		String phone = req.getParameter("mobile1") + "-" + req.getParameter("mobile2") + "-" + req.getParameter("mobile3");
		
		MemberDTO dto = new MemberDTO();
		
		String fileName = mr.getFile("ofile").toString();
		if ( fileName != null) {
			String path = req.getSession().getServletContext().getRealPath("/resources/Uploads");
			
			MultipartFile mfile = null;
			try {
				Iterator itr = mr.getFileNames();
				if(itr.hasNext()) {
					mfile = mr.getFile(itr.next().toString());
					String originalName = new String(mfile.getOriginalFilename().getBytes(), "UTF-8");
					String ext = originalName.substring(originalName.lastIndexOf('.'));
					String saveFileName = FileUtil.getUuid() + ext;
					mfile.transferTo(new File(path + File.separator + saveFileName));
					dto.setMember_photo(saveFileName);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			model.addAttribute("path", path);
		}

		dto.setMember_id(id);
		dto.setMember_email(email);
		dto.setMember_addr(address);
		dto.setMember_phone(phone);
		
		int success = sqlSession.getMapper(MemberDAOImpl.class).infoUpdate(dto);
		
		if(success == 1) {
			System.out.println("회원정보 수정 성공");
			return "default";
		} else {
			System.out.println("회원정보 수정 실패");
			return "redirect:./re_Info";
		}
	}
	
	
}
