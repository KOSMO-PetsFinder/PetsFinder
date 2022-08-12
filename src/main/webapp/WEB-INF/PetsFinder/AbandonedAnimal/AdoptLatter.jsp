<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 입양후기 리스트 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Adopt Latter</title>
  </head>
  <body>
    <!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <jsp:include page="../common/Header.jsp" />

    <style>
      *{
        font-family: 'BM JUA_TTF';
      }
      a {
        text-decoration: none;
      }
    </style>
    
    <div style="padding-top: 164px; margin: 85px auto 100px;">
      <div style="display: flex; flex-direction: row; justify-content: center;">
        <h1 style="font-size: 40px;">입양 후기</h1>
      </div>
    </div>
    
    <section style="margin-top: 102px; box-shadow: rgba(0, 0, 0, 0.08) 0 0 10px 0;">
      <!-- 후기 시작 -->
      <c:forEach items="${lists }" var="row" varStatus="vs">
      <c:if test="${vs.index%3 == 0  }">
      <!-- 후기 한 줄 시작 -->
      <div style="display: flex; justify-content: center;">
      </c:if>
      <div style="width: 480px; padding-top: 50px; padding-bottom: 50px">
        
          <div
            style="
              display: flex;
              flex-direction: column;
              vertical-align: top;
              border-radius: 3px;
              box-shadow: rgb(235, 235, 235) 1px 1px 12px 0px;
              align-items: center;
              border: 1px solid rgb(235, 235, 235);
              height: 650px;
              padding-left: 5px;
              padding-right: 5px;
            "
          >
            <div style="width: 453px; height: 270px; overflow: hidden; position: relative">
              <img
                src="https://d1cd60iwvuzqnn.cloudfront.net/review/4fd938a8e4414fdc9aae8bd067c64f20.jpg"
                alt="경기 고양시 일산서구 펫시터 후기"
                style="position: absolute; inset: -100%; margin: auto; min-height: 50%; width: 100%; border-radius: 3px; pointer-events: none"
              />
            </div>
            <div style="display: flex; justify-content: space-between; width: 381px; margin-top: 35px">
              <p style="font-size: 23px; color: rgb(51, 51, 51); font-weight: 500; letter-spacing: -0.2px">너구리 보호자님</p>
              <div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 80px">
                <img width="13" height="13" src="/static/images/common/star_1.png" /><img
                  width="13"
                  height="13"
                  src="/static/images/common/star_1.png"
                /><img width="13" height="13" src="/static/images/common/star_1.png" /><img
                  width="13"
                  height="13"
                  src="/static/images/common/star_1.png"
                /><img width="13" height="13" src="/static/images/common/star_1.png" />
              </div>
            </div>
            <p
              style="
                margin-top: 24px;
                width: 381px;
                height: 142px;
                font-size: 15px;
                line-height: 30px;
                color: rgb(77, 80, 85);
                overflow: hidden;
                text-overflow: ellipsis;
                text-align: left;
                display: -webkit-box;
                -webkit-line-clamp: 5;
                -webkit-box-orient: vertical;
              "
            >
             	
             	${row.review_content}
            </p>

	    	<!-- 반복 부분 -->
            <a
              href="../AbandonedAnimal/adoptView.do?abani_idx=${row.abani_idx}"
              style="
                width: 381px;
                height: 40px;
                margin-top: 28px;
                background-color: rgb(250, 250, 252);
                border-radius: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
              "
              ><p style="font-size: 15px; color: rgb(57, 60, 71); font-family: 'Noto Sans KR'">내용 더 보기</p></a
            >

          </div>
        </div>
          
      <c:if test="${vs.index%3 == 2}">
      </div>
      </c:if>	
   	</c:forEach>
    </section>
    <jsp:include page="../common/foot.jsp" />
  </body>
</html>
