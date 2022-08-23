<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css" />
    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
    <title>마이페이지</title>
    <style>
      .uk-active {
        display: inline-block; width: 100%;
        height: 125px;
        padding: 32px 0 0 0;
        text-align: center;
        background-color: #75c9ba;
        font-size: 35px;
        font-weight: 400;
        color: white;
      }
      li.uk-parent {
        border: 1px solid #cccccc;
        border-left: 0;
        border-right: 0;
        border-bottom: 0;
        margin: 0;
      }
      li.uk-parent a {
        padding: 12px 0 12px 20px;
        color: black;
      }
      ul.uk-nav-sub {
        padding-left: 35px;
        background-color: #f0f1f5;
      }
      ul.uk-nav-sub a {
        padding: 10px 0 10px 0;
      }
      ul.uk-nav-sub li {
        list-style: square;
      }
      ul.uk-nav-sub li::marker {
        color: gray;
      }
      .uk-nav-default .uk-nav-sub a {
        color: black;
      }
      .uk-open .side{
        background-color: #75c9ba;
        color: #FFFFFF;
      }
      .uk-nav-default>li>a:hover {
        background-color: #75c9ba;
        color: #FFFFFF;
      }
    </style>
  </head>
  <body>
 	<jsp:include page="./common/Header.jsp" />
    <div style="display: flex; justify-content: center">
      <!-- left -->
      <div style="display: flex; justify-content: center; position:fixed; left: 50px; top: 120px">
        <div class="container">
          <div
            class="uk-width-1-2@s uk-width-2-5@m"
            style="margin: 0; border: 1px solid #cccccc; width: 240px; display: inline-block"
          >
            <ul class="uk-nav-default uk-nav-parent-icon" uk-nav style="width: 240px">
              <li class="uk-active">
                <a href="" style="justify-content: center; color: white;">마이페이지</a>
              </li>
              <li class="uk-parent">
                <a href="#" class="side">개인정보관리</a>
                <ul class="uk-nav-sub">
	                <li>
	                    <a href="./passCheck?mode=p" target="rightwin">비밀번호 수정</a>
	                </li>
	                <li>
	                    <a href="./passCheck?mode=i" target="rightwin">회원정보 수정</a>
	                </li>
				<c:if test="${ sessionScope.type ne 'sit' }">
	                <li>
	                	<a href="./sitterApl" target="rightwin">시터신청</a>
	                </li>
	            </c:if>
                </ul>
              </li>
              <li class="uk-parent">
                <a href="#" class="side">내가 쓴 글 보기</a>
                <ul class="uk-nav-sub">
	                <!-- <li>
	                  <a href="./notifyForm.do" target="rightwin">유기동물 신고</a>
	                </li> -->
                <c:if test="${ sessionScope.type eq 'sit' }">
                  <li>
                    <a href="./petsitterForm" target="rightwin">시터 페이지 생성 및 수정</a>
                  </li>
                </c:if> 
                  <li>
                    <a href="./myReview?mode=adp" target="rightwin">입양 후기</a>
                  </li>
                  <li>
                    <a href="./myReview?mode=sit" target="rightwin" >시터 후기</a>
                  </li>
                </ul>
              </li>
              <li class="uk-parent">
                <a href="#" class="side">신청/이용 내역</a>
                <ul class="uk-nav-sub">
	                <li>
	                    <a href="" target="rightwin">입양신청 확인</a>
	                </li>
	                <li>
	                    <a href="./myReserve" target="rightwin">시터 이용 내역</a>
	                </li>
	                <li>
	                    <a href="" target="rightwin">구매 내역</a>
	                </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- right -->
      <div class="container" style="display: flex; justify-content: center;">
        <iframe src="" name="rightwin" scrolling="auto" frameborder="1" width="1600" height="1000">
        </iframe>
      </div>
    </div>
  </body>
</html>
