<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 	<script
      src="https://kit.fontawesome.com/54b3b8eebf.js"
      crossorigin="anonymous"
    ></script>
 	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() {
        dataLayer.push(arguments);
      }
      gtag("js", new Date());

      gtag("config", "UA-164229575-1");
    </script>

    <title>PetsFinder</title>
	
	<link rel="stylesheet" href="<c:url value='/' />css/main2.css" type="text/css" />
	<link rel="stylesheet" href="<c:url value='/' />css/reset.css" type="text/css" />
    
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body cz-shortcut-listen="true">
    <div class="contwrap">
      <div class="header">
        <div class="navigation">
          <div class="nav_logo">
            <a href="<c:url value='' />/PetsFinder" class="home" >
            	<img src="<c:url value='/' />images/main_logo.png" alt="홈페이지로고"/>
            </a>
          </div>
          <ul class="menu">
            <li class="first_menu">
              <a class="about_a" href="#"><i class="fa-solid fa-paw"></i> 입양</a>
            </li>
            <li style="color:lightgray">&nbsp;|</li>
            <li class="last_menu" style="padding-right:15px;">
              <a class="about_a" href="#"><i class="fa-solid fa-shield-dog"></i> 펫시터</a>
            </li>
            <li style="color:lightgray">&nbsp;|</li>
             <li class="no_2depth"><a href="<c:url value='/Shop' />"><i class="fa-solid fa-cart-shopping"></i> Shop</a></li>
             <li style="color:lightgray">&nbsp;|</li>
            <%
            if (session.getAttribute("id") != null) {
           		if(session.getAttribute("id").equals("petsfinder")){
           			%>
           			<li class="admin_menu"><a href="<c:url value='/' />"><%= session.getAttribute("name") %>님</a></li>
                    <li class="no_2depth"><a href="<c:url value='/' />Logout">로그아웃</a></li>
		            <%
			    		} else {
			    		%>
	           			<li class="no_2depth"><a href="<c:url value='/' />myPage"><%= session.getAttribute("name") %>님</a></li>
	                    <li class="no_2depth"><a href="<c:url value='/' />Logout">로그아웃</a></li>
	            <%
	            	}
            } else{
            %>
            <li class="no_2depth"><a href="<c:url value='/' />Login"><i class="fa-solid fa-right-to-bracket"></i> 로그인</a></li>
            <li class="no_2depth"><a href="<c:url value='/' />Regist"><i class="fa-solid fa-user-plus"></i> 회원가입</a></li>
            <%
            }
            %>
          </ul>
        </div>
        
        <div class="menu_2depth">
          <ul>
            <li class="adopt" >
              <ul>
                <li>
                  <a href="<c:url value='/' />AbandonedAnimal/abanAniList.do">유기동물</a>
                </li>
                <li class="last_menu_2depth">
                  <a href="<c:url value='/' />AbandonedAnimal/adoptlatter.do">입양후기</a>
                </li>
                <%-- <li >
   					<a href="<c:url value='/' />AbandonedAnimal/AdoptApplicationForm.do">입양신청</a>
				</li> --%>
              </ul>
            </li>
            <li class="admin">
            <ul>
            	<li class="admin_menu_2depth" style="margin-left:150px; position:absolute;"><a href="./Admin/adminMain">AdminPage</a></li>
            </ul>
            </li>
            <li class="sitter" >
              <ul>
                <li>
                	<a href="<c:url value='/' />Petsitters/petsitters">시터찾기</a>
                </li>
                <li>
                	<a href="<c:url value='/' />Petsitters/sitterreview">시터이용후기</a>
                </li>
                <li class="last_menu_2depth">
                  <a href="<c:url value='/' />">근처 동물병원</a>
                </li>
              </ul>
            </li>
          </ul>
   
        </div>
      </div>

      <div class="m_header">
        <div class="m_navigation">
          <div class="m_nav_logo">
            <a href="#" class="m_home"
              ><strong>PetsFinder</strong><!-- <img src="(이미지경로)" alt="홈페이지 로고"
            /> --></a>
            <button class="m_menu_open">메뉴열기</button>
          </div>
          <div class="m_menu">
            <div class="m_menu_bg"></div>
            <div class="m_menu_inner">
              <button class="m_menu_close">메뉴닫기</button>
              <ul class="m_menu_1depth">
                <li>
                  <a >입양</a>
                  <ul class="m_menu_2depth">
                    <li>
                      <a href="<c:url value='/' />AbandonedAnimal/abanAniList.do">- 유기동물</a>
                    </li>
                    <li>
                      <a href="<c:url value='/' />AbandonedAnimal/adoptlatter.do">- 입양후기</a>
                    </li>
                    <li>
                      <a href="<c:url value='/' />AbandonedAnimal/AdoptApplicationForm.do"
                        >- 입양신청</a
                      >
                    </li>
                  </ul>
                </li>
                <li>
                  <a>펫 시터</a>
                  <ul class="m_menu_2depth">
                    <li>
                      <a href="<c:url value='/' />Petsitters/petsitters">- 시터찾기</a>
                    </li>
                    <li>
                      <a href="<c:url value='/' />Petsitters/sitterreview">- 시터이용후기</a>
                    </li>
                    <li>
                      <a href="<c:url value='/' />"
                        >- 근처 동물병원</a
                      >
                </li>
                  </ul>
                </li>
                <li>
                  <a href="<c:url value='/' />"> 쇼핑몰</a>
                </li>
                <br />
                <%
                if (session.getAttribute("id") != null) {
               		if(!session.getAttribute("id").equals("petsfinder")) {
                %>
                <li>
                <ul class="m_menu_2depth">
                <p style="color:#85B4F2; font-size: 25px; font-weight:bold;"><%= session.getAttribute("name") %>님</p>
                <li>
                     <a href="<c:url value='/' />Admin/adminMain" style="color:#85B4F2;">- AdminPage</a>
                </li>
                <li>
               		<a href="<c:url value='/' />Logout" style="color:#85B4F2;">- Logout</a>
               	</li>
               	</ul>
               	</li>
               	<%
	    			} else {
	    		%>
                <li style="color:#85B4F2;">
                  <a href="<c:url value='/' />myPage"><%= session.getAttribute("name") %>님</a>
                </li>
                <li>
                  <a href="<c:url value='/' />Logout" style="color:#85B4F2;"> Logout</a>
                </li>
                <%
          			}
	            } else{
	            %>
	            <li style="color:#85B4F2;"><a href="<c:url value='/' />Login"> Login</a></li>
	            <li style="color:#85B4F2;"><a href="<c:url value='/' />Regist"> Register</a></li>
	            <%
	            }
	            %>
              </ul>
              
              <!-- <div class="m_sns">
                <a
                  href="#"
                  target="_blank"
                  ><img
                    src="이미지경로"
                    alt="sns아이콘모바일버전"
                /></a>
                <a
                  href="#"
                  target="_blank"
                  ><img src="이미지경로" alt="sns아이콘모바일버전"
                /></a>
                <a href="#" target="_blank"
                  ><img
                    src="이미지경로"
                    alt="sns아이콘모바일버전"
                /></a>
              </div> -->
            </div>
          </div>
        </div>
      </div>
	
   	<script>
        $("#file_input").on("change", (e) => {
          $(".text").text(e.target.files[0].name);
          $(".text").css("color", "black");
          $(".add").hide();
        });

        $(".modal").show();
    </script>
      
      <script>
        $(".first_menu").mouseenter(function () {
          $(".menu_2depth").slideDown(300);
          $(".sitter").hide();
          $(".admin").hide();
          $(".adopt").show();
          $(".first_menu").addClass("hover_a");
          $(".last_menu").removeClass("hover_a");
        });
        /* $(".first_menu").mouseleave(function () {
            $(".menu_2depth").slideUp(300);
            $(".sitter").hide();
            $(".admin").hide();
            $(".adopt").hide();
            $(".first_menu").removeClass("hover_a");
          }); */

        $(".last_menu").mouseenter(function () {
          $(".menu_2depth").slideDown(300);
          $(".adopt").hide();
          $(".admin").hide();
          $(".menu_2depth .sitter").show();
          $(".last_menu").addClass("hover_a");
          $(".first_menu").removeClass("hover_a");
        });
        /* $(".last_menu").mouseleave(function () {
            $(".menu_2depth").slideUp(300);
            $(".adopt").hide();
            $(".admin").hide();
            $(".sitter").hide();
            $(".last_menu").removeClass("hover_a");
          }); */

        $(".admin_menu").mouseenter(function () {
            $(".menu_2depth").slideDown(300);
            $(".adopt").hide();
            $(".sitter").hide();
            $(".admin").show();
            $(".admin_menu").addClass("hover_a");
        });
        
        $(".header").mouseleave(function () {
          $(".menu_2depth").slideUp(200);
          $(".first_menu").removeClass("hover_a");
          $(".admin_menu").removeClass("hover_a");
          $(".last_menu").removeClass("hover_a");
        });

        $(".no_2depth").mouseenter(function () {
          $(".menu_2depth").slideUp(200);
          $(".first_menu").removeClass("hover_a");
          $(".admin_menu").removeClass("hover_a");
          $(".last_menu").removeClass("hover_a");
        });


        $(".m_menu_open").click(function () {
          $(".m_menu").addClass("m_on");
        });
        $(".m_menu_close").click(function () {
          $(".m_menu").removeClass("m_on");
        });

        $(".menu").children().eq().addClass("on");

        $(".trackClick").click((e) => {
          fbq("trackCustom", e.currentTarget.id);
        });
      </script>
    </div>
    <div style="position: fixed; right: 50px; bottom:10px; z-index: 999999;">
       <img type="button" src="<c:url value='/' />images/websocket_icon2.png" onclick="window.open('/Petsfinder/PetsFinder/MultiChatMain.jsp', '', 'width=400,height=400');" alt="소켓이미지" style="width: 100px; height: 100px"/>
    </div>
  </body>
</html>
