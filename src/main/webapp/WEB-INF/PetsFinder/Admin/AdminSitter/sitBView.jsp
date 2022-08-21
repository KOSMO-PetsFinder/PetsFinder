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
   font-family:  'BM JUA_TTF', sans-serif;
}
</style>
<script type="text/javascript">
function sitBEdit(sbook_idx) {
	if(confirm("시터 예약정보를 수정하시겠습니까?")){
		location.href="<c:url value='/' />sitBEdit.do?sbook_idx="+sbook_idx;
	}
}
</script>
<body>
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
	<jsp:include page="../common/leftHeader.jsp"></jsp:include>
	</div>
	<div id="layoutSidenav_content" style="text-align: center;">
		<div class="container">
			<h2 style="margin-top: 40px;">시터예약 상세보기 - 관리자</h2>
			<%-- <input type="hidden" name="searchColumn" value=${viewRow.pagingImg } />  --%>
			<table class="table table-boardered" width=90% style="text-align: left; margin-top: 50px">
				<tr>
					<th>예약 번호</th>
					<td>${sitBView.sbook_idx }</td>
					<th>시터 일련번호</th>
					<td>${sitBView.sit_idx }</td>
								
				</tr>
				<tr>
					<th>예약 시작일</th>
					<td>${sitBView.sbook_start }</td>				
					<th>예약 마지막일</th>
					<td>${sitBView.sbook_end }</td>	
				</tr>
				<tr>
					<!-- 시터의 이름과 예약자의 이름... 근데 이름 정보를 또 관리자에서 데이터로 빼올려면 DB에 저장된게 있어야함... -->
					<th>시터 이름</th>
					<td>${sitBView.s_name }</td>				
					<th>예약자 이름</th>
					<td>${sitBView.b_name}</td>	
				</tr>
				<tr>
					<th>맡기는 반려동물 정보</th>
					<td>${sitBView.p_cellData }</td>				
					<th>예약 합계 금액</th>
					<td>${sitBView.totalPrice}</td>	
				</tr>
				<tr>
					<td colspan="10" align="center">	
					<button type="button" onclick="javascript:sitBEdit(${sitBView.sbook_idx});">수정하기</button>
					<button type="button" 
		            onclick="location.href='<c:url value='/' />Admin/sitBList.do';">리스트보기</button>
					</td>
				</tr>
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