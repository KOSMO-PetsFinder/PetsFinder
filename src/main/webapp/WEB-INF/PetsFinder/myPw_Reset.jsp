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
	//비밀번호 입력 시 유효성 검사
  	function passCheck(form) {
    	if(form.pass1.value != null) {
	        var u_pass = form.pass1.value;
	        var check = document.getElementById("pw_check01");
	        
	        if(u_pass.length >= 8 && u_pass.length <= 16) {
		        var num = 0;
		        var upp_Alpha = 0;
		        var low_Alpha = 0;
		        var symbol = 0;
		        for(var i = 0; i < u_pass.length; i++) {
			        var ascii = u_pass.charCodeAt(i);
			        if(ascii >= 48 && ascii <= 57) num++;
			        if(ascii >= 65 && ascii <= 90) upp_Alpha++;
			        if(ascii >= 97 && ascii <= 122) low_Alpha++;
			        if((ascii >= 33 && ascii <= 47) || (ascii >= 58 && ascii <= 64)
			            || (ascii >= 91 && ascii <= 96)
			            || (ascii >= 123 && ascii <= 126)) symbol++;
		        }
		        if( num > 0 && upp_Alpha > 0 && low_Alpha > 0 && symbol > 0 ) {
		            check.innerHTML = "사용 가능합니다";
		            check.style.color = "skyblue";
		            form.pass2.focus();
		        } else {
			        check.innerHTML = "영문(대소문자)/숫자/특수문자가 모두 포함되어야 합니다.";
			        check.style.color = "red";
		        }
	        } else {
		        check.innerHTML = "8~16 자리로 입력하세요.";
		      	check.style.color = "red";
	        }
    	}
  	}
 	// 비밀번호, 휴대폰 번호, 전화번호 입력시 잘못된 사항
    $(function () {
        $('#pass1').keyup(function () {
	        $('#pass2').val('');
	        $('#pw_check02').val('');
        });

        $('#pass2').keyup(function () {
	        if ($('#pass1').val() == $('#pass2').val()) {
        		$('#pw_check02').html('비밀번호 일치').attr('style', 'color: skyblue');
        		$('#name').focus();
	        } else {
		        $('#pw_check02').html('비밀번호 불일치').attr('style', 'color: red');
		        $('#pass2').focus();
	        }
        });
    });
</script>
<jsp:include page="./common/Header.jsp" />
<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 개인정보관리 > 비밀번호 수정</p>
</div>
<!-- Login Form -->
<form action="./pw_Reset" method="post" onsubmit="return checkLogForm(this);">
	<input type="hidden" name="id" value="${ id }"/>
	<input type="hidden" name="name" value="${ name }"/>
	<input type="hidden" name="backUrl" value="${param.backUrl }"/>
    <div class="pwReset_Form" id="pwReset_Form" style="display: flex; flex-direction: column; align-items: center; padding-top: 100px; padding-bottom: 100px">
        <div style="display: flex; justify-content: center; flex-direction: column; align-items: center;">
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
			                onblur="passCheck(this.form);"
			                />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	            	<p><span id="pw_check01" style="color: skyblue"></span></p>
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
			                />
		            </div>
	            </div>
	            <div style="margin-top: 5px;">
	            	<p><span id="pw_check02" style="color: skyblue"></span></p>
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