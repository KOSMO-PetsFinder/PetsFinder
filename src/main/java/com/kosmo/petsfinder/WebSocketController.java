package com.kosmo.petsfinder;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import petsfinder.websocket.WebChatDAOImpl;
import petsfinder.websocket.WebChatDTO;
import petsfinder.websocket.WebChatDTO2;



@Controller
public class WebSocketController {
	
	@Autowired
	private SqlSession sqlSession;
	
	//웹소켓채팅1 (시터와 회원)
    @RequestMapping(value="/WebSocket/WebSocket.do", method=RequestMethod.GET)
    public String webSocket(HttpSession session, HttpServletRequest req, Model model) {
    	
    	WebChatDTO webChatDTO = new WebChatDTO();
    	//시터를 예약한 회원의 리스트 뽑아오기 
    	ArrayList<WebChatDTO> SmemberLists = sqlSession.getMapper(WebChatDAOImpl.class).SmemberLists();
    	model.addAttribute("SmemberLists",SmemberLists);
        return "WebSocket/WebSocket";
    }
    
    //웹소켓채팅2 (관리자와 회원)
    @RequestMapping(value="/WebSocket/WebSocketManager.do", method=RequestMethod.GET)
    public String webSocketManager(HttpSession session, HttpServletRequest req, Model model) {
    	
    	WebChatDTO webChatDTO = new WebChatDTO();
    	//모든 회원의 리스트 뽑아오기 
    	ArrayList<WebChatDTO> memberLists = sqlSession.getMapper(WebChatDAOImpl.class).memberLists();
    	model.addAttribute("memberLists",memberLists);
        return "WebSocket/WebSocketManager";
    }
    
    //웹소켓 채팅 불러오기
    @RequestMapping(value="/WebSocket/WebChat.do", method=RequestMethod.GET)
    public String webChat(HttpServletRequest req, Model model, HttpSession session) {
       //채팅 데이터 저장1
       WebChatDTO webChatDTO = new WebChatDTO();
       //룸아이디 가져오기
       String room_id = req.getParameter("room_id");
       System.out.println("room_id"+room_id);
       webChatDTO.setRoom_id(room_id);
       //멤버idx 가져오기
       int member_idx = Integer.parseInt(req.getParameter("member_idx"));
       webChatDTO.setMember_idx(member_idx);
       //메니저인지 판단값 파라미터
       
       /*
       채팅내역 불러오기 
       */
       ArrayList<WebChatDTO> webChatList = sqlSession.getMapper(WebChatDAOImpl.class).webChatList(webChatDTO);
       model.addAttribute("webChatList",webChatList);
       WebChatDTO2 webChatDTO2 = new WebChatDTO2();
       //로그인 정보에서 타입과 아이디 가져오기
       String memberType = session.getAttribute("type").toString();
       webChatDTO2.setMember_type(memberType);
       String memberId = session.getAttribute("id").toString();
       webChatDTO2.setMember_id(memberId);       
       System.out.println("memberType="+memberType+",memberId="+memberId);
       
       //채팅방 이름 room_id 불러오기
       ArrayList<WebChatDTO2> roomName = sqlSession.getMapper(WebChatDAOImpl.class).roomName(webChatDTO2);
       System.out.println("roomName시터쪽"+roomName);
       for(WebChatDTO2 dto : roomName) {
    	   /*
    	   room_id => room_시터아이디_회원아이디 
    	   배열[1] : 시터아이디 
    	   배열[2] : 회원아이디 
    	   
    	   member_id: 상대방
    	    */
    	   String[] tempArr = dto.getRoom_id().split("_");
    	   
    	   if(memberType.equals("sit")) {
    		   //로그인 정보가 시터라면 회원아이디를 담는다. 
    		   dto.setMember_id(tempArr[2]);
    	   }
    	   else if(memberType.equals("nor")) {
    		   //로그인 정보가 회원이라면 시터아이디를 담는다. 
    		   dto.setMember_id(tempArr[1]);
    		   
    		   
    	   }
    	   //무조건 시터와 회원 순서로 저장한다. 파라미터 처리때문...
    	   dto.setSender_id(tempArr[1]);
    	   dto.setReceiver_id(tempArr[2]);
       }
       model.addAttribute("roomName", roomName);
       
       
       return "WebSocket/WebChat";
    }
    

    //웹소켓 채팅 불러오기 (관리자와 회원)
    @RequestMapping(value="/WebSocket/WebChatManager.do", method=RequestMethod.GET)
    public String webChatManager(HttpServletRequest req, Model model, HttpSession session) {
       //채팅 데이터 저장1
       WebChatDTO webChatDTO = new WebChatDTO();
       //룸아이디 가져오기
       String room_id = req.getParameter("room_id");
       System.out.println("room_id"+room_id);
       webChatDTO.setRoom_id(room_id);
       //멤버idx 가져오기
       int member_idx = Integer.parseInt(req.getParameter("member_idx"));
       webChatDTO.setMember_idx(member_idx);
       
       /*
       채팅내역 불러오기 
       */
       ArrayList<WebChatDTO> webChatList = sqlSession.getMapper(WebChatDAOImpl.class).webChatList(webChatDTO);
       model.addAttribute("webChatList",webChatList);
       
       WebChatDTO2 webChatDTO2 = new WebChatDTO2();
       //로그인 정보에서 타입과 아이디 가져오기
       String memberType = session.getAttribute("type").toString();
       webChatDTO2.setMember_type(memberType);
       String memberId = session.getAttribute("id").toString();
       webChatDTO2.setMember_id(memberId);       
       System.out.println("memberType="+memberType+",memberId="+memberId);
       
       //채팅방 이름 room_id 불러오기
       ArrayList<WebChatDTO2> roomName = sqlSession.getMapper(WebChatDAOImpl.class).roomName(webChatDTO2);
       for(WebChatDTO2 dto : roomName) {
    	   /*
    	   room_id => room_관리자아이디_회원아이디 
    	   배열[1] : 관리자아이디 
    	   배열[2] : 회원아이디 
    	   
    	   member_id: 상대방
    	    */
    	   String[] tempArr = dto.getRoom_id().split("_");
    	   
    	   if(memberType.equals("mag")) {
    		   //로그인 정보가 관리자라면 회원아이디를 담는다. 
    		   dto.setMember_id(tempArr[2]);
    	   }
    	   else if(memberType.equals("nor")) {
    		   //로그인 정보가 회원이라면 관리자아이디를 담는다. 
    		   dto.setMember_id(tempArr[1]);
    		   
    	   }
    	   //무조건 시터와 회원 순서로 저장한다. 파라미터 처리때문...
    	   dto.setSender_id(tempArr[1]);
    	   dto.setReceiver_id(tempArr[2]);
       }
       model.addAttribute("roomName", roomName);
       System.out.println("관리자쪽roomName"+ roomName);
       
       
       return "WebSocket/WebChatManager";
    }
    
    
    
    //대화내역 저장
    @RequestMapping(value="/sendMessage.do", method=RequestMethod.GET)
    @ResponseBody
    public String sendMsg(WebChatDTO webChatDTO, HttpServletRequest req) {
    	System.out.println("webSocket sendMessage로 들어옴.");
    	
    	String room_id = req.getParameter("room_id");
    	int member_idx = 100;//Integer.parseInt( req.getParameter("member_idx"));
    	String message = req.getParameter("message");
    	
    	String sender_id = req.getParameter("sender_id");
    	String receiver_id = req.getParameter("receiver_id");
    	System.out.println(room_id+"<>"+member_idx+"<>"+message+"<>"+sender_id+"<>"+receiver_id);

    	webChatDTO.setSender_id(sender_id);
    	webChatDTO.setReceiver_id(receiver_id);    	
    	
    	webChatDTO.setRoom_id(room_id);
    	webChatDTO.setMember_idx(member_idx);
    	webChatDTO.setMessage(message);
    	
    	int success = sqlSession.getMapper(WebChatDAOImpl.class).webChatInsert(webChatDTO);
    	
    	if(success == 1) {
    		System.out.println("WebChat DB 저장 성공");
    	}
    	else {
    		System.out.println("WebChat DB 저장 실패");
    	}
    	
    	return "WebSocket/WebChat.do";
    	
    }
    

    //신고폼
    @RequestMapping("/WebSocket/NotifyForm.do")
    public String notifyForm() {
    	return "/notifyForm";
    }

}
