<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetsFinder</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<style>
*{
	font-family: 'BM JUA_TTF';
}
textarea {
	font-size: 1.2em; 
	width: 100%; 
	height: 300px; 
	border: solid 2px #75c9ba;
	border-radius: 5px;
	font-family: 'BM JUA_TTF';
	overflow: hidden; 
	background:none; 
	resize:none;
	min-height: 18rem;
    overflow-y: hidden;
    outline-color: #75c9ba;
    padding-left: 10px
}
.file{
	width:50%;
	border: solid 2px #75c9ba;
	margin-top:5px;
}
</style>
<c:if test="${ flag eq 'adp' }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 입양 후기 쓰기</p>
</div>
</c:if>
<c:if test="${ flag eq 'sit' }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 시터 후기 쓰기</p>
</div>
</c:if>
<c:if test="${ flag eq 'shp' }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 구매 후기 쓰기</p>
</div>
</c:if>
<div style="display:flex; justify-content: center;">
	<div style="display: flex; flex-direction: column; border-top: 2px solid #75c9ba; padding: 38px 0px; margin-top: 100px; width: 800px;">
	<script>
	function review_write() {
		document.reviewFrm.submit();
	}
	</script>
	<form name="reviewFrm" action="./reviewWrite" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="flag" value="${ flag }"/>
		<input type="hidden" name="sit_idx" value="${ sit_idx }"/>
		<input type="hidden" name="sbook_idx" value="${ sbook_idx }"/>
		<input type="hidden" name="review_idx" value="${ review_idx }"/>
		<input type="hidden" name="abani_idx" value="${ abani_idx }" />
		<input type="hidden" name="payment_idx" value="${payment_idx }" />
		<input type="hidden" name="product_idx" value="${product_idx }" />
		<c:if test="${ flag eq 'sit' }">
		<div style="display: flex; flex-direction: row; align-items: center; border-bottom: 1px solid #cccccc;">
			<div style="margin-left: 18px;">
				<p style="font-size: 20px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
					이용한 시터 : ${ n }
				</p>
				<p style="font-size: 15px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
					예약 기간 : ${ s } ~ ${ e }
				</p>
			</div>
		</div>
		</c:if>
		<c:if test="${ flag eq 'shp' }">
		<div style="display: flex; flex-direction: row; align-items: center; border-bottom: 1px solid #cccccc;">
			<div style="margin-left: 18px;">
				<p style="font-size: 20px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
					상품명 : ${ product_name } 
				</p>
				<p style="font-size: 15px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
					구매 날짜 : ${ pay_date }
				</p>
			</div>
		</div>
		</c:if>
		<div style="display: flex; flex-direction: row; margin-bottom: 50px; margin-top: 20px">
			<textarea name="review_content" placeholder="후기를 입력해주세요"></textarea>
		</div>
		<input type="file" class="form-control file" name="ofile" />
		<div style="display: flex; justify-content: flex-end;">
			<a style="padding-right: 10px; background: none; border: none; cursor: pointer; color: #75c9ba" onclick="review_write();">작성하기</a>
		</div>
	</form>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>