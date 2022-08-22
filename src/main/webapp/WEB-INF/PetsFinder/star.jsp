<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
*{font-family: 'BM JUA_TTF'}
#starFrm fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#starFrm fieldset legend{
    text-align: right;
}
#starFrm input[type=radio]{
    display: none;
}
#starFrm label{
    font-size: 2em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
    cursor: pointer;
}
#starFrm label:hover{
    text-shadow: 0 0 0 #75c9ba;
}
#starFrm label:hover ~ label{
    text-shadow: 0 0 0 #75c9ba;
}
#starFrm input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #75c9ba;
}
/* #content {
    width: 50%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #75c9ba;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
    outline: none;
} */
button {
	float:right;
	margin-right: 50%;
	width:60px; 
	height:30px;
	border:none; 
	background-color: #75c9ba; 
	color:white;
	border-radius: 10px;
	cursor:pointer;
}
button:hover{
	background-color: white; 
	color: #75c9ba;
	border: 2px solid #75c9ba;
}
</style>
</head>
<body>
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
<div style="display:flex; justify-content: center;">
	<div style="display: flex; flex-direction: column; border-top: 2px solid #75c9ba; padding: 38px 0px; margin-top: 100px; width: 800px;">
	<div style="padding-left: 15px;">
		<span class="text-bold" style="color:gray">별점을 선택해주세요</span>
	</div>
 	<form class="mb-3" action="./starReview" name="starFrm" id="starFrm" method="post">
	 	<input type="hidden" name="sit_idx" value="${sit_idx }" />
	 	<input type="hidden" name="member_idx" value="${member_idx }" />
	 	<input type="hidden" name="start" value="${ s }"/>
	 	<input type="hidden" name="m_name" value="${ n }"/>	
	 	<input type="hidden" name="end" value="${ e }"/>
	 	<input type="hidden" name="flag" value="${ flag }"/>	 	
	 	<input type="hidden" name="sbook_idx" value="${ sbook_idx }"/>
		<fieldset>
			<input type="radio"  value="5" name="sit_starpoint" id="rate1"><label
				for="rate1">★</label>
			<input type="radio"  value="4" name="sit_starpoint" id="rate2"><label
				for="rate2">★</label>
			<input type="radio"  value="3" name="sit_starpoint" id="rate3"><label
				for="rate3">★</label>
			<input type="radio"  value="2" name="sit_starpoint" id="rate4"><label
				for="rate4">★</label>
			<input type="radio"  value="1" name="sit_starpoint" id="rate5"><label
				for="rate5">★</label>
		</fieldset>
		<button type="submit">저장</button>
<!-- 		<div>
			<textarea class="col-auto form-control" id="content" name="content"
					  placeholder="후기를 입력해주세요"></textarea>
		</div>
		<input type="file" class="form-control file" name="ofile" /> -->
	</form>	
	</div>
</div>							
</body>
</html>