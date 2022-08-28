<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 유기동물 등록 -->
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<meta charset="utf-8" />
<title>Pets Finder</title>
<style>
* {
	font-family:'BM JUA_TTF';
	text-align: center;
}

p {
	font-size: 19px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<!-- 
유기동물 발생장소 
유기동물 접수일 date 
유기동물 중성화 여부(0/1) 
유기동물 상태 입양/보호(adopt,prtct) 
유기동물 사진 
유기동물 나이 
유기동물 예방접종 유무(0/1) 
유기동물 특징 
-->

<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<noscript>
			<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
				height="0" width="0" style="display: none; visibility: hidden"></iframe>
		</noscript>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1 style="color: #000000">유기동물 등록</h1>
			</div>
			<p style="text-align: center;" align="center"><b><span style="color: rgb(255, 0, 0);">※아래 모든 사항을 기재해주세요.</span></b></p>
			<!-- <p style="font-size: 27px; font-weight: 500; color: #555555">1.기본 정보</p> -->
			<form id="abandonedAnimalFrm" name="abandonedAnimalFrm"	action="./animalRegistration.do" method="POST" enctype="multipart/form-data">
				<div style="width: 1000px; margin: 0px auto">
					<div style="background-color: white; border: 1px solid #ebebeb; border-radius: 12px; padding: 80px; padding-bottom: 15px; margin-top: 46px;">
						<div style="display: flex; align-items: center">
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; ">
								<p style="font-weight: 600; color: #555555">
									종 <span style="color: #71a2ff">*</span>
								</p>
								<div style="margin-top: 15px">
									<select name="abani_species" id="abani_species_${animalRegistration.abani_idx }">
										<option value="dog">강아지</option>
	                              		<option value="cat">고양이</option>
									</select>
								</div>
							</div>
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; ">
								<p style="font-weight: 600; color: #555555">
									성별 <span style="color: #71a2ff">*</span>
								</p>
								<div style="margin-top: 15px">
									<select name="abani_gender" id="abani_gender_${animalRegistration.abani_idx }">
										<option value="F">암컷</option>
	                              		<option value="M">수컷</option>
									</select>
								</div>
							</div>
						</div>
						<br/>
						<div style="display: flex; align-items: center; margin-top: 50px">
							<div style="display: flex; justify-content : center; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px;">
								<p style="font-weight: 600; color: #555555">
								나이<span style="color: #71a2ff">*</span></p>
								<div style="display: flex; margin-top: 15px; item-align: center">
									<input type="text"  id="abani_age" name="abani_age"
										style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
								</div>
								<p>
									<span id="abani_age_check" style="color: skyblue"></span>
								</p>
							</div>
							<div style="display: flex; justify-content : center; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px;">
								<p style="font-weight: 600; color: #555555">
								품종<span style="color: #71a2ff">*</span></p>
								<div style="display: flex; margin-top: 15px; item-align: center">
									<input type="text" id="abani_kind" name="abani_kind"
										style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
								</div>
								<p>
									<span id="abani_kind_check" style="color: skyblue"></span>
								</p>
							</div>
						</div>
						<!-- 주소 api -->
					    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					    <script>
			    	  	$(function() {
					        $("#abani_loc").click(() => {
				          		new daum.Postcode({
				              		oncomplete: function(data) {
					                	$('#abani_loc').val(data.address);
				                		$('#abani_loc').attr({readOnly: 'true'})
				              		}
				          		}).open();
					        });
				      	})
					    </script>
						<div style="display: flex; align-items: center; margin-top: 50px">
							<div style="display: flex; justify-content : center; flex-direction: column; flex-grow: 1; flex-basis: 0">
								<p style="font-weight: 600; color: #555555">
								발생 장소<span style="color: #71a2ff">*</span></p>
								<div style="display: flex; margin-top: 15px; item-align: center">
									<input type="text" id="abani_loc" name="abani_loc"
										value="" placeholder="예) 서울시 강남구 논현동"
										style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
								</div>
								<p>
									<span id="abani_loc_check" style="color: skyblue"></span>
								</p>
							</div>
						</div>
						<div style="display: flex; align-items: center; margin-top: 50px">
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; ">
								<p style="font-weight: 600; color: #555555">
									중성화 여부<span style="color: #71a2ff">*</span>
								</p>
								<div style="margin-top: 15px">
									<select name="abani_neut" id="abani_neut_${animalRegistration.abani_idx }">
										<option value="1">중성화 O</option>
	                              		<option value="0">중성화 X</option>
									</select>
								</div>
							</div>
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; ">
								<p style="font-weight: 600; color: #555555">
									예방접종 여부 <span style="color: #71a2ff">*</span>
								</p>
								<div style="margin-top: 15px">
									<select name="abani_vaccin" id="abani_vaccin_${animalRegistration.abani_idx }">
										<option value="1">예방접종 O</option>
	                              		<option value="0">예방접종 X</option>
									</select>
								</div>
							</div>
						</div>
						<div style="display: flex; align-items: center">
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
								<p style="font-size: 17px; font-weight: 600; color: #555555">
									사진</p>
								<div style="margin-top: 15px">
						            <input type="text" placeholder="Select file" style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" disabled>
									<input name="ofile" type="file" multiple style="width: 40%; align-items: right">
						        </div>
							</div>
						</div>

						<div style="display: flex; align-items: center; margin-top: 54px;">
							<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0;">
								<p style="font-weight: 600; color: #555555">
									특징 <span style="color: #71a2ff">*</span>
								</p>
								<div style="margin-top: 15px">
									<textarea class="form-control" name="abani_char"
										id="abani_char"
										style="width: 100%; height: 230px; border: 1px solid #ebebeb; border-radius: 5px; padding: 10px 20px 0 20px;"></textarea>
								</div>
								<p>
									<span id="abani_char_check" style="color: skyblue"></span>
								</p>
							</div>
						</div>
						<div
							style="margin-top: 80px; display: flex; align-items: center; justify-content: center;">
							<div
								style="width: 250px; height: 60px; background-color: #264a8f; border-radius: 5px; display: flex; justify-content: center; cursor: pointer;">
								<script type="text/javascript">
									function submitForm(fm) {
										var char_check = document.getElementById('abani_char_check')
										var loc_check = document.getElementById('abani_loc_check')
										var a_char = document.getElementById('abani_char')						
										var a_loc = document.getElementById('abani_loc')						
										if(!a_char.value) {
											char_check.style.color = 'red'
											char_check.innerHTML = "특징을 입력하세요!"
											loc_check.innerHTML = ""
											a_char.focus();
										  	return false;
										} else if (!a_loc.value) {
											loc_check.style.color = 'red'
											loc_check.innerHTML = "장소를 입력하세요!"
											char_check.innerHTML = ""
											a_loc.focus();
									 		return false;
										} else {
											document.abandonedAnimalFrm.submit();
										}
									}
								</script>
								<p
									style="font-size: 20px; padding-top: 16px; font-weight: 500; color: white;"
									onclick="submitForm(this.form);">
									작성 완료</p>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- footer -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>
