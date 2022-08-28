<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetsFinder</title>
<!-- UIkit JS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script>
<style>
p {
	margin-top: 0;
}
/* FAQ */
li.uk-parent {
	border-bottom: 1px solid #cccccc;
	margin: 0;
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
}

input {
	font-family: 'BM JUA_TTF';
}

textarea {
	font-size: 1.2em;
	width: 100%;
	height: 300px;
	border: 0;
	font-family: 'BM JUA_TTF';
	overflow: hidden;
	resize: none;
	min-height: 18rem;
	overflow-y: hidden;
}
</style>
<script>
	/* textarea 높이 자동조절 */
	function resize(obj) {
		obj.style.height = '1px';
		obj.style.height = (12 + obj.scrollHeight) + 'px';
	}

	function checkForm(fm) {
		if (!fm.title.value) {
			alert("제목을 입력하세요.");
			fm.title.focus();
			return false;
		}
		if (!fm.content.value) {
			alert("내용을 입력하세요.");
			fm.content.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="./common/Header.jsp" />
	<!-- Q&A -->
	<!-- 파일 입력시... 사용예정... enctype="multipart/form-data" -->
	<form action="./QNAaction" method="post" enctype="multipart/form-data"
		onsubmit="return checkForm(this);">
		<input type="hidden" name="qna_stt" value="Inc" /> <input
			type="hidden" name="member_idx" value="${sessionScope.idx }" />
		<div id="Q&A" style="display: flex; justify-content: center;">
			<div
				style="margin-top: 200px; border-top: 1px solid #cccccc; width: 1024px;">
				<div style="display: flex; border-bottom: 1px solid #cccccc;">
					<input id="title" name="qna_title" type="text"
						placeholder="제목을 입력하세요."
						style="font-size: 1.2em; width: 1000px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none; font-family: 'BM JUA_TTF';" />
					<div class="form-check form-switch" style="margin-right:20px;">
						<input class="form-check-input" type="checkbox" id="input_check1"
							name="qna_OPENSTATUS" value="pri"> 
						<label class="form-check-label" for="input_check1" style="width:40px;">비공개</label>
					</div>
				</div>
				<div
					style="border-bottom: 1px solid #cccccc; padding-bottom: 20px; background-color: #fcfcfc;">
					<textarea id="content" name="qna_content" placeholder="내용을 입력하세요."
						style="outline: none; margin-top: 20px; padding: 0 12px"
						onkeydown="resize(this)"></textarea>
					<div
						style="display: flex; justify-content: space-between; padding: 0 15px">
					</div>
				</div>
				<div
					style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
					<input type="submit"
						style="text-align: center; color: #81A3F0; font-weight: bold; width: 120px; height: 50px; border: 1px solid #81A3F0; border-radius: 25px; background-color: white; font-size: 18px; cursor: pointer"
						value="작성하기" />
				</div>
			</div>
		</div>
	</form>

	<jsp:include page="./common/foot.jsp" />
</body>
</html>