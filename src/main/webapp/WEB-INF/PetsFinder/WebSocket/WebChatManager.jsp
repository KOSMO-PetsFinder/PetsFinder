<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{font-family: BM JUA_TTF;}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
   rel="stylesheet" 
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
   crossorigin="anonymous">
<link href="<c:url value='/'/>chatBox/style.css" rel="stylesheet" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="../jquery/jquery-ui.css">
</head>
<body>
<script type="text/javascript">
	//채팅에서 사용할 전역변수를 선언한다.
	var messageWindow; //대화내용이 출력될 엘리먼트
	var inputMessage; //대화 입력 상자
	var chat_id; //클라이언트의 대화명(아이디)
	var room_id;
	var webSocket; //웹소켓 객체
	var logWindow;//대화창 아래에 로그를 출력할 엘리먼트
	var plist; // 대화창 왼쪽에 아이디 리스트
	
	var sender_id, receiver_id;
	
	//해당 문서의 로드가 완료되었을때 실행되는 내용을 기술
	window.onload = function(){
		
		//전역변수로 선언한 엘리먼트의 DOM객체를 얻어와서 저장한다.
		messageWindow = document.getElementById("messageWindow");
		inputMessage = document.getElementById('inputMessage');
		chat_id = document.getElementById('chat_id').value;
		room_id = document.getElementById('room_id').value;
		logWindow = document.getElementById('logWindow').style.display="none";
		sit_idx = document.getElementById('sit_idx').value;
		
		sender_id = document.getElementById('sender_id').value;
		receiver_id = document.getElementById('receiver_id').value;
		
		plist = document.getElementById("plist");
		plist.scrollTop = plist.scrollHeight;
		
		//대화내용이 길어졌을때 스크롤바를 항상 아래로 내려주는 역할을 한다.
		messageWindow.scrollTop = messageWindow.scrollHeight;
		
		//웹소켓 객체 생성. 컨트롤러에서 @ServerEndpoint로 선언된 요청명을 통해 생성한다.
		//localhost대신 본인의 IP주소를 넣을 수 있다. 이 경우 외부 컴퓨터에서 접속이 가능하다.
		webSocket = new WebSocket('ws://localhost:8088/PetsFinder/EchoServer.do');
		
		//클라이언트가 접속했을때 함수를 호출한다.
		webSocket.onopen = function(event){
			wsOpen(event);
		};
		//클라이언트가 서버로 메세지를 보냈을때 호출.
		webSocket.onmessage = function(event){
			wsMessage(event);
		};
		//클라이언트가 접속을 종료했을때 호출.
		webSocket.onclose = function(event){
			wsClose(event);
		};
		//채팅 중 에러가 발생했을때 호출.
		webSocket.onerror = function(event){
			wsError(event);
		};
	}
	
	//클라이언트가 접속하면 호출된다.
	function wsOpen(event){
		//로그 윈도우에 해당 내용을 추가한다.
		writeResponse("연결 성공");
	}
	//서버가 클라이언트에게 메세지를 보냈을때 호출
	function wsMessage(event){
		/*
		메세지를 |(파이프) 기호로 분리하여 사용한다. 
		룸아이디, 보낸사람아이디, 메세지 순이다. 
		*/
		console.log(event.data);
		var message = event.data.split("|");
		var room = message[0];
		var sender = message[1];
		var content = message[2];
		var msg;
		
		//로그창에 출력한다.
		writeResponse(event.data);
		
		if(content ==""){
			//전송된, 날라온 내용이 없다면 아무것도 하지 않음.
		}
		else {
			if(room==room_id){					
				msg = makeBalloon(sender, content);
				messageWindow.innerHTML += msg;
				messageWindow.scrollTop = messageWindow.scrollHeight;					 
			}
		}
	}
	//접속이 종료되었을때 호출
	function wsClose(event){
		writeResponse("대화 종료");
	}
	//에러가 발생했을때 호출
	function wsError(event){
		writeResponse("에러 발생");
		writeResponse(event.data);
	}
	//메세지에 UI(디자인)를 적용하기 위한 함수
	function makeBalloon(id, cont){
		var msg = '';
		var time = inputMessageTime.value;
		console.log(time);
		console.log(cont);
		
		msg += '<div class="clearfix"> <div class="message-data"><span class="message-data-time">'+time+'</span> </div> <div class="message my-message">'+cont+'</div></div>';
		//msg += '<div class="message my-message">'+time+id+'=>'+cont+'</div>';
		return msg;
	}
	//여기가 사용자가 입력한 메세지가 전송되는곳임.
	//클라이언트가 입력한 내용을 서버로 전송하는 함수.
	function sendMessage(){
		
		member_idx = document.getElementById('member_idx').value;
		room_id = document.getElementById('room_id').value;
		member_id = document.getElementById('member_id').value;
		message = inputMessage.value;
		console.log(room_id, member_idx, message, member_id, chat_id);
		
		$.ajax({
			//전송방식
			type : 'get',
			url : '${pageContext.request.contextPath}/sendMessage.do',
			/*
			파라미터
			일반회원일때
				chat_id : 시터
				member_id : 로그인 한 본인
			시터회원일때
				chat_id : 시터(로그인 한 본인)
				member_id : 일반회원
			*/
			data : {
				room_id : room_id, 
				member_idx : member_idx, 
				message : message,
				sender_id : sender_id,
				receiver_id : receiver_id
			},
			cotentType : "text/html;charset:utf-8",
			//콜백데이터의 타입(형식)
			dataType : "text",
			success : function(resData){
				console.log("성공", resData);
				webSocket.send(room_id+'|'+chat_id+'|'+inputMessage.value);
				 
				var msg = '';
				msg += '<div class="clearfix"> <div class="message-data text-right" style="text-align: right"><span class="message-data-time" style="text-align: right">'+inputMessageTime.value+'</span> </div> <div class="message other-message float-right">'+inputMessage.value+ '</div> </div>';
				messageWindow.innerHTML += msg;
				inputMessage.value= "";
				messageWindow.scrollTop = messageWindow.scrollHeight;
			},
			error : function(errData){
				console.log("실패", errData);
			}
		});	
		
	}
	//눌러진 키보드의 keyCode를 이벤트를 통해 확인한 후 엔터키이면 함수를 호출한다.
	function enterkey(){
		if(window.event.keyCode==13){
			sendMessage();
		}
	}
	//대화창 아래 로그 윈도우에 매개변수로 전달된 내용을 추가한다.
	function writeResponse(text){
		logWindow.innerHTML += "<br/>"+text;
	}
</script>


<%
Calendar c = Calendar.getInstance();
int month = c.get(Calendar.MONTH);
int date = c.get(Calendar.DATE);
int hour = c.get(Calendar.HOUR_OF_DAY);
int hours = c.get(Calendar.HOUR);
int minute = c.get(Calendar.MINUTE);
String ampm = c.get(Calendar.AM_PM)==0? "오전" : "오후";

Date d = new Date(c.getTimeInMillis());
SimpleDateFormat df = new SimpleDateFormat("MM/dd HH:mm");
String result = df.format(d);

%>

<div class="container">
<div class="row clearfix">
    <div class="col-lg-12">
<c:choose>
	<c:when test="${sessionScope.type eq 'sit' }">
		시터회원>>
		<input type="hidden" id="sender_id" name="sender_id" value="${param.chat_id }" />
		<input type="hidden" id="receiver_id" name="receiver_id" value="${param.member_id }" />
	</c:when>
	<c:when test="${sessionScope.type eq 'nor' }">
		일반회원>>
		<input type="hidden" id="sender_id" name="sender_id" value="${param.member_id }" />
		<input type="hidden" id="receiver_id" name="receiver_id" value="${param.chat_id }" />
	</c:when>
	<c:otherwise>관리자회원>>
		<input type="hidden" id="sender_id" name="sender_id" value="${param.chat_id }" />
		<input type="hidden" id="receiver_id" name="receiver_id" value="${param.member_id }" />
	</c:otherwise>
</c:choose>

<!-- room_id -->
<input type="hidden" id="room_id"  name="room_id" value="${param.room_id }" />
<!-- chat_id -->
<input type="hidden" id="chat_id" name="chat_id" value="${param.chat_id }" />
<!-- member_id -->
<input type="hidden" id="member_id" name="member_id" value="${param.member_id }" />

<!-- sit_idx -->
<input type="hidden" id="sit_idx" name="sit_idx" value="${param.sit_idx }">
<!-- member_idx -->
<input type="hidden" id="member_idx" name="member_idx" value="100">
		  
    		<h2 style="text-align: center">Pets Finder 채팅 (관리자와채팅)</h2>
    		<!-- 채팅창 크기 div -->
        <div class="card chat-app" style="height: 500px">
            <div id="plist" class="people-list" style="height: 500px;overflow:scroll;">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="height: 40px;"><i class="fa fa-search"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>
	                <ul class="list-unstyled chat-list mt-2 mb-0" >
										<!--  
										왼쪽 채팅 아이디 리스트
										-->	                			
										<c:forEach items="${roomName }" var="roomName">
											<a href="WebChatManager.do?room_id=${roomName.room_id }&chat_id=${roomName.sender_id}&member_id=${roomName.receiver_id}&member_idx=${param.member_idx }&sit_idx=${param.sit_idx }">
												<li class="clearfix">
													<img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
													<div class="about">
														<!-- 
														시터의 경우 member_id는 회원의 아이디 
														일반 회원의 경우 member_id는 시터 아이디
														-->
														<div class="name">${roomName.member_id }</div>
														<div class="status"> <i class="fa fa-circle online"></i> left 7 mins ago </div>                                            
													</div>
												</li>
											</a>
										</c:forEach>
	                </ul>
            </div>
            <div class="chat">
                <div class="chat-header clearfix">
                    <div class="row">
                        <div class="col-lg-6">
                            <a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="avatar">
                            </a>
                            <div class="chat-about">
                                <h6 class="m-b-0">${sessionScope.id }</h6>
                                <small>Last seen: 2 hours ago</small>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 채팅창 (템플릿과 반대로 여긴 내가 쓴 채팅이 오른쪽으로 와야함)-->
                <div class="chat-history" id="messageWindow" style="height:350px; overflow:auto;">
                  <div class="m-b-0">
                  <c:forEach items="${webChatList }" var="webChatList" varStatus="loop">
                  	<!-- sender_id 즉 보낸사람이 오른쪽임.  -->
                  	<c:if test="${ webChatList.sender_id eq sessionScope.id}" var="result">
                  		  <div class="clearfix">
                            <div class="message-data text-right" >
                                <span class="message-data-time" style="text-align: right">${webChatList.chat_time}</span>
                            </div>
                            <!-- 내가 쓴 채팅이 입력되는곳. -->
                            <div class="message other-message float-right">${webChatList.message }</div>
                        </div>
                  	</c:if>
                  	<c:if test="${not result }">
                  		<!-- 디비에 있는 member_idx와 세션에 있는 member_idx 값이 일치 하지 않습니다. 즉 상대방 채팅 -->
                  		 <div class="clearfix">
                            <div class="message-data">
                                <span class="message-data-time">${webChatList.chat_time }</span>
                            </div>
                            <!-- 상대방이 쓴 채팅이 입력되는곳. -->
                            <div class="message my-message">${webChatList.message }</div>                                    
                        </div>
                  	</c:if>
                  </c:forEach>
                    </div>
                </div>
                <div class="chat-message clearfix">
                    <div class="input-group mb-0">
	                      <!-- 메세지 입력하는곳 -->
										  	<input type="text" id="inputMessage" class="form-control float-left mr-1" style="width:88%; height:38px;float:left;" onkeyup="enterkey();" />
										  	<input type="hidden" id="inputMessageTime" value=" <%=result %>" class="form-control float-left mr-1" style="width:88%; height:38px;float:left;" onkeyup="enterkey();">
										  	<button type="button" id="sendBtn" onclick="sendMessage();" class="btn float-left"  style="float:right; margin-right: 3px;">
										  		<i class="fa fa-send"></i>
										  	</button>
                    </div>
                </div>
                <div id="logWindow" class="border border-danger" style="height:130px; overflow:auto;"></div>   
            </div>
        </div>
    </div>
</div>
</div>

</body>
</html>