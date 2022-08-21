<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<style>
* {
	font-family:  'BM JUA_TTF', sans-serif;
	text-align: center;
}
</style>
<script>
function acceptMem(member_idx){
	if(confirm("수락하시겠습니까?")){
		location.href="../../Admin/AdminSitter/accept?member_idx="+member_idx;
	}
}
</script>

<script>
function denied(member_idx){
	if(confirm("거절하시겠습니까?")){
		location.href="../AdminSitter/denied?member_idx="+member_idx;
	}
}
</script>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>시터 신청 대기 명단</h1>
			</div>
			<hr />
			
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>신청번호</th>
							<th>이름</th>
							<th>성별</th>
							<th>생년월일</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>흡연여부</th>
							<th>반려동물 키운기간</th>
							<th>반려동물 키운경험</th>
							<th>수락</th>
							<th>거절</th>
						</tr>
					</thead>
						<c:forEach items="${sitapp }" var="app">
							<tr>
								<td>${app.sitapl_idx }</td>
								<td>${app.sitapl_name }</td>
								<td>${app.sitapl_gender }</td>
								<td>${app.sitapl_birth }</td>
								<td>${app.sitapl_tel }</td>
								<td>${app.sitapl_addr }</td>
								<td>${app.sitapl_smkstt == 1 ? 'Y' : 'N' }</td>
								<td>${app.sitapl_havepet }</td>
								<td>${app.sitapl_exp }</td>
								<td><button class="btn btn-success btn-sm"
								onclick="javascript:acceptMem(${ app.member_idx });">수락</button></td>
								<td><button class="btn btn-danger btn-sm"
								onclick="denied(${app.member_idx});">거절</button></td>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<!-- footer -->
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>
