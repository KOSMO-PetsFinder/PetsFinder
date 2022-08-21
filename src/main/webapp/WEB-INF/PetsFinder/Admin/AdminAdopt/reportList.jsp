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
		<form name="changeFrm" action="./AdminAdopt/modifyReportStat" method="GET">
	        <input type="hidden" name="dclrAbnd_idx" id="dclrAbnd_idx"/>
	        <input type="hidden" name="dclrAbnd_stts" id="dclrAbnd_stts"/>
	    </form>
	    <script>
	        function changeRepStat(idx) {
	        	console.log(idx)
	    	    $('#dclrAbnd_idx').val(idx);
	            var type = $('#dclrAbnd_stts_' + idx).val();
	            console.log(type)
	            $('#dclrAbnd_stts').val(type)
	            document.changeFrm.submit();
	        }
	    </script>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>유기동물 신고 접수 내역</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple" style="text-align: center;">
					<thead>
						<tr>
							<th>접수번호</th>
							<th>신고자</th>
							<th>주소</th>
							<th>신고위치확인</th>
							<th>제목</th>
							<th>내용</th>
							<th>사진</th>
							<th>신고접수일</th>
							<th>처리상태</th>
							<th>상태업데이트</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>접수번호</th>
							<th>신고자</th>
							<th>주소</th>
							<th>신고위치확인</th>
							<th>제목</th>
							<th>내용</th>
							<th>사진</th>
							<th>신고접수일</th>
							<th>처리상태</th>
							<th>상태업데이트</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${reportList }" var="row">
							<tr>
								<th>${row.dclrAbnd_idx }</th>
								<td>${row.member_idx }</td>
								<td>${row.dclrAbnd_loc }</td>
	                            <td><button type="button" class="btn btn-link btn-sm"><a href="<%request.getContextPath(); %>./reportView.do?dclrAbnd_idx=${row.dclrAbnd_idx }">바로가기
                                                            </a></button></td>
								<td>${row.dclrAbnd_title }</td>
								<td>${row.dclrAbnd_content }</td>
								<td>${row.dclrAbnd_photo }</td>
								<td>${row.dclrAbnd_regdate }</td>
								<td><select id="dclrAbnd_stts_${row.dclrAbnd_idx }" name="dclrAbnd_idx">
	                              <option ${row.dclrAbnd_stts == 'reg' ? 'selected' : "" } value="reg">접수</option>
	                              <option ${row.dclrAbnd_stts == 'PRG' ? 'selected' : "" } value="PRG">처리중</option>
	                              <option ${row.dclrAbnd_stts == 'CMP' ? 'selected' : "" } value="CMP">구조완료</option>
	                            </select></td>
	                            <td><button type="button" class="btn btn-info btn-sm" onclick="changeRepStat(${row.dclrAbnd_idx });">저장</button></td>
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
