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
	function checkValidate(f){
		if(f.idx.value==""){
			alert("일련번호를 입력하세요");
			f.idx.focus();
			return false;
		}
		if(f.question.value==""){
			alert("질문을 입력하세요");
			f.question.focus();
			return false;
		}
		if(f.answer.value==""){
			alert("답변을 입력하세요");
			f.answer.focus();
			return false;
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
			<div style="margin-top: 50px;">
				<h1>FAQ 게시판 수정하기</h1>
			</div>
			<hr />
			<div class="card-body">
				<div class="container">

						<form name="writeFrm" method="post" action="../FaqEditAction.do"
							onsubmit="return checkValidate(this);">



						<table class="table table-bordered" width=800>
							<colgroup>
								<col width="25%" />
								<col width="*" />
							</colgroup>
							<tr>
								<td>일련번호</td>
								<td><input type="text" name="faq_idx" style="width: 90%;"
									value="${FaqView.faq_idx }" /></td>
							</tr>
							<tr>
								<td>제목</td>
								<td><input type="text" name="faq_question" style="width: 90%;"
									value="${FaqView.faq_question }" /></td>
							</tr>
							<tr>
								<td>답변</td>
								<td><textarea name="faq_answer"
										style="width: 90%; height: 200px;">${FaqView.faq_answer }</textarea>
								</td>
							</tr>


							<tr>
								<td colspan="2" align="center">
									<button type="submit">작성완료</button>
									<button type="reset" >RESET</button>
									<button type="button" class="btn btn-primary" style="background-color: blue"
									onclick="location.href='./FaqList.do';">
									리스트 바로 가기</button>
								</td>
							</tr>
						</table>
						</form>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
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









