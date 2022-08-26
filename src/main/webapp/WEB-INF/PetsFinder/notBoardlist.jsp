<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- UIkit JS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/54b3b8eebf.js"
	crossorigin="anonymous"></script>
<title>PetPlanet</title>
</head>
<body>
<style>
* {font-family: 'BM JUA_TTF';}
a {
	text-decoration: none;
}

p {
	margin: 0;
}
li.uk-parent {
	/* border-top: 1px solid #cccccc; */
	border-bottom: 1px solid #cccccc;
}

li.uk-parent a {
	padding: 12px 0 12px 20px;
	color: black;
}

ul.uk-nav-sub {
	background-color: #fcfcfc;
	border-top: 1px solid #CCCCCC
}

ul.uk-nav-sub a {
	padding: 10px 0 10px 0;
}

ul.uk-nav-sub li {
	list-style: none;
}

ul.uk-nav-sub li::marker {
	color: gray;
}

.uk-nav-default .uk-nav-sub a {
	color: black;
}

tr {
	text-align: center;
}

.mybox {
	padding: 10;
	background-color: #f4f5f9;
	height: 150px;
	width: 660px;
}

.side_menu {
	height: 65.5px;
	font-size: 17px;
	width: 100%
}

pre {
	white-space: pre-wrap;
	word-break: break-all;
	over-flow: auto;
	border: none;
	background: none;
}

#like {
	border: 0;
	background: none;
}

#hate {
	border: 0;
	background: none;
}

img {
	max-width: none;
}

.select {
	appearance: none;
	width: 100px;
	height: 35px;
	background: url('../images/arrow_down_gray.png') calc(100% - 5px) center
		no-repeat;
	background-size: 20px;
	padding: 5px 30px 5px 10px;
	border-radius: 4px;
	outline: 0 none;
}

input:-internal-autofill-selected {
	background: none;
}
</style>
	

	<jsp:include page="./common/Header.jsp" />
	<div
		style="padding-top: 100px; display: flex; justify-content: center;">
		<div
			style="display: flex; justify-content: center; align-items: center; width: 1024px;">
			<p id="customer" 
				style="display: flex; justify-content: center; height: 100%; padding-top: 20px;color: white;width: 250px; height: 70px; border-radius: 7px; margin-top: 90px; margin-right: 40px; border: 1px solid #CCCCCC; background-color:#75c9ba; font-size: 20px; ">
				공지사항
			</p>
		</div>
	</div>
	<div style="display: flex; justify-content: center; margin-left: -250px">
		<div id="Qna"
			style="margin-left: -100px; margin-top: 100px; display: flex;">
			<div class="uk-width-1-2@s uk-width-2-5@m"
				style="margin-left: 350px; border-top: 1px solid #cccccc; width: 1024px;">
				<ul class="uk-nav-default uk-nav-parent-icon" uk-nav
					style="width: 1024px;">
					<c:forEach items="${lists }" var="row" varStatus="loop">
						<input type="hidden" name="notboard_idx"
							value="${row.notboard_idx }" />
						<li class="uk-parent">
							<a href="#" class="side_menu" >
								<p style="margin-right: 650px">
									${row.notboard_idx }. ${row.notboard_title }
								</p>
								<p>
								${row.notboard_regdate }
								</p>
							</a>
							<ul class="uk-nav-sub">
								<div style="padding-bottom: 20px; background-color: #fcfcfc;">
									<div style="display: flex; justify-content: space-between; align-items: center;">
							  			<div style="width: 900px">
											<pre id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px;">${row.notboard_content }</pre>
							  			</div>
							  		</div>
								</div>
							</ul>
						</li>

					</c:forEach>
				</ul>
				<!-- 페이지 번호 -->
				<div class="row mt-3">
					<ul class="pagination justify-content-center ">${ pagingImg }
					</ul>
				</div>
				
			</div>
		</div>
	</div>
	<div style="margin-top: 200px"></div>
	<jsp:include page="./common/foot.jsp" />
</body>
</html>
