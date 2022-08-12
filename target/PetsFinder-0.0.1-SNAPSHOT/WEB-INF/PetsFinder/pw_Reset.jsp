<%@page import="petsfinder.utils.CookieManager"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// loginId 라는 이름의 쿠키를 읽어온다.
String loginId = CookieManager.readCookie(request, "loginId");

// 앞에서 읽어온 쿠키값이 있다면 checked 속성값을 변수에 설정한다.
String cookieCheck = "";
if(!loginId.equals("")) {
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pets Finder</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
<!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css"/>
<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
</head>
<body>
<style>
	* {
	  font-family: SpoqaHanSans,'BM JUA_TTF', sans-serif;
	}
	a {
	  text-decoration: none;
	}
	p {
	  margin-bottom: 0
	}
	input[type=password] {
   		font-family: '나눔고딕';
   	}
   	input[type=text] {
   		font-family: '나눔고딕';
   	}
</style>
<script>
  /* Login_Form */
  function checkLogForm(fm) {
    var pw1_check = document.getElementById('pw1_check');
    var pw2_check = document.getElementById('pw2_check');
    if(!fm.pass1.value) {
      pw1_check.style.color = 'red'
      pw1_check.innerHTML = "비밀번호를 입력하세요!"
      fm.pw1.focus();
      return false;
    } 
    if(!fm.pass2.value) {
      pw2_check.style.color = 'red'
      pw2_check.innerHTML = "비밀번호를 확인하세요!"
      fm.pw2.focus();
      return false;
    }
  }
  
	function pw1Message(fm) {
	    var pw1_check = document.getElementById('pw1_check');
	  	if(fm.pw1.value != '') {
			pw1_check.innerHTML = '';
		}
	}
	
	function pw2Message(fm) {
	    var pw2_check = document.getElementById('pw2_check');
	  	if(fm.pw2.value != '') {
	  		pw2_check.innerHTML = '';
	  	}
	}
</script>
<jsp:include page="./common/Header.jsp" />
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- Login Form -->
<form action="./pw_Reset" method="post" onsubmit="return checkLogForm(this);">
	<input type="hid den" name="id" value="${ id }"/>
	<input type="hid den" name="name" value="${ name }"/>
    <div class="pwReset_Form" id="pwReset_Form" style="display: flex; flex-direction: column; align-items: center; padding-top: 100px; padding-bottom: 100px">
        <div style="background-color: white; width: 960px; height: 850px; border-radius: 30px; display: flex; justify-content: center; flex-direction: column; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 20px;">
	        <div>
	            <img src="./images/main_logo.png" alt="" style="width: 250px;">
	        </div>
            <!-- PwReset1 -->
            <div style="margin-top: 30px; max-width: none;">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">비밀번호</p>
	            <div  style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
       	            <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
		            </div>
		            <div>
		              	<input
			              	id="pass1"
			              	name="pass1"
			                type="password"
			                placeholder="비밀번호를 입력하세요!"
			                style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
			                onblur="pw1Message(this.form);"
			                />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	            	<p><span id="pw1_check" style="color: skyblue"></span></p>
	            </div>
            </div>
            <!-- PwReset2 -->
            <div style="margin-top: 30px; max-width: none;">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">비밀번호 확인</p>
	            <div  style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
       	            <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
		            </div>
		            <div>
		              	<input
			              	id="pass2"
			              	name="pass2"
			                type="password"
			                placeholder="비밀번호를 입력하세요!"
			                style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
			                onblur="pw2Message(this.form);"
			                />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	            	<p><span id="pw2_check" style="color: skyblue"></span></p>
	            </div>
            </div>
            <!-- Login -->
	  		<div style="display: flex; align-items: center; justify-content: space-between; margin-top: 30px; width: 450px">
		        <div>
        			<p style="font-size: 30px; font-weight: bold;">비밀번호 재설정</p>
		        </div>
		        <button type="submit" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 2px 5px; width: 60px; height: 60px; background-color: #75c9ba; border-radius: 30px; color: white; display: flex; align-items: center; justify-content: center; border: 0">
		        	<i class="fa-solid fa-arrow-right-long"></i>
		        </button>
	        </div>
        </div>
    </div>
</form>
</body>
</html>