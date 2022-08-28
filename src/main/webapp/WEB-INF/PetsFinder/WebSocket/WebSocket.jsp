<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
font-family: BM JUA_TTF;
}

@font-face {
  font-family: neon;
  src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.neon {
  font-family: BM JUA_TTF, neon;
  color: #75c9ba;
  font-weight:bold;
  font-size: 19px;
  line-height: 15px;
  text-shadow: 0 0 2vw #ffffff;
  }

.neon {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon {
  0%,
  50% {
    text-shadow: 0 0 1vw #75c9ba, 0 0 3vw #75c9ba, 0 0 10vw #75c9ba, 0 0 10vw #75c9ba, 0 0 .4vw #75c9ba, .5vw .5vw .1vw #75c9ba;
    color: #960316;
  }
  25% {
    text-shadow: 0 0 .5vw #75c9ba, 0 0 1.5vw #75c9ba, 0 0 5vw #75c9ba, 0 0 5vw #75c9ba, 0 0 .2vw #75c9ba, .5vw .5vw .1vw #75c9ba;
    color: #960316;
  }
}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
   rel="stylesheet" 
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
   crossorigin="anonymous">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script>
//채팅창 오픈을 위한 함수 선언
function chatWin(skin){
		
	//채팅 아이디(대화명)가 입력되었는지 확인한다. (시터)
  var chat_id = document.getElementById("chat_id");
	//아이디 입력상자의 DOM을 얻어온 후 value속성을 통해 입력된 값이 있는지 확인한다.
	if(chat_id.value==''){
	   alert('채팅 닉네임을 입력 후 채팅창을 열어주세요');
	   chat_id.focus();
	   return;
	}
	//채팅창을 오픈한다. 먼저 채팅방 입력상자의 DOM을 얻어온다.
	var member_idx = document.getElementById("member_idx");
	var member_id = document.getElementById("member_id");
	
	//채팅방 아이디 만들기(room_시터회원_일반회원)
	//var room_id = document.getElementById("chat_room");
  var room_id = "room_"+chat_id.value+"_"+member_id.value
	
  
  //채팅창에서 왼쪽에 시터의 리스트들을 뽑아 오기 위해 현재 필요한거. 나중에는 세션에 저장되어 있기에 넘길 필요 없음. 
	var sit_idx = document.getElementById("sit_idx");
	
	//스킨이 적용되지 않은 채팅창과 UI까지 적용된 창을 구분하여 오픈한다.   
  window.open("WebChat.do?room_id="+room_id+"&chat_id="+chat_id.value+"&member_id="+member_id.value+"&member_idx="+member_idx.value+"&sit_idx="+sit_idx.value, "WebChat1","width=800,height=500");
  
}

$(document).ready(function () {
	$("#member_idSelect").change(function () {
		
		console.log("값변경테스트: "+ $(this).val());
		$("#member_id").val($(this).val());
	});
	
});
</script>
</head>
<body>
<div class="view">
	<div class="scrollBlind">
			<section>
			<div style="display: flex; flex-direction: row; margin-top: 20px;">
				<div style="display: flex; flex-direction: row; justify-content: space-around; font-size: 1em; margin-left: 30px; margin-right:-10px">
					<div style="display: flex; flex-direction: column; align-items: center; ">
				        <div style="background-color: white; width: 600px; height: 450px; padding-top: 50px; border-radius: 30px; display: flex; justify-content: space-around; flex-direction: row; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 10px;">
				        	<div style="display:; justify-content: center; flex-direction: column; ">
								<div class="container">
									<img alt="" src="<c:url value='/' />images/main_logo.png" style="width: 100px; float:right; margin-right:30px; margin-bottom: 30px;">
									   <button type="button" formtarget="_blank" style="margin-bottom:20px;border:none;" class="neon" onclick="window.open('../notifyForm.do')">유기동물 신고하기</button>
								   <h2 >Pets Finder</h2>
								   <h4>시터 채팅방</h4>
								<c:choose>
									<c:when test="${sessionScope.type eq 'sit' }">
									<span class="badge rounded-pill bg-dark">
										시터회원>>
									</span>
									</c:when>
									<c:when test="${sessionScope.type eq 'nor' }">
									<span class="badge rounded-pill bg-dark">
										일반회원>>
									</span>
									</c:when>
									<c:otherwise>
										<span class="badge rounded-pill bg-dark">
											관리자회원>>
										</span>
									</c:otherwise>
								</c:choose>
								   
								   <table border="0" cellpadding="10" cellspacing="0">       
								<c:choose>
									<c:when test="${sessionScope.type eq 'sit' }">
										<!-- 시터회원일때.. -->
										<tr>
										   <td>My아이디</td>
										   <td>
										   	<!-- session에 저장되어 있는 값들 받아옴. -->
										      <input class="form-control" type="text" id="chat_id" value="${ sessionScope.id}"/>            
										      <input type="hidden" id="member_idx" value="${sessionScope.idx }"/>
										      <input type="hidden" id="sit_idx" value="${sessionScope.sit_idx }"/>
										   </td>
										</tr>
										<tr>
										   <td>회원아이디</td>
										   <td>
										   		<!-- 시터일때 회원들의 아이디 가져오기 -->
										      <select class="form-control" id="member_idSelect" onchange="selectBoxChange(this.value);">
										      	<option>선택해주세요</option>
										      	<c:forEach var="SmemberLists" items="${SmemberLists }">
										      		<option value="${SmemberLists }">${SmemberLists }</option>
										      	</c:forEach>
										      </select>
										   		<input type="text" id="member_id" class="form-control" readonly />
								<!-- 		      <input type="text" id="member_id" value="ganzi1234"/>
										      <input type="text" id="manager_id" value="petsfinder"/> -->
										   </td>
										</tr>	
									</c:when>
									<c:when test="${sessionScope.type eq 'nor' }">
										<!-- 일반회원일때.. -->
										<tr>
										   <td>My아이디</td>
										   <td>
										   	<!-- session에 저장되어 있는 값들 받아옴. -->
										      <input type="text" class="form-control" id="member_id" value="${ sessionScope.id}"/>            
										      <input type="hidden" id="member_idx" value="${sessionScope.idx }"/>
										      <input type="hidden" id="sit_idx" value="${sessionScope.sit_idx }"/>
										   </td>
										</tr>
										<tr>
										   <td>펫시터아이디</td>
										   <td>
										   		<!-- 고객일때 내가 예약한 펫시터 아이디 뽑기 여긴 하나의 값을 뽑아와야함 -->
										   		<input class="form-control" type="text" id="chat_id"  name="chat_id" value="${param.chat_id }" />
								<!-- 		      <input type="text" id="chat_id" value="lemon123"/> -->
								<%-- 		      <input type="text" id="member_id" />
										      <select id="member_idSelect" onchange="selectBoxChange(this.value);">
										      	<option>선택해주세요</option>
										      	<c:forEach var="SmemberLists" items="${SmemberLists }">
										      		<option value="${SmemberLists }">${SmemberLists }</option>
										      	</c:forEach>
										      </select> --%>
										   </td>
										</tr>	
									</c:when>
									<c:otherwise>관리자 회원일때는 일단 보류</c:otherwise>
								</c:choose>
								      <tr>
								         <td colspan="2" style="text-align: center;">
								            <button type="button" onclick="chatWin('normal');"
								               class="btn btn-outline-dark">채팅창 열기</button>
								         </td>
								      </tr>
								   </table>
								</div>
							</div>
						</div>
				    </div>
			    </div>
			</div>
		</section>
	</div>
</div>
</body>
</html>
