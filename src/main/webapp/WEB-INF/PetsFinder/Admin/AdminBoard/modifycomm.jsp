<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
* {
   font-family: SpoqaHanSans, 'BM JUA_TTF', sans-serif;
}
</style>
<body>
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
   <div id="layoutSidenav_nav">
   <jsp:include page="../common/leftHeader.jsp"></jsp:include>
   </div>
   <div id="layoutSidenav_content" style="text-align: center;">
      <div class="container">
         <h2 style="margin-top: 40px;">QNA 게시판 상세보기 - 관리자</h2>
         <%-- <input type="hidden" name="searchColumn" value=${viewRow.pagingImg } />  --%>
         <table class="table table-boardered" width=90% style="text-align: left; margin-top: 50px">
            <tr>
               <th>질문번호</th>
               <td>${qnaView.qna_idx }</td>
               <th>작성자</th>
               <td>${qnaView.member_name }</td>
               <th>등록일</th>
               <td>${qnaView.qna_regdate }</td>            
            </tr>
            <tr>
               <th>처리상태</th>
               <c:if test="${qnaView.qna_stt eq 'Inc' }">
               <td>답변미완료</td>      
               </c:if>
               <c:if test="${qnaView.qna_stt  eq 'com' }">
               <td>답변완료</td>      
               </c:if>   
               <th>공개여부</th>
               <c:if test="${qnaView.qna_OPENSTATUS eq 'pub' }">
               <td>공개</td>      
               </c:if>   
               <c:if test="${qnaView.qna_OPENSTATUS eq 'pri' }">
               <td>비공개</td>      
               </c:if>   
               <th>회원번호</th>
               <td>${qnaView.member_idx }</td>
            </tr>
            <tr>
               <th>제목</th>
               <td colspan="10">
                  ${qnaView.qna_title }
               </td>
            </tr>
            <tr>
               <th>내용</th>
               <td colspan="10" style="height:150px;">
                  ${qnaView.qna_content }
               </td>
            </tr>
            <form action="modifyQnAcomm" method="post">
            <input type="hidden" name="qna_idx" value="${qnaView.qna_idx }" />   
            <tr>
               <th>답글달기</th>
               <td colspan="10" style="height:80px;">
               <textarea style="width:800px; height:120px;" name="qnacomm_content" cols="30" rows="10">${qcv.qnacomm_content }</textarea>
               </td>
            </tr>   
            <tr>
               <td colspan="10" align="center">   
               <button type="button" 
                  onclick="location.href='<c:url value='/' />Admin/qnaList.do';">리스트보기</button>
                  <button type="submit">댓글달기</button>
               </td>
            </tr>
            </form>
         </table>
         </div>
      </div>
</div>
<!-- footer -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
   <script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
   <script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
   <script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
   <script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>