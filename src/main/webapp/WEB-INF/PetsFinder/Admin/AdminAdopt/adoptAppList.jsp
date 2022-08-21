<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Pets Finder Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<style>
* {
   font-family: 'BM JUA_TTF';
   text-align: center;
}
</style>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>입양 신청 내역</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>전화번호</th>
							<th>신청자 주소</th>
							<th>직업여부</th>
							<th>반려동물 키운 경험</th>
							<th>반려동물 키운 기간</th>
							<th>가족 수</th>
							<th>신청 유기동물</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>전화번호</th>
							<th>신청자 주소</th>
							<th>직업여부</th>
							<th>반려동물 키운 경험</th>
							<th>반려동물 키운 기간</th>
							<th>가족 수</th>
							<th>신청 유기동물</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${adoptAppList }" var="row">
							<tr>
								<td>${row.ADPAPL_idx }</td>
								<td>${row.ADPAPL_name }</td>
								<td>${row.ADPAPL_gender }</td>
								<td>${row.ADPAPL_birth }</td>
								<td>${row.ADPAPL_tel }</td>
								<td>${row.ADPAPL_addr }</td>
								<td>${row.ADPAPL_job1 }</td>
								<td>${row.ADPAPL_exp1 }</td>
								<td>${row.ADPAPL_havepet }</td>
								<td>${row.adpapl_fNum }</td>
								<td>${row.abani_idx }</td>
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
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"	crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>
