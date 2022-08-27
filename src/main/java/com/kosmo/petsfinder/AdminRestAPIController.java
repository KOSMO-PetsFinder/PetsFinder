package com.kosmo.petsfinder;

import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import petsfinder.admin.AdminDAOImpl;
import petsfinder.admin.AdminDTO;
import petsfinder.admin.AdminParameterDTO;

@Controller
public class AdminRestAPIController {
	
   //Mybatis 빈을 자동으로 주입받는다.
   @Autowired 
   private SqlSession sqlSession;
   
   //리스트 처리
   //요청명에 대한 매핑 및 게시판 리스트를 JSON배열로 출력한다.
   @RequestMapping("/Admin/noticeList.do")
   @ResponseBody
   public ArrayList<AdminDTO> boardList(HttpServletRequest req){
      //파라미터를 저장할 용도의 DTO객체 생성
      AdminParameterDTO parameterDTO = new AdminParameterDTO();
      //검색 기능 삭제
      
      //DTO객체를 전달하여 조건에 맞는 게시물의 개수를 카운트 한다.
      int totalRecordCount = sqlSession.getMapper(AdminDAOImpl.class).nGetTotalCount(parameterDTO);
      //한 페이지에 출력할 게시물의 개수
      int pageSize = 10;
//    int blockPAge = 2;
      //전체 페이지 수 계산
      int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);
      //현재 페이지번호 가져오기. 첫 진입시에는 무조건 1페이지로 지정한다.
      int nowPage = req.getParameter("nowPage")==null ? 1 : Integer.parseInt(req.getParameter("nowPage"));
      int start = (nowPage-1)*pageSize + 1;
      int end = nowPage * pageSize;
      //게시물의 구간 계산 및 DTO객체에 저장
      parameterDTO.setStart(start);
      parameterDTO.setEnd(end);
      
      //실제 출력할 게시물을 가져온다.
      ArrayList<AdminDTO> lists = sqlSession.getMapper(AdminDAOImpl.class).nListPage(parameterDTO);
      
      //내용부분만 줄바꿈 처리를 해준다.
      for(AdminDTO dto : lists) {
         String temp = dto.getNotboard_content().replace("\r\n", "<br/>");
         dto.setNotboard_content(temp);
      }
      return lists;
   }
   
   
   //뷰 처리
   /*
   게시물 상세보기는 게시물 하나를 출력하므로 Map컬렉션을 통해 JSON객체로 출력한다.
   여기서 parameterDTO의 num값을 활용해서 현재 idx 값을 받아오기에 파라미터 DTO를 쓰는것임.
    */
   @RequestMapping("/Admin/noticeView.do")
   @ResponseBody
   public Map<String, String> view(AdminParameterDTO parameterDTO){
      /*
      Mapper의 <select>엘리먼트는 레코드를 select한 후 List타입으로
      반환하므로 우선은 List컬렉션으로 저장한 후 사용해야 한다.
       */
	  System.out.println("View 쪽 parameterDTO: "+ parameterDTO);
	  
      ArrayList<AdminDTO> record = sqlSession.getMapper(AdminDAOImpl.class).nView(parameterDTO);
      Map<String, String> map = new HashMap<String, String>();
      for(AdminDTO dto : record) {
    	 
    	String notboard_idx = Integer.toString(dto.getNotboard_idx());
    	String notboard_hit = Integer.toString(dto.getNotboard_hit());
    	map.put("notboard_idx", notboard_idx);
    	map.put("notboard_hit", notboard_hit);
    	map.put("notboard_title", dto.getNotboard_title());
    	map.put("notboard_content", dto.getNotboard_content());
    	map.put("notboard_regdate", dto.getNotboard_regdate());
    	map.put("notboard_photo", dto.getNotboard_photo());
      }
      return map;
   }
   
   
   
   //get방식으로 요청받은 후 글쓰기 처리(테스트용)
   @RequestMapping(value="/Admin/noticeWrite.do", method=RequestMethod.GET)
   @ResponseBody
   public Map<String, String> writeGet(AdminDTO adminDTO, MultipartHttpServletRequest mr){
      //커맨드객체를 통해 폼값을 한번에 받는다.
      System.out.println("write호출됨");
      System.out.println("제목:"+adminDTO.getNotboard_idx());
      System.out.println("제목:"+adminDTO.getNotboard_title());
      System.out.println("제목:"+adminDTO.getNotboard_content());
      System.out.println("제목:"+adminDTO.getNotboard_regdate());
      System.out.println("내용:"+adminDTO.getNotboard_hit());
      System.out.println("사진:"+adminDTO.getNotboard_photo());
      
      //interface를 통해 Mapper를 호출한다.<insert>엘리먼트의 경우 항상 0혹은 1을 반환한다.
      int affected = sqlSession.getMapper(AdminDAOImpl.class).nWrite(adminDTO);
      
      //결과데이터를 JSON객체로 출력하기 위해 Map컬렉션을 생성한 후 값을 추가한다.
      Map<String, String>map = new HashMap<String, String>();
      if(affected==1) 
          map.put("result", "success");
       else
          map.put("result", "fail");
      return map;
   }
   
   
   /*
   React를 통해 글쓰기를 처리하기 위한 메서드 추가. 앞에서 작성한 writeGet()가 동일하지만
   전송방식이 다르므로 각 요청방식에 따라 구분되어 호출된다.
    */
   @RequestMapping(value="/Admin/noticeWrite.do", method=RequestMethod.POST)
   //컨트롤러에서 요청에 따라 즉시 출력하기 위한 어노테이션
   @ResponseBody
   /*
   React에서 fetch()함수를 통해 post방식으로 요청한 데이터를 받을때
   body에 폼값을 실어서 서버로 보내게 되므로 @RequestBody 어노테이션을 사용한다.
    */
   public Map<String, String> writePost(@RequestBody String data, AdminDTO adminDTO){
      System.out.println("write호출됨");
      //전송받은 데이터를 디코딩 처리한다.
      data = URLDecoder.decode(data);
      System.out.println("data="+data);
      
      //json-simple 의존설정 필요
      //JSON데이터를 서버에서 파싱하기 위해 json-simple이라는 라이브러리를 의존설정한다.
      JSONParser jsonParser = new JSONParser();
      //요청된 JSON데이터를 파싱한 후 JSON객체 저장용 참조변수
      JSONObject jsonObj = null;
      try {
         //앞에서 디코딩 처리한 데이터를 파싱한다.
         jsonObj = (JSONObject)jsonParser.parse(data);
      }
      catch(ParseException e) {
         e.printStackTrace();
      }
      //로그를 통해 전송된 값 확인하기 
      System.out.println("write Post쪽 호출됨");
      System.out.println("공지게시판 일련번호:"+jsonObj.get("notboard_idx"));
      System.out.println("제목:"+ jsonObj.get("notboard_title"));
      System.out.println("내용:"+jsonObj.get("notboard_content"));
      System.out.println("등록일:"+jsonObj.get("notboard_regdate")); 
      System.out.println("조회수:"+jsonObj.get("notboard_hit"));
      System.out.println("사진:"+jsonObj.get("notboard_photo"));
      //전송된 값이 문제가 없다면 DTO객체에 저장한다.
      //String notboard_idx =jsonObj.get("notboard_idx").toString();
      //adminDTO.setNotboard_idx(Integer.parseInt(notboard_idx));
      //String notboard_hit =jsonObj.get("notboard_hit").toString();
      //adminDTO.setNotboard_hit(Integer.parseInt(notboard_hit));
      //adminDTO.setNotboard_regdate(jsonObj.get("notboard_regdate").toString());
      adminDTO.setNotboard_title(jsonObj.get("notboard_title").toString());
      adminDTO.setNotboard_content(jsonObj.get("notboard_content").toString());
      
      // 사진 처리
      String photo = jsonObj.get("notboard_photo").toString();
      System.out.println(photo);
      adminDTO.setNotboard_photo(photo);
      
      //Mapper를 호출해서 insert처리한다.
      int affected = sqlSession.getMapper(AdminDAOImpl.class).nWrite(adminDTO);
      System.out.println("글쓰기쪽 affected: "+affected);
      Map<String, String> map = new HashMap<String, String>();
      
      //처리된 결과에 따라 성공 혹은 실패를 출력한다.
      if(affected==1) 
         map.put("result", "success");
      else
         map.put("result", "fail");
      
      return map;
   }
   
   //삭제
   @RequestMapping("/Admin/noticeDelete.do")
   @ResponseBody
   public Map<String, String> delete(HttpServletRequest req){
	  
	  int notboard_idx = Integer.parseInt(req.getParameter("num"));
	  int affected = sqlSession.getMapper(AdminDAOImpl.class).nDelete(notboard_idx);
	  System.out.println("삭제쪽 affected: "+affected);
	  
      Map<String, String> map = new HashMap<String, String>();
      
      if(affected==1) 
    	  map.put("result", "success");
      else
    	  map.put("result", "fail");
   
      return map;
      
   }
   
   //수정뷰
   @RequestMapping("/Admin/noticeEdit.do")
   @ResponseBody
   public Map<String, String> edit(AdminParameterDTO parameterDTO){
      /*
      Mapper의 <select>엘리먼트는 레코드를 select한 후 List타입으로
      반환하므로 우선은 List컬렉션으로 저장한 후 사용해야 한다.
       */
	  System.out.println("Edit 쪽 parameterDTO: "+ parameterDTO);
	  
      ArrayList<AdminDTO> record = sqlSession.getMapper(AdminDAOImpl.class).nView(parameterDTO);
      Map<String, String> map = new HashMap<String, String>();
      for(AdminDTO dto : record) {
    	 
    	String notboard_idx = Integer.toString(dto.getNotboard_idx());
    	String notboard_hit = Integer.toString(dto.getNotboard_hit());
    	map.put("notboard_idx", notboard_idx);
    	map.put("notboard_hit", notboard_hit);
    	map.put("notboard_title", dto.getNotboard_title());
    	map.put("notboard_content", dto.getNotboard_content());
    	map.put("notboard_regdate", dto.getNotboard_regdate());
    	map.put("notboard_photo", dto.getNotboard_photo());
      }
      return map;
   }
   
   //수정처리
   @RequestMapping("/Admin/noticeEditAction.do")
   @ResponseBody
   public Map<String, String> editAction(@RequestBody String data,  AdminDTO adminDTO){
	  System.out.println("Edit호출됨");
	   
	   
	  //전송받은 데이터를 디코딩 처리한다.
      data = URLDecoder.decode(data);
      System.out.println("data="+data);
      
      //json-simple 의존설정 필요
      //JSON데이터를 서버에서 파싱하기 위해 json-simple이라는 라이브러리를 의존설정한다.
      JSONParser jsonParser = new JSONParser();
      //요청된 JSON데이터를 파싱한 후 JSON객체 저장용 참조변수
      JSONObject jsonObj = null;
      try {
         //앞에서 디코딩 처리한 데이터를 파싱한다.
         jsonObj = (JSONObject)jsonParser.parse(data);
      }
      catch(ParseException e) {
         e.printStackTrace();
      }
      //로그를 통해 전송된 값 확인하기 
      System.out.println("Edit Post쪽 호출됨");
      //이쪽이 null 값이 들어오고 있음.
      System.out.println("제목:"+ jsonObj.get("notboard_title"));
      System.out.println("내용:"+jsonObj.get("notboard_content"));
      //전송된 값이 문제가 없다면 DTO객체에 저장한다.
      adminDTO.setNotboard_idx(Integer.parseInt(jsonObj.get("notboard_idx").toString()));
      adminDTO.setNotboard_title(jsonObj.get("notboard_title").toString());
      adminDTO.setNotboard_content(jsonObj.get("notboard_content").toString());
	   
	   int affected = sqlSession.getMapper(AdminDAOImpl.class).nEdit(adminDTO);
	   System.out.println("수정쪽 affected:"+affected);
	   
	   Map<String, String> map = new HashMap<String, String>();
	   
	   if(affected==1)
		   map.put("result", "success");
	   else
	   	   map.put("result", "fail");
	   return map;
   }
   

}
