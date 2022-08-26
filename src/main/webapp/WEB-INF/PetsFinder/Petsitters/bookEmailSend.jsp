<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){

	document.reserveSend.submit();
});
</script>
<div class="container">
	<div style="margin-top: 200px"></div>
	<form name="reserveSend" method="post" action="./bookEmailSendAction.do">
	<table border=1>
		<tr>	
			<td> 
				보내는사람 : 
				<input type="text" name="from" value="gnsl0127@naver.com" />
			</td>
		</tr>
		<tr>	
			<td>
				받는사람(시터) : 
				<input type="text" name="to1" value="${ param.sitter_email }" />
				<br />
				받는사람(고객) : 
				<input type="text" name="to2" value="${ param.login_email }" />
			</td>
		</tr>
		<tr>	
			<td>
				제목 : 
				<input type="text" name="subject" size="50" value="예약 확인 이메일" />
			</td>
		</tr>
		<tr>	
			<td>
				형식 : 
				<input type="radio" name="format" value="html" checked/>HTML
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="content" cols="60" rows="10">
				[펫시터 예약 정보 안내]
				
				예약 고객의 이름 : ${param.member_name } 
				
				예약된 펫시터의 이름 : ${ param.sitter_name } 
				
				예약 날짜 : ${param.sbook_start } ~ ${param.sbook_end }
				
				예약한 반려동물 정보 : ${param.p_cellData }
				
				예약 총 합계 금액 : ${param.totalPrice }
				
				예약을 진행해주셔서 감사합니다.
				</textarea>			
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>