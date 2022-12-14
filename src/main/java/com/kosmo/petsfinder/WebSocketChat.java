package com.kosmo.petsfinder;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Controller;

@Controller
@ServerEndpoint("/EchoServer.do")
public class WebSocketChat {
	
	//Session을 통해 접속자를 구분하는 용도의 멤버변수
		private static final List<Session> sessionList = new ArrayList<Session>();
		
		//생성자
		public WebSocketChat() {
			System.out.println("웹소켓(서버) 객체생성");
		}
		
		//클라이언트가 접속했을때 호출된다.
		@OnOpen
		public void onOpen(Session session) {
			//새로운 클라이언트가 접속할대마다 새로운 Session이 부여된다.
			System.out.println("새로운 session id(onOpen)="+session.getId());
			
			try {
				final Basic basic = session.getBasicRemote();
				//System.out.println("새로운 session getBasicRemote="+ basic);			
				//접속한 클라이언트에게 메세지를 보낸다.
				basic.sendText("대화방에 연결 되었습니다.");
				
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
			//클라이언트가 접속하면 List컬렉션에 추가한다.
			sessionList.add(session);
		}
		
		/*
		메세지가 서버로 전송되면 @OnMessage 메서드가 자동으로 호출되고, 이때
		접속한 모든 클라이언트에게 메세지를 전송하기 위해 해당 메서드를 호출한다.
		*/
		private void sendAllSessionToMessage(Session self, String message) {
			try {
				//List컬렉션에 저장된 클라이언트의 수 만큼 반복한다.
				for(Session session : WebSocketChat.sessionList) {
					//메세지를 보낸 자신을 제외한 나머지에게 메세지를 전송한다.
					if(!self.getId().equals(session.getId())) {
						//메세지는 sendText()메서드를 통해 전송한다.
						session.getBasicRemote().sendText(message);
					}
				}
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
		//클라이언트가 서버측으로 메세지를 보냈을때 호출된다.
		@OnMessage
		public void onMessage(String message, Session session) {
			try {
				final Basic basic = session.getBasicRemote();
				System.out.println("메세지 도착:"+ basic + "="+ message);
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
			//클라이언트 전체에게 메세지를 전송한다.
			sendAllSessionToMessage(session, message);
		}

		//채팅 중 에러가 발생했을때 호출된다.
		@OnError
		public void onError(Throwable e, Session session) {
			System.out.println(e.getMessage());
		}
		
		//클라이언트가 접속을 종료했을때 호출된다.
		@OnClose
		public void onClose(Session session) {
			//접속을 종료하면 List컬렉션에서 삭제한다.
			sessionList.remove(session);
			System.out.println("접속종료:"+ session.getId());
		}

}
