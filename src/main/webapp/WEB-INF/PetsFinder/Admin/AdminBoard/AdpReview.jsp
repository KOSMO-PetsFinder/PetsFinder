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
<script type="text/javascript">
function AdpDelete(review_idx) {
   if(confirm("정말로 삭제하시겠습니까?")){
      location.href="<c:url value='/' />AdpDelete.do?review_idx="+review_idx;
   }
}
</script>
<style>
*{font-family: 'BM JUA_TTF'}
</style>
<body class="sb-nav-fixed">
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
<div id="layoutSidenav_nav">
		<jsp:include page="../common/leftHeader.jsp"></jsp:include>
			</div>
			<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top:50px;">
				<h1>입양 후기 게시판</h1>
				</div>
				<hr />
											<div class="card-body">
													<table id="datatablesSimple">
															<thead>
																	<tr>
																			<th>일련번호</th>
																			<th>내용</th>
																			<th>등록일</th>
																			<th>사진</th>
																			<th>회원번호</th>
																			<th>유기동물 일련번호</th>
																			<th>삭제</th>
																	</tr>
															</thead>
															<tbody>
															<c:forEach items="${AdpReview }" var="row" varStatus="loop">
																	<tr>
																			<td>${row.review_idx }</td>
																			<td style="text-align: left">${row.review_content }</td>
																			<td>${row.review_regdate }</td>
																			<td>${row.review_photo }</td>
																			<td>${row.review_idx }</td>
																			<td>${row.abani_idx }</td>
																			<td><button type="button" class="btn btn-danger" style="background-color: red" 
                                       											onclick="AdpDelete(${row.review_idx});">삭제</button>
                                       										</td>
																	</tr>
															</c:forEach>
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
