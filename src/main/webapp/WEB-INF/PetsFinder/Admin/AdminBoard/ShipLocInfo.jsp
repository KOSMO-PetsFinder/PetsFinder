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
<script type="text/javascript">
function ShipInfoDelete(shiplocinfo_idx) {
   if(confirm("정말로 삭제하시겠습니까?")){
      location.href="<c:url value='/' />ShipInfoDelete.do?shiplocinfo_idx="+shiplocinfo_idx;
   }
}
</script>
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
		<form name="changeFrm" action="./AdminBoard/modifyshipinfo" method="GET">
			<input type="hidden" name="shiplocinfo_idx" id="idx" /> 
			<input type="hidden" name="delivery_status" id="type" />
		</form>
		<script>
				function modifyshipinfo(idx) {
					$('#idx').val(idx);
					var type = $('#delivery_status_' + idx).val();
					$('#type').val(type)
					document.changeFrm.submit();
				}
	    </script>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>고객 배송내역</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>배송지 일련번호</th>
							<th>수령인</th>
							<th>연락처</th>
							<th>배송지 주소</th>
							<th>배송상태</th>
							<th>결제 일련번호</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ShipLocInfo }" var="row" varStatus="loop">
							<tr>
								<td>${row.shiplocinfo_idx }</td>
								<td>${row.recipient }</td>
								<td>${row.recipient_phone }</td>
								<td>${row.shipping_location }</td>
								<td>
								<select id="delivery_status_${row.shiplocinfo_idx }" name="shiplocinfo_idx">
									<option ${row.delivery_status =='prp' ? 'selected' : "" } value="prp">배송준비</option>
									<option ${row.delivery_status =='dlv' ? 'selected' : "" } value="dlv">배송중</option>
									<option ${row.delivery_status =='cmp' ? 'selected' : "" } value="cmp">배송완료</option>
								</select>
								</td>
								<td>${row.payment_idx }</td>
								<td><button type="button" class="btn btn-primary"
										style="background-color: green"
										onclick="modifyshipinfo(${row.shiplocinfo_idx });">수정</button>
								</td>
								<td><button type="button" class="btn btn-danger"
										style="background-color: red"
										onclick="ShipInfoDelete(${row.shiplocinfo_idx});">삭제</button>
								</td>



							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	<!-- footer -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"	crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>









