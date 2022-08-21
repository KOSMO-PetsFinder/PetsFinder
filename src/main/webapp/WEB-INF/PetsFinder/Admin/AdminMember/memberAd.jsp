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
<style>
* {
	font-family: 'BM JUA_TTF', sans-serif;
}
</style>

<script>
function deleteMem(member_idx){
	if(confirm("삭제하시겠습니까?")){
		location.href="../AdminMember/deletemem?member_idx="+member_idx
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
		<form name="changeFrm" action="./modifymem" method="GET">
			<input type="hidden" name="member_idx" id="idx"/>
			<input type="hidden" name="member_type" id="type"/>
		</form>
		<script>
			function changeType(idx) {
				$('#idx').val(idx);
				var type = $('#member_type_' + idx).val();
				$('#type').val(type)
				document.changeFrm.submit();
			}
		</script>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>회원 관리</h1>
			</div>
			<hr />
			
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>회원번호</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>주소</th>
							<th>회원타입</th>
							<th>이메일</th>
							<th>연락처</th>
							<th>가입일</th>
							<th>성별</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>

					<c:forEach items="${ memlist }" var="mem">
						
					<input type="hidden" name="member_idx" value="${mem.member_idx }" />
						<tr>
							<td>${mem.member_idx }</td>
							<td>${mem.member_id }</td>
							<td>${mem.member_pass }</td>
							<td>${mem.member_name }</td>
							<td>${mem.member_addr }</td>
							<td>
								<select id="member_type_${mem.member_idx }" name="member_type">
									<option ${mem.member_type =='nor' ? 'selected' : "" } value="nor">nor</option>
									<option ${mem.member_type =='sit' ? 'selected' : "" } value="sit">sit</option>
								</select>
							</td>
							<td>${mem.member_email }</td>
							<td>${mem.member_phone }</td>
							<td>${mem.member_reg }</td>
							<td>${mem.member_gender }</td>
							<td><button type="button" class="btn btn-success btn-sm" onclick="changeType(${ mem.member_idx });">수정</button></td>
							<td><button class="btn btn-danger btn-sm"
							onclick="javascript:deleteMem(${mem.member_idx});">삭제</button></td>
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
