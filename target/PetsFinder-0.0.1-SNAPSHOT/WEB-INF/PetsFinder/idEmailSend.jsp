<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	document.idSend.submit();
});
</script>
<div class="container">
	<div style="margin-top: 200px"></div>
	<form name="idSend" method="post" action="emailSendAction.do">
	<table border=1>
		<tr>	
			<td> 
				보내는사람 : 
				<input type="text" name="from" value="gnsl0127@naver.com" />
			</td>
		</tr>
		<tr>	
			<td>
				받는사람 : 
				<input type="text" name="to" value="${ param.toEmail }" />
			</td>
		</tr>
		<tr>	
			<td>
				제목 : 
				<input type="text" name="subject" size="50" value="아이디 찾기 결과" />
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
				<textarea name="content" cols="60" rows="10">찾으신 아이디 : ${ param.id }</textarea>			
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>