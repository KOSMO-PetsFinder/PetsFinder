<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  /* foot */
  .foot a {
    text-decoration: none;
    color: #383C38
  }
  p {
    margin-bottom: 0
  }
</style>
<!-- foot -->
<div class="container foot" style="height: 550px; display: flex; align-items: center; justify-content: center;">
  <div style="display: flex; justify-content: space-between; align-items: center; width: 1090px; height: 360px; border-top: 1px solid #E7E9EB;">
    <!-- left -->
    <div style="display: flex; flex-direction: column; height: 304px; justify-content: space-between; margin-top: 55px; margin-left: 28px; margin-right: 28px;">
      <p style="font-size: 15px; font-weight: 600; color: #383C38;">112기 3팀 PetsFinder</p>
      <p style="font-size: 13px; color: #383C38; line-height: 24px;">
        서울시 금천구 가산동 426-5 월드메르디앙 2차 413호<br>
        PM : 정우성님 | PL : 각도형, 0= <br>
        PA : 금은동, 5^, 21재, Tax4<br>
        도움을 주신 분 : 성낙현 선생님<br>
        사진 제공 : 라떼, 콩, 솜, 말랭, 치노, 나나, 달, 초코, 루비, 간지, 금복, 로미
      </p>
      <p style="font-size: 13px; color: #9DA4B4;">© PetsFinder 팀원분들 수고 많으셨습니다</p>
    </div>
    <!-- right -->
    <div style="display: flex; justify-content: space-between; flex-direction: column; align-items: flex-end; height: 360px;">
      <div style="display: flex; justify-content: space-between;">
        <div style="display: flex; flex-direction: column; margin-top: 55px; margin-right: 100px">
          <p style="font-size: 15px; color: #383C38; font-weight: 600;">PetsFinder 서비스</p>
          <a href="" style="font-size: 13px; margin-top: 32px;">서비스 소개</a>
          <a href="" style="font-size: 13px; margin-top: 19px; ">유기동물 입양</a>
          <p style="font-size: 13px; margin-top: 19px;">채팅 상담 및 즉시 신고</p>
          <a href="" style="font-size: 13px; margin-top: 19px;">펫시터 찾기</a>
          <a href="" style="font-size: 13px; margin-top: 19px;">펫 쇼핑몰</a>
        </div>
        <div style="display: flex; flex-direction: column; margin-top: 55px; margin-right: 100px; height: 228px;">
          <p style="font-size: 15px; color: #383C38; font-weight: 600;">PetsFinder 비전</p>
          <a href="" style="font-size: 13px; margin-top: 32px;">유기동물의</a>
          <a href="" style="font-size: 13px; margin-top: 19px;">길을 찾아주는</a>
          <a href="" style="font-size: 13px; margin-top: 19px;">공간이 될 수 있도록</a>
        </div>
        <div style="display: flex; flex-direction: column; margin-top: 55px; margin-right: 28px; height: 228px;">
          <p style="font-size: 15px; color: #383C38; font-weight: 600;">PetsFinder 계정</p>
          <c:if test="${ sessionScope.u_id eq null and sessionScope.naver_name eq null }" var="result">
          <a href="<c:url value="/" />Regist" style="font-size: 13px; margin-top: 32px;">회원가입</a>
          <a id="" href="<c:url value="/" />Login" style="font-size: 13px; margin-top: 19px;">로그인</a>
          </c:if>
          <c:if test="${ not result }">
          <p style="font-size: 13px; margin-top: 32px;">회원가입</p>
          <p style="font-size: 13px; margin-top: 19px;">로그인</p>
          </c:if>
        </div>
      </div>
      <div>
        <a href="https://www.instagram.com/petplanet.co">
          <img src="<c:url value="/" />images/icon_insta.png" alt="인스타그램" style="width: 40px; height: 40px; margin-right: 10px;">
        </a>
        <a href="https://www.facebook.com/petplanet.co">
          <img src="<c:url value="/" />images/icon_facebook.png" alt="페이스북" style="width: 40px; height: 40px; margin-right: 10px;">
        </a>
        <a href="https://blog.naver.com/petplanet_kr">
          <img src="<c:url value="/" />images/icon_blog.png" alt="블로그" style="width: 40px; height: 40px; margin-right: 10px;">
        </a>
        <a href="https://www.youtube.com/channel/UCWfbYQA0PSdU5up5s9_ySmA">
          <img src="<c:url value="/" />images/icon_youtube.png" alt="유튜브" style="width: 40px; height: 40px; margin-right: 20px;">
        </a>
      </div>
    </div>
  </div>
</div>
<style>
#on_top {
	position: fixed;
    right: 24px;
    bottom: 50px;
    z-index: 100;
}
#on_top:before {
	display: inline-block;
    width: 51px;
    height: 51px;
    background-position: -150px -212px;
    background-repeat: no-repeat;
    vertical-align: top;
    content: '';
}
#on_bottom {
	position: fixed;
    right: 24px;
    bottom: 20px;
    z-index: 100;
}
#on_bottom:before {
	display: inline-block;
    width: 51px;
    height: 51px;
    background-position: -150px -212px;
    background-repeat: no-repeat;
    vertical-align: top;
    content: '';
}
</style>
<script>
$(document).ready(function() {

	$(window).scroll(function() {
	    // top button controll
	    if ($(this).scrollTop() > 500) {
	        $('#on_top').fadeIn();
	    } else {
	        $('#on_top').fadeOut();
	    }
	    
	    //bottom button controll
	    var innerHeight = $(this).innerHeight();
	    var scrollHeight = $('body').prop('scrollHeight');
	    if ($(this).scrollTop() + innerHeight < scrollHeight - 300 ) {
	        $('#on_bottom').fadeIn();
	    } else {
	        $('#on_bottom').fadeOut();
	    }
	});

	$("#on_top").click(function() {
		$('html, body').animate({scrollTop:0}, '300');
	});
	var scrollHeight = $('body').prop('scrollHeight');
	$("#on_bottom").click(function() {
		$('html, body').animate({scrollTop: scrollHeight}, '300');
	});

});
</script>
<div>
	<a id="on_top" > 
		<img src="<c:url value="/" />images/on_top.png" width="30px"/>
	</a>
	<a id="on_bottom" > 
		<img src="<c:url value="/" />images/on_bottom.png" width="30px"/>
	</a>
</div>