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
<script>
function FaqEdit(faq_idx){
	if(confirm("수정하시겠습니까?")){
	location.href="<c:url value='/' />Admin/FaqEdit.do?faq_idx="+faq_idx;
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
		<h1>FAQ 게시판 상세보기</h1>
	</div>
		<hr />
				<div class="card-body">
					<div class="container">
					<table class="table table-bordered" width=120%>
						<colgroup>
							<col width="20%" />
							<col width="30%" />
							<col width="20%" />
							<col width="30%" />
						</colgroup>
						<tr>
							<th>일련번호</th>
							<td colspan="3">
							${FaqView.faq_idx }</td>
						</tr>
						<tr>
							<th>질문</th>
							<td colspan="3">
							${FaqView.faq_question }</td>			
						</tr>
						<tr>
							<th>답변</th>
							<td colspan="3">
							${FaqView.faq_answer }
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
							<button type="button" class="btn btn-primary" style="background-color: green"
								onclick="javascript:FaqEdit(${FaqView.faq_idx });" >
								수정하기</button>		
							<button type="button" class="btn btn-primary" style="background-color: blue"
								onclick="location.href='./FaqList.do';">
								리스트보기</button>
								</td>
							</tr>
						</table>
					</div>		
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









