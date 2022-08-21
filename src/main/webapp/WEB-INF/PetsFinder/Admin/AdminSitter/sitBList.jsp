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
   font-family:  'BM JUA_TTF', sans-serif;
}
</style>
<script type="text/javascript">
function deleteList(sbook_idx) {
	if(confirm("정말로 삭제하시겠습니까?")){
		location.href="<c:url value='/' />sitBDelete.do?sbook_idx="+sbook_idx;
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
				<h1>시터 예약 게시판 - 관리자</h1>
			</div>
			<hr />
				<div class="card-body">
						<table id="datatablesSimple">
								<thead>
										<tr>
											<th>예약 번호</th>
											<th>예약자 이름</th>
											<th>시터 일련번호</th>
											<th>시터 이름</th>
											<th>맡기는 반려동물 정보</th>
											<th>예약 합계 금액</th>
											<th>예약 시작일</th>
											<th>예약 마지막일</th>
											<th>예약상태</th>
											<th>삭제</th>
										</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty sitBList }">
											<tr>
												<td>등록된 질문이 없습니다.</td>
											</tr>
										</c:when>
									<c:otherwise>
										<c:forEach items="${sitBList }" var="list" varStatus="loop">
											<tr align="center">
													<td>
														<a href="<c:url value='/' />sitBView.do?sbook_idx=${list.sbook_idx}">
														${list.sbook_idx }
														</a>
													</td>	
													<td>${list.b_name }</td>		
													<td>${list.sit_idx }</td>
													<td>${list.s_name }</td>
													<td>${list.p_cellData }</td>
													<td>${list.totalPrice }</td>
													<td>${list.sbook_start }</td>
													<td>${list.sbook_end }</td>		
													<c:if test="${list.sbook_status eq 'stb' }"> 
														<td>
															<button type="button" class="btn btn-warning">예약대기</button>
														</td>
													</c:if>
													<c:if test="${list.sbook_status eq 'can' }"> 
														<td>
															<button type="button" class="btn btn-danger">예약취소</button>
														</td>
													</c:if>												
													<c:if test="${list.sbook_status eq 'fix' }"> 
														<td>
															<button type="button" class="btn btn-info">예약확정</button>
														</td>
													</c:if>		
													<td>
														<button type="button" class="btn btn-danger" style="background-color: red" 
													onclick="javascript:deleteList(${list.sbook_idx});">삭제</button>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
	</body>
</html>
