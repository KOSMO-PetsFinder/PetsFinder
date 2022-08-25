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
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>

<style>
* {
	font-family: 'BM JUA_TTF'
}
</style>

<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<form name="changeFrm" action="./AdminBoard/modifypay" method="GET">
			<input type="hidden" name="payment_idx" id="idx" /> <input
				type="hidden" name="payStus" id="type" />
		</form>
		<script>
				function modifypay(idx) {
					$('#idx').val(idx);
					var type = $('#payStus_' + idx).val();
					$('#type').val(type)
					document.changeFrm.submit();
				}
			</script>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>고객 주문내역</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>결제 일련번호</th>
							<th>상품 아이디</th>
							<th>가격</th>
							<th>pg사</th>
							<th>결제상태</th>
							<th>결제일</th>
							<th>판매자</th>
							<th>상품명</th>
							<th>회원번호</th>
							<th>수정</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${PayMent }" var="row" varStatus="loop">
							<input type="hidden" name="payment_idx"
								value="${row.payment_idx }" />
							<tr>
								<td>${row.payment_idx }</td>
								<td>${row.merchant_uid }</td>
								<td>${row.amount }</td>
								<td>${row.pg }</td>
								<td><select id="payStus_${row.payment_idx }" name="payStus">
										<option ${row.payStus =='pay' ? 'selected' : "" } value="pay">결제완료</option>
										<option ${row.payStus =='rfn' ? 'selected' : "" } value="rfn">환불완료</option>
								</select></td>
								<td>${row.pay_date }</td>
								<td>${row.seller }</td>
								<td>${row.productname }</td>
								<td>${row.member_idx }</td>
								<td><button type="button" class="btn btn-success btn-sm"
										onclick="modifypay(${row.payment_idx });">수정</button></td>



							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	<!-- footer -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>