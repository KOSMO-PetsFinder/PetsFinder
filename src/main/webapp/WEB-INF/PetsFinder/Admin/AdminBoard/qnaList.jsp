<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta name="description" content="" />
   <meta name="author" content="" />
   <title>Pets Finder Admin Page</title>
   <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
   <link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
   <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<style>
* {
   font-family: SpoqaHanSans, 'BM JUA_TTF', sans-serif;
}
</style>
<script type="text/javascript">
function deleteList(qna_idx) {
   if(confirm("정말로 삭제하시겠습니까?")){
      location.href="<c:url value='/' />qnaDelete.do?qna_idx="+qna_idx;
   }
}
</script>
<body class="sb-nav-fixed">
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
<div id="layoutSidenav_nav">
      <jsp:include page="../common/leftHeader.jsp"></jsp:include>
         </div>
         <div id="layoutSidenav_content" style="text-align: center;">
         <div style="margin-top:50px;">
            <h1>Q&A 게시판 - 관리자</h1>
         </div>
         <hr />
            <div class="card-body">
                  <table id="datatablesSimple" >
                        <thead >
                              <tr>
                                 <th>질문번호</th>
                                 <th>회원번호</th>
                                 <th>제목</th>
                                 <th>내용</th>
                                 <th>등록일</th>
                                 <th>처리상태</th>
                                 <th>공개상태</th>
                                 <th>삭제</th>
                              </tr>
                        </thead>
                        <tbody>
                           <c:choose>
                              <c:when test="${empty qnaList }">
                                 <tr>
                                    <td>등록된 질문이 없습니다.</td>
                                 </tr>
                              </c:when>
                           <c:otherwise>
                              <c:forEach items="${qnaList }" var="list" varStatus="loop">
                              <input type="hidden" name="qna_idx" value="${list.qna_idx }" />
                                 <tr align="center">
                                       <td>${list.qna_idx }</td>
                                       <td>${list.member_idx }</td>   
                                       <td>
                                          <a href="<c:url value='/' />Admin/qnaView.do?qna_idx=${list.qna_idx}">
                                          ${list.qna_title }
                                          </a>
                                       </td>      
                                       <td>${list.qna_content }</td>      
                                       <td>${list.qna_regdate }</td>
                                       <c:if test="${list.qna_stt eq 'Inc' }">
                                       <td>
                                          <button type="button" class="btn btn-danger">답변미완료</button>
                                       </td>      
                                       </c:if>
                                       <c:if test="${list.qna_stt eq 'com' }">
                                       <td>
                                          <button type="button" class="btn btn-info">답변완료</button>
                                       </td>      
                                       </c:if>   
                                       <c:if test="${list.qna_OPENSTATUS eq 'pub' }">
                                       <td>
                                          <button type="button" class="btn btn-outline-primary">공개</button>
                                       </td>      
                                       </c:if>   
                                       <c:if test="${list.qna_OPENSTATUS eq 'pri' }">
                                       <td>
                                          <button type="button" class="btn btn-outline-warning">비공개</button>
                                       </td>      
                                       </c:if>   
                                       <td>
                                          <button type="button" class="btn btn-danger" style="background-color: red" 
                                       onclick="javascript:deleteList(${list.qna_idx});">삭제</button>
                                       </td>
                                 </tr>
                              </c:forEach>
                           </c:otherwise>
                           </c:choose>
                        </tbody>
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