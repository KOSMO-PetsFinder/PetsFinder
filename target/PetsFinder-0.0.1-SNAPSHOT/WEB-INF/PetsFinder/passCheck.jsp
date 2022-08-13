<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- UIkit CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css"/>
  <title>비밀번호확인</title>
</head>
<body>
  <!-- UI Kit -->
  <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
  <form action="./re_Info" method="post" style="margin-top: 100px">
  	<input type="hidden" name="mode" value="${ param.mode }"/>
	  <div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px">
	    <img src="./images/mypage.png" alt="" style="width:30px; padding-right: 5px"> 마이페이지 > 개인정보관리
	  </div>
	  <div style="display: flex; justify-content: center;">
	    <p style="font-size: 2em; font-weight: 600;">비밀번호 확인</p>
	  </div>
	  <div style="display: flex; align-self: center; border-bottom: 2px solid #75c9ba;"></div>
	  <div style="display: flex; justify-content: center;">
	    <input type="password" name="pass" style="width: 200px; height: 40px; border: 1px solid #CCCCCC; margin-top: 20px; outline: none;">
	    <button type="submit" class="uk-button uk-button-primary" style="height: 44px; margin: 20px 0 0 10px">확인하기</button>
	  </div>
  </form>
</body>
</html>