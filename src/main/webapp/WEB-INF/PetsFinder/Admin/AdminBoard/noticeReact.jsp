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
	<style>
	*{font-family: BM JUA_TTF;}
	</style>
</head>
<body class="sb-nav-fixed">
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
<div id="layoutSidenav_nav">
		<jsp:include page="../common/leftHeader.jsp"></jsp:include>
</div>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div class="card-body">
				<div class="container" style="display: flex; justify-content: center;">
		      <iframe src="<c:url value='/'/>petsfinder_react_build/index.html" name="noticeReact" scrolling="auto" frameborder="1" width="2000" height="1200">
		      </iframe>
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
