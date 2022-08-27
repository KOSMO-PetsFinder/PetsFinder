package petsfinder.websocket;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public interface WebChatDAOImpl {
	
	//채팅 내역 불러오기
	public ArrayList<WebChatDTO> webChatList (WebChatDTO webChatDTO);
	
	//채팅방 이름 불러오기
	public ArrayList<WebChatDTO2> roomName (WebChatDTO2 webChatDTO);
	
	//채팅 내역 저장하기
	public int webChatInsert(WebChatDTO webChatDTO);
	
	//관리자로 로그인시 회원의 리스트 뽑기
	public ArrayList<WebChatDTO> memberLists ();
	//시터로 로그인시 시터를 예약한 회원의 리스트 뽑기
	public ArrayList<WebChatDTO> SmemberLists ();

}
