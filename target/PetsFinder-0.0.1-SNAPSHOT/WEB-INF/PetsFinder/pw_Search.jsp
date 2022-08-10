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
    var name_check = document.getElementById('name_check');
    var email_check = document.getElementById('email_check');
    if (!fm.name.value) {
      name_check.style.color = 'red'
      name_check.innerHTML = "이름을 입력하세요!"
      fm.name.focus();
      return false;
    } 
    
    if(!fm.id.value) {
        id_check.style.color = 'red'
        id_check.innerHTML = "아이디를 입력하세요!"
        fm.id.focus();
        return false;
    } 
    
    if (!fm.email.value) {
      email_check.style.color = 'red'
      email_check.innerHTML = "이메일을 입력하세요!"
      fm.email.focus();
      return false;
    } else if (email_check.innerHTML == '이메일 형식을 지켜주세요') {
    	fm.email.focus();
    	return false;
    }
  }
  
	function nameMessage(fm) {
	    var name_check = document.getElementById('name_check');
	  	if(fm.name.value != '') {
			name_check.innerHTML = '';
		}
	}
	
	function idMessage(fm) {
	    var id_check = document.getElementById('id_check');
	  	if(fm.id.value != '') {
			id_check.innerHTML = '';
		}
	}
	
	function emailCheck(form) {
    	var email_check = document.getElementById("email_check");
    	var email_val = form.email.value;
    	var symbol01 = 0;
    	var symbol02 = 0;
    	for (var i = 0; i < email_val.length; i++) {
			if(email_val[i] == '@') {
				symbol01++;
			}
			if(email_val[i] == '.') {
				symbol02++;
			}
    	}
    	
    	if(symbol01 != 1 || symbol02 != 1) {
    		email_check.innerHTML = "이메일 형식을 지켜주세요"
    		email_check.style.color = "red"
    	} else {
    		email_check.innerHTML = '';
    	}
    }
</script>
<jsp:include page="./common/Header.jsp" />
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- Login Form -->
<form action="./pw_Search" method="post" onsubmit="return checkLogForm(this);">
    <div class="pwSearch_Form" id="pwSearch_Form" style="display: flex; flex-direction: column; align-items: center; padding-top: 100px; padding-bottom: 100px">
        <div style="background-color: white; width: 960px; height: 850px; border-radius: 30px; display: flex; justify-content: center; flex-direction: column; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 20px;">
	        <div>
	            <img src="./images/main_logo.png" alt="" style="width: 250px;">
	        </div>
	        <!-- Name -->
	        <div>
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">이름</p>
	            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; margin-top: 10px; padding: 0 0 0 17px">
       	            <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
		            </div>
		            <div>
			            <input
				            id="name"
				            name="name"
				            type="text"
				            placeholder="이름을 입력하세요!"
				            style="width: 320px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
				            onblur="nameMessage(this.form);"
			            />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	                <p><span id="name_check" style="color: skyblue"></span></p>
	            </div>
            </div>
            <!-- Id -->
	        <div style="margin-top: 30px; max-width: none;">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">아이디</p>
	            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; margin-top: 10px; padding: 0 0 0 17px">
       	            <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
		            </div>
		            <div>
			            <input
				            id="id"
				            name="id"
				            type="text"
				            placeholder="아이디를 입력하세요!"
				            style="width: 320px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
				            onblur="idMessage(this.form);"
			            />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	                <p><span id="id_check" style="color: skyblue"></span></p>
	            </div>
            </div>
            <!-- Email -->
            <div style="margin-top: 30px; max-width: none;">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">이메일</p>
	            <div  style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
       	            <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
		            </div>
		            <div>
		              	<input
			              	id="email"
			              	name="email"
			                type="text"
			                placeholder="이메일을 입력하세요!"
			                style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
			                onblur="emailCheck(this.form);"
			                />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	            	<p><span id="email_check" style="color: skyblue"></span></p>
	            	<p style="color: #4D505A">
	                	예) petsfinder@petsfinder.com
	              	</p>
	            </div>
            </div>
            <!-- Login -->
	  		<div style="display: flex; align-items: center; justify-content: space-between; margin-top: 30px; width: 450px">
		        <div>
        			<p style="font-size: 30px; font-weight: bold;">비밀번호 찾기</p>
		        </div>
		        <button type="submit" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 2px 5px; width: 60px; height: 60px; background-color: #75c9ba; border-radius: 30px; color: white; display: flex; align-items: center; justify-content: center; border: 0">
		        	<i class="fa-solid fa-arrow-right-long"></i>
		        </button>
	        </div>
          	<!-- search -->
	        <div style="display: flex; justify-content: space-between; width: 450px; margin-top: 50px">
	          <a href="./Regist" style="color: black;">회원가입</a>
	          <a href="./id_Search" style="color: red;">아이디 찾기</a>
	        </div>
        </div>
    </div>
</form>
</body>
</html>