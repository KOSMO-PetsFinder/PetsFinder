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
	font-family: 'BM JUA_TTF', sans-serif;
	text-align: center;
}
</style>
<script>
function deletepdt(product_idx){
	if(confirm("삭제하시겠습니까?")){
		location.href="../AdminShop/deletepdt?product_idx="+product_idx
	}
}
function modifypdt(product_idx){
	if(confirm("수정하시겠습니까?")){
		location.href="../AdminShop/modifypdt?product_idx="+product_idx
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
		<c:forEach items="${pdt }" var="pdt" varStatus="vs" >
        <script>
		  var photos${pdt.product_idx} = "${pdt.photos}";
		  var photo${pdt.product_idx} = photos${pdt.product_idx}.split(',');
		  console.log(photo${pdt.product_idx}.length);
		  $(function () {
		      $('#photo${pdt.product_idx}').attr({ src: '<c:url value='/'/>Uploads/' + photo${pdt.product_idx}[0] });
		  });
		</script>	
	</c:forEach>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>물품 등록</h1>
			</div>
			<hr />
			
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>상품번호</th>
							<th>상품명</th>
							<th>상품가</th>
							<th>상품설명</th>
							<th>등록일</th>
							<th>카테고리</th>
							<th>재고</th>
							<th>상품사진</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					
					<c:forEach items="${pdt }" var="pdt">
						<tr>
							<td>${pdt.product_idx }</td>
							<td>${pdt.product_name }</td>
							<td>${pdt.product_price }</td>
							<td>${pdt.product_description }</td>
							<td>${pdt.product_regdate }</td>
							<td>${pdt.product_category }</td>
							<td>${pdt.product_stock}</td>
							<td><img src="<c:url value='/'/>Uploads/${pdt.photo[0] }" style="width: 245px; height: 170px; border-radius: 3px"></td>
							<td><button class="btn btn-success btn-sm"
							onclick="modifypdt(${pdt.product_idx});">수정</button></td>
							<td><button class="btn btn-danger btn-sm"
							onclick="deletepdt(${pdt.product_idx});">삭제</button></td>
						</tr>
					</c:forEach>
				</table>
				<button type="button" class="btn btn btn-info btn-sm"
				onclick="location.href='<c:url value='/'/>Admin/AdminShop/productRegi';">상품등록</button>
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
