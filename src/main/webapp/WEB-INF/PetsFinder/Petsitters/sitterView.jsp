<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% int likeEx = 0; %>
<% boolean like1 = false; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Bootstrap CDN (이미지 케러셀) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="../sitterView/_app.js.548dbefb.chunk.css" />
<link rel="stylesheet" href="../sitterView/styles.7298462c.chunk.css" />
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<!-- alert 창 꾸미기 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script type="text/javascript">
    function deleteCommSit(idx) {
    	Swal.fire({
    		title: '댓글 삭제 하시겠습니까?',
            text: "삭제 후 복구가 불가능합니다.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#75c9ba',
            cancelButtonColor: '#d33',
            confirmButtonText: '승인',
            cancelButtonText: '취소'
        }).then((result) => {
        	if (result.isConfirmed) {
                Swal.fire(
                    '댓글이 삭제되었습니다.',
                ).then(() => {
			        var sit_idx = "${sitterView.sit_idx}";
			        location.href = "./deleteCommSit?commIdx="+idx+"&sit_idx="+sit_idx;
                })
            }
        })
    }
    </script>
	<c:forEach items="${stReview }" var="sr">
	<!-- ajax시작 -->
    <script type="text/javascript">
    var today = new Date();

    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);
    var hours = ('0' + today.getHours()).slice(-2); 
    var minutes = ('0' + today.getMinutes()).slice(-2);
    var seconds = ('0' + today.getSeconds()).slice(-2); 

    var timeString = hours + ':' + minutes  + ':' + seconds;

    var dateString = year + '-' + month  + '-' + day;

    console.log(dateString);
    function commentInsert${sr.review_idx}(){
    	var reviewcomm_content = $("#reviewcomm_content${sr.review_idx }").val();
    	var member_idx = "${sessionScope.idx}";
    	var review_idx = "${sr.review_idx}"
    	var member_namec = "${sessionScope.name}";
    	var member_photo = "${sessionScope.photo}";
		var reviewcomm_regdate = dateString + " " + timeString;
    	var formData = $("#comm${sr.review_idx}").serialize();
		$.ajax({
			url : "./commentInsert",
			type : "GET",
			data : {
				"reviewcomm_content" : reviewcomm_content,
				"member_idx" : member_idx,
				"review_idx" : review_idx,
				"reviewcomm_regdate" : reviewcomm_regdate,
			},
			dataType : 'json',
			success : function (res) {
				console.log("성공");
				var content=""; 
				content += "<div style='display: flex; flex-direction: row; justify-content: space-between; margin-top: 32px; '><img width='50' height='50'";
				if ((member_photo + "1") != "1") {
					content += "src='<c:url value='/' />Uploads/"+member_photo+"' style='object-fit: cover; border-radius: 50%;'>";
				} else {
					content += "src='<c:url value='/' />images/no_review.png' style='object-fit: cover; border-radius: 50%;'>";
				}
				content += "<div style='background-color: rgb(250, 250, 252); width: 515px; padding: 20px 24px;'>";
				content	+= "<div style='display: flex; flex-direction: row; justify-content: space-between;'>";
 				content += "<div style='display: flex; flex-direction: row; align-items: center'>";
				content += "<p style='font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);'>" + member_namec + "</p>";
				content += "<p style='font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;'>" + reviewcomm_regdate + "</p>";
 				content += "</div>";
				content += "<div>";
				content += "<button type='button' style='border: none; background: none; color: red; ' onclick='deleteCommSit(" + res.reviewcomm_idx +");'>X</button>";
				content	+= "</div></div>";
				content	+= "<p style='font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;'>"+reviewcomm_content+"</p>";
            	content	+= "</div></div>";
				$(content).appendTo("#com${sr.review_idx}");
				
				//내용 삭제..
				document.getElementById("reviewcomm_content${sr.review_idx }").value='';
				//이게 none으로 되고
				var a = ${sr.review_idx};
				var id = "Comment" + a;
				var com = document.getElementById(id)
				com.style.display = 'none'
				//댓글보기 나오게 
				a = ${sr.review_idx};
				id = "com" + a;
				com = document.getElementById(id)
				com.style.display = 'flex'
				//쓴 댓글로 이동
				var location = document.querySelector("#scroll${sr.review_idx}").offsetTop;
				window.scrollTo({top:location, behavior:'smooth'});
			}, 
			
			error:function(request, status, error) {
				console.log("실패");
				
	        },
		});
	};
	</script>
	</c:forEach>
	
</head>
<body>
  	<jsp:include page="../common/Header.jsp" />
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
			height="0" width="0" style="display: none; visibility: hidden;"></iframe>
	</noscript>
	<div id="__next">
		<div>
			<div>
				<div id="detail-page-container">
					<div class="desktop hidden-s">
						<div>
							<div class="wrapper">
								<div>
								<input type="hidden" value="${ member_idx }"/>
									<div
										style="z-index: 1; width: 100px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 109px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<img width="22" height="22"
											src="<c:url value='/'/>sitterView/icon_share.png"
											style="margin-right: 2px;">
										<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">공유하기</p>
									</div>
									<!-- 이미지 -->
									<script>
									function photo() {
										$('#photo0').addClass('active')
										$('#p0').addClass('active')
									}
									$(function() {
										photo();
									})
									</script>
									<div style="z-index: 0; display: flex; flex-direction: row; width: 100%; height: 580px; margin-top: 85px; position: relative;" id="Sitter_Photo" class="carousel slide" data-bs-ride="carousel">
											<div class="carousel-indicators">
												<c:forEach items="${ sit_photo }" var="p" varStatus="loop">
												<button id="p${ loop.count - 1 }" type="button" data-bs-target="#Sitter_Photo" data-bs-slide-to="${ loop.count - 1 }" class=""></button>
												</c:forEach>
											</div>
											<div style="width: 100%; height: 580px;" class="carousel-inner">
												<c:forEach items="${ sit_photo }" var="photo" varStatus="loop">
												<div id="photo${ loop.count - 1 }" class="carousel-item">
													<img alt="시터 사진" width="1500" height="580"
														class="d-block"
														src="<c:url value='/'/>Uploads/${ photo.sitphoto_photo }"
														style="object-fit: contain; width: 100%; user-select: none; cursor: pointer;">
												</div>
												</c:forEach>
											</div>
											<button class="carousel-control-prev" type="button" data-bs-target="#Sitter_Photo" data-bs-slide="prev">
											    <span class="carousel-control-prev-icon"></span>
										  	</button>
										  	<button class="carousel-control-next" type="button" data-bs-target="#Sitter_Photo" data-bs-slide="next">
											    <span class="carousel-control-next-icon"></span>
										  	</button>
									</div>
									<!-- 이미지 끝 -->
									<div
										style="margin-top: 73px; margin-left: auto; margin-right: auto; width: 1027px; display: flex; flex-direction: row; justify-content: space-between;">
										<!-- 왼쪽 시작 -->
										<div style="width: 580px;">
											<div style="display: flex; flex-direction: row;">
												<div
													style="overflow: hidden; width: 90px; height: 90px; border: none; border-radius: 12px; margin-top: 5px;">
													<img width="90" height="90" alt="경북 영주시 휴천동 펫시터"
														src="../Uploads/main_logo2.png"
														style="object-fit: cover; display: inline-block;">
												</div>
												<div style="margin-left: 32px;">
													<!-- 연습 -->
														<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; 
														letter-spacing: -0.2px;"></p>
													
													<!-- sitterDTO를 통해서 주소값을 넘김 하지만 같은 idx으로 member의 이름값을 넘길려면 회원가입시 sitter or normal 를 선택
													해서  -->
													<h1
														style="font-size: 15px; color: rgb(76, 80, 86); line-height: 22px; letter-spacing: -0.2px; font-weight: bold;">${sitterView.sit_addr } 펫시터 / ${sitterView.member_name } 님</h1>
													<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; letter-spacing: -0.2px;">${sitterView.sit_title }</p>
													<!-- 시터 신청시 체크박스로 선택한 것들 반복문으로 띄우기 -->
													<!-- 시터태그 반복문 sitterTag.typtag_expln-->
													<div style="display: flex; flex-flow: row wrap; margin-top: 12px; width: 458px;">
														<c:forEach items="${sitterTag}" var="sitterTag">
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${sitterTag.typTag_expln }</p>
														</c:forEach>
													</div>
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 85px; margin-top: 50px; border-radius: 5px; background-color: rgb(250, 250, 251);">
												<div
													style="display: flex; flex-direction: row; align-items: center;">
													<img width="26" height="27"
														src="<c:url value='/'/>sitterView/verification.png">
													<p
														style="font-weight: 600; font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(57, 60, 71); margin-left: 5px;">신원
														및 환경 검증 완료</p>
												</div>
												<p
													style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(85, 85, 85); margin-top: 5px;">5단계
													신원 검증 및 돌봄 환경의 안전성 검증이 완료된 펫시터입니다</p>
											</div>
											<div style="margin-top: 53px;">
												<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">${sitterView.member_name }
													펫시터님을 소개합니다</h2>
												<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 32px;">
													${sitterView.sit_intro }
												</p>
											</div>
											<c:if test="${sitterView.pet_name ne null }" var="is_Pet">
											<div style="margin-top: 70px;">
												<p style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71); margin-bottom: 20px;">함께사는 반려동물</p>
												<!-- DB에서 회원 Pet 정보 가져오기 -->
												<div style="display: flex; flex-flow: row wrap; justify-content: space-between;">
													<div
														style="width: 280px; height: 100px; display: flex; align-items: center; flex-direction: row; justify-content: space-between; border-radius: 12px; border: 1px solid rgb(223, 227, 234); margin: 12px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center; margin-left: 24px;">
															<img width="59" height="59"
																src="<c:url value='/'/>sitterView/77ec4dcf38c540c38063985809d52ab5.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 24px;">
																<p
																	style="font-size: 15px; line-height: 22px; color: rgb(57, 60, 71);">${sitterView.pet_name }</p>
																<p
																	style="font-size: 13px; line-height: 18px; color: rgb(56, 60, 72); margin-top: 7px;">
																	성별 : ${sitterView.pet_gender } /
																	나이 : ${sitterView.pet_age }살
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											</c:if>
											<!-- 기본 사항 -->
											<div style="margin-top: 58px;">
												<h2
													style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71); margin-bottom: 20px;">자격증
													및 교육 수료</h2>
												<div
													style="display: flex; flex-direction: row; align-items: center; margin: 32px 0px;">
													<div
														style="width: 220px; height: 130px; border-radius: 5px; overflow: hidden; border: 1px solid rgb(235, 235, 235);">
														<div
															style="width: 220px; height: 130px; filter: blur(1.25px); background-image: url(&quot;https://d1cd60iwvuzqnn.cloudfront.net/resized/page/70e3eef518a04c84b2d8812f354be937.jpg&quot;); background-position: center center; background-repeat: no-repeat; background-size: cover;"></div>
													</div>
													<div
														style="display: flex; flex-direction: column; margin-left: 32px;">
														<p
															style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">펫시터
															전문가 교육</p>
														<p
															style="font-size: 14px; letter-spacing: -0.2px; line-height: 19px; color: rgb(56, 60, 72); margin-top: 7px;">(사)
															K.S.D 문화교육원</p>
														<p
															style="font-size: 12px; line-height: 17px; color: rgb(129, 137, 155); margin-top: 32px;">2022년
															5월 17일에 취득하였습니다</p>
													</div>
												</div>
											</div>
											<!-- 시터가 이용 가능 서비스 체크한 내용 DB에서 불러오기 -->
											<div style="margin-top: 85px; width: 600px;">
												<!-- avalService 으로 뽑기  -->
												<h2
													style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71); margin-bottom: 24px;">이용
													가능 서비스</h2>
												<!-- 이용가능 서비스 반복부분 -->
												<div style="display: flex; flex-flow: row wrap;">
													<!-- 실내놀이 -->
													<c:forEach items="${avalService }" var="avalService">
														<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<c:if test="${avalService.typSrv_service eq '실내 놀이' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image8.png"/>
														</c:if>
														<c:if test="${avalService.typSrv_service eq '매일 산책' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image1.png"/>
														</c:if>
														<c:if test="${avalService.typSrv_service eq '응급 처치' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image10.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '집앞 픽업' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image7.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '모발 관리' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image9.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '약물 복용' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image3.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '목욕 가능' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image2.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '장기 예약' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image4.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '노견 케어' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image6.png">
														</c:if>
														<c:if test="${avalService.typSrv_service eq '퍼피 케어' }">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image5.png">
														</c:if>
														<div style="margin-left: 13px;">
															<p style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">${avalService.typSrv_service }</p>
															<p style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">${avalService.typSrv_expln }</p>
														</div>
													</div>
													</c:forEach>
												</div>
											</div>
											
									
											<!-- 후기 시작 -->
													<div style="margin-top: 80px;">
														<div
															style="display: flex; flex-direction: row; align-items: center; margin-bottom: 38px;">
															<h2
																style="font-weight: 600; font-size: 22px; letter-spacing: -0.2px; line-height: 33px; color: rgb(57, 60, 71); margin-right: 20px; margin-bottom: 0px;">
																펫시터 후기 ${ view_reviewRecordCount }개</h2>

															<!-- 별점부분 -->
															<div
																style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 113px;">
																<c:forEach begin="1" end="${ star }">
																<img width="18" height="18"	src="<c:url value='/'/>sitterView/star_1.png" />
																</c:forEach>
															</div>
														</div>
														<!-- 안건드릴 사진부분 -->
														<div style="display: flex; flex-direction: row;">
															<div
																style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
																<img width="139" height="139"
																	src="<c:url value='/'/>sitterView/46bbf847d6434a20a033a18a0061879b.jpg"
																	style="object-fit: cover;">
															</div>
															<div
																style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
																<img width="139" height="139"
																	src="<c:url value='/'/>sitterView/8a2b86f4fc534f73a15a434baebd53fa.jpg"
																	style="object-fit: cover;">
															</div>
															<div
																style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
																<img width="139" height="139"
																	src="<c:url value='/'/>sitterView/01b9927be704472a8e4f75dbdfcf55ce.jpg"
																	style="object-fit: cover;">
															</div>
															<div
																style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
																<img width="139" height="139"
																	src="<c:url value='/'/>sitterView/6a7dffb15ac44f28a39289bf5357ad23.jpg"
																	style="object-fit: cover;">
																<div
																	style="display: flex; position: absolute; inset: 0px; width: 139px; height: 139px; align-items: center; justify-content: center; background-color: rgba(0, 0, 0, 0.59); border-radius: 3px;">
																	<p
																		style="font-size: 17px; letter-spacing: 0.5px; line-height: 25px; color: white;">
																		+8</p>
																</div>
															</div>
														</div>

											
														<!-- 댓글창 열기 -->
														<c:forEach items="${stReview }" var="sr">
														<script type="text/javascript">
														
															function com_view${sr.review_idx} () {
																var a = ${sr.review_idx};
																var id = "com" + a;
																var com = document.getElementById(id)
																if( com.style.display == 'none' ) {
																	com.style.display = 'flex'
																} else {
																	com.style.display = 'none'
																}
															}
															
															function commentView${sr.review_idx}() {
																var a = ${sr.review_idx};
																var id = "Comment" + a;
																var com = document.getElementById(id);
																if( com.style.display == 'none' ) {
																	com.style.display = 'flex'
																} else {
																	com.style.display = 'none'
																}
															}
														</script>
														</c:forEach>	

														<!-- 후기 찐 시작 -->
														<c:if test="${revState eq 'exe' }">
														<div style="margin-top: 38px;">
															<c:forEach items="${ stReview }" var="sr" varStatus="loop">
																<div style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
																	<div style="display: flex; flex-direction: row; align-items: center;">
																		<c:if test="${ not empty sr.member_photo }" var="res">
																			<img width="50" height="50" src="<c:url value='/'/>Uploads/${ sr.member_photo }" style="object-fit: cover; border-radius: 50%;">
																		</c:if>
																		<c:if test="${ not res }">
																			<img width="50" height="50"
																				src="<c:url value='/'/>sitterView/0f9b46e53cf74ae3916d25246eacec9c.jpg"
																				style="object-fit: cover; border-radius: 50%;">
																		</c:if>
																		<div style="margin-left: 18px;">
																			<p
																				style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
																				${sr.member_namer }</p>
																			<p
																				style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
																				${sr.review_regdate }
																			</p>
																		</div>
																		<!-- 후기 좋아요 처리부분 -->
																		<script type="text/javascript">
																			$(function () {
																				var a = ${ sr.review_idx }
																				$('p[id=like${sr.review_idx}]').click(function () {

																					$.ajax({

																						url: "./sitlike",

																						type: "GET",

																						data: {
																							review_idx: a,
																							member_idx: '${sessionScope.idx }',
																							like_check: $('#like_check').val(),
																							sit_idx: '${ petSitterDTO.sit_idx}',
																						},

																						success: function () {

																							if ($('#like_check${sr.review_idx}').val() == 0) {
																								console.log("plus");
																								$('#like_check${sr.review_idx}').val('1');
																								$('#like_img${sr.review_idx}').attr('src', "../images/heart_o.png");
																								var val01 = $('#like_num${sr.review_idx}').val();
																											}
																							else {
																								console.log("minus");
																								var val02 = parseInt(val01) + 1;
																								$('#like_num${sr.review_idx}').val(val02);

																				$('#like_check${sr.review_idx}').val('0');
																								$('#like_img${sr.review_idx}').attr('src', "../images/heart_x.png");
																								var val01 = $('#like_num${sr.review_idx}').val();
																								var val02 = parseInt(val01) - 1;
																								$('#like_num${sr.review_idx}').val(val02);
																							}
																						},

																						error: function () {
																							console.log("실패");
																						},
																					});
																				});
																			});
																		</script>
																		<!-- 후기 좋아요 -->
																		<div style="display: flex; flex-direction: row; margin-left:auto;  float: right;">
																			<c:if test="${not empty sessionScope.idx }" var="sessionIdx">
																				<div style="padding-right: 10px;">
																					<% likeEx=0; %>
																					<c:forEach items="${likeLists }" var="likerow">
																						<c:if test="${likerow.review_idx eq sr.review_idx }">
																							<% likeEx=1; %>
																						</c:if>
																					</c:forEach>
																					<input type="hidden" id="like_check${sr.review_idx}" name="like_check${sr.review_idx}" value="<%=likeEx %>"/>
																					<c:if test="<%=likeEx==1 %>">
																						<p style="cursor: pointer;" id="like${sr.review_idx }">
																						<img id="like_img${sr.review_idx}" src="../images/heart_o.png" alt="" width="20" height="20" />
																						</p>
																					</c:if>
																					<c:if test="<%=likeEx==0 %>">
																						<p style="cursor: pointer;" id="like${sr.review_idx }">
																						<img id="like_img${sr.review_idx}" src="../images/heart_x.png" alt="" width="20" height="20" />
																						</p>
																					</c:if>
																				</div>
																				
																				<div style=" width: 20px; margin-right: 10px;">
																					<c:if test="<%=likeEx==1 %>">
																						<p style="cursor: pointer;" id="like${sr.review_idx }">
																							<input type="text"
																								id="like_num${sr.review_idx}"
																								style="width: 40px; height: 20px; border: 0"
																								value="${sr.countlike }" />
																						</p>
																					</c:if>
																					<c:if test="<%=likeEx==0 %>">
																						<p style="cursor: pointer;" id="like${sr.review_idx }">
																							<input type="text"
																								id="like_num${sr.review_idx}"
																								style="width: 40px; height: 20px; border: 0"
																								value="${sr.countlike }" />
																						</p>
																					</c:if>
																				</div>
																			</c:if>
																			 <c:if test="${not sessionIdx }">
				                                                            <div style="padding-right: 10px;">
				                                                               <div style="padding-right: 10px;">
				                                                                  <img id="like_img" src="../images/heart_o.png" alt="" width="20" height="20" />
				                                                               </div>
				                                                            </div>
				                                                            <div style=" width: 20px; margin-right: 10px;">
				                                                               <p>
				                                                                  <input type="text" id="like_num" style="width: 40px; height: 20px; border: 0" value="${sr.countlike }"/>
				                                                               </p>
				                                                            </div>
				                                                         </c:if>
																		</div>
																		<!-- 후기 좋아요 끝 -->
																		
																	</div>	
																</div>	
															
																<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${ sr.review_content}</p>
																<div style="display: flex; flex-direction: row; margin-top: 33px;">
																	<c:if test="${ sr.review_photo ne null }">
																	<img width="90" height="90" src="<c:url value='/' />Uploads/${ sr.review_photo }" style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
																	</c:if>
																	<div style="display: flex; flex-direction: column-reverse; margin-left:auto;  float: right; vertical-align:bottom; padding-bottom: 10px;">
																			<p onclick="com_view${sr.review_idx}()" style="cursor: pointer; color:#75c9ba;" >
																				댓글보기
																				<img src="../images/comment.png" alt="" width="15" height="15" style="color:#75c9ba;" />
																			</p>
																		<c:if test="${sessionScope.idx ne null }" var="sessionIdx">
																			<p onclick="commentView${sr.review_idx}()" style="cursor: pointer; color:#75c9ba; " >
																				댓글쓰기
																				<img src="../images/comment.png" alt="" width="15" height="15" style="color:#75c9ba;" />
																			</p>
																		</c:if>
																	</div>
																</div>
																<!-- 좋아요 처리 및 후기 끝 -->
																
															
																<!-- 댓글폼 -->
																<div style="display: none; flex-direction: column; margin-top: 33px; align-items: center;" id="Comment${sr.review_idx }">
																	<form name="comm${sr.review_idx }" id="comm${sr.review_idx }">
																		<input type="hidden" id="review_idx${sr.review_idx }" name="review_idx" value="${sr.review_idx }">
																		<input type="hidden" id="member_idx${sr.review_idx }" name="member_idx" value="${sessionScope.idx }">
																		<input type="hidden" id="sit_idx${sr.review_idx }" name="sit_idx" value="${petSitterDTO.sit_idx }">
																		<div>
																			<textarea class="form-control" style="margin-top: 30px; width:500px; height:30px;" id="reviewcomm_content${sr.review_idx }" name="reviewcomm_content" style="width:1000px"></textarea>														
																		</div>
																		<div style="display: flex; flex-direction: column-reverse; margin-left:auto;  float: right; vertical-align:bottom; padding-bottom: 3px; padding-top: 10px; padding-right:25px; ">
																			<button class="btn btn-outline-default"  type="button" onclick="commentInsert${sr.review_idx }();" style="color:#75c9ba;">등록하기</button>
																		</div>
																	</form>
																</div>
															
															
																<!-- 시터 != 댓글쓴이 -->
																<div id="com${sr.review_idx }" name="com${sr.review_idx }" style="display: none; flex-direction: column; justify-content: right; margin-top: 32px;">
																	<c:forEach items="${reviewCommLists }" var="rerow" varStatus="index">
																		<c:if test="${rerow.review_idx eq sr.review_idx }" >
																		<!-- 댓글 부분 -->
																		<div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 32px;">
																			<c:if test="${ rerow.member_photo ne null}" var="mp">
																			<img width="50" height="50"	src="<c:url value='/' />Uploads/${ rerow.member_photo }" style="object-fit: cover; border-radius: 50%;">
																			</c:if>
																			<c:if test="${ not mp }">
																			<img width="50" height="50"	src="<c:url value='/' />images/no_review.png" style="object-fit: cover; border-radius: 50%;">
																			</c:if>
																			<div style="background-color: rgb(250, 250, 252); width: 515px; padding: 20px 24px;">
																				<div style="display: flex; flex-direction: row; justify-content: space-between;">
																					<div style="display: flex; flex-direction: row; align-items: center">
																						<p style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">${rerow.member_namec }</p>
																						<p style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">${rerow.reviewcomm_regdate }</p>
																					</div>
																					<c:if test="${rerow.member_idx eq sessionScope.idx }">
																					<div>
										                                             	<button type="button" style="border: none; background: none; color: red; " onclick="deleteCommSit(${rerow.reviewcomm_idx});">X</button>
																					</div>
										                                          	</c:if>
																				</div>
																				<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">${rerow.reviewcomm_content }</p>
																			</div>
																		</div>
																		</c:if>
																	</c:forEach>
																	<c:if test="${index.last  }">
																		<div id="scroll${row.review_idx }"></div>
																	</c:if>
																</div>
															</c:forEach>
														</div>
														</c:if>	
												</div>		
											</div>
															
													<!-- 
															<div style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
																<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">펫시터
																	후기 더보기</p>
															</div>
														 -->
										
										<!-- 왼쪽 끝 -->
										<!-- 오른쪽 시작 -->
										
										<!-- 예약 하기 -->
									  	<script>
									  		var noReservation_sD = [];
									  		var noReservation_eD = [];
									  	</script>
									    <c:if test="${ not empty re_list }">
									 		<c:forEach items="${ re_list }" var="rl" varStatus="loop">
									    <div>
									    	<input type="hidden" id="${ loop.count }" value="${ rl.sit_idx }"/>
									    	<input type="hidden" id="${ rl.sit_idx }start${ loop.count }" value="${ rl.sbook_start }"/>
									    	<input type="hidden" id="${ rl.sit_idx }end${ loop.count }" value="${ rl.sbook_end }"/>
									    </div>
									    <script>
									   	var sD_${ loop.count } = $('#${ rl.sit_idx }start${ loop.count }').val();
									   	var eD_${ loop.count } = $('#${ rl.sit_idx }end${ loop.count }').val();
									   	
									   	for (var d = new Date(sD_${ loop.count } + 1); d <= new Date(eD_${ loop.count }); d.setDate(d.getDate() + 1)) {
									   		console.log("d : " + d)
									        noReservation_sD.push($.datepicker.formatDate('yy-mm-dd', d));
									    }
								        console.log("noReservation_sD : " + noReservation_sD)
								        var b = new Date(sD_${ loop.count })
									   	for ( a = new Date(b.setDate(b.getDate() + 1)); a <= new Date(eD_${ loop.count }); a.setDate(a.getDate() + 1)) {
									   		console.log("a : " + a)
									        noReservation_eD.push($.datepicker.formatDate('yy-mm-dd', a));
									    }
								        console.log("noReservation_eD : " + noReservation_eD)
										function noReserve_sD(date) {
									    	
										   	var dateString = jQuery.datepicker.formatDate('yy-mm-dd', date);
									        return [noReservation_sD.indexOf(dateString) == -1];
									        
									    }
										function noReserve_eD(date) {
									    	
										   	var dateString = jQuery.datepicker.formatDate('yy-mm-dd', date);
									        return [noReservation_eD.indexOf(dateString) == -1];
									        
									    }
									 	</script>
									    	</c:forEach>
									    </c:if>
										<script>
										    $(function() {
											    $.datepicker.setDefaults({
											      dateFormat: 'yy-mm-dd',
											      prevText: '이전 달',
											      nextText: '다음 달',
											      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
											      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
											      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
											      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
											      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
											      showMonthAfterYear: true,
											      yearSuffix: '년',
											      maxDate: 'D + 90',
											      showButtonPanel: false,
											      closeText : "닫기",
											    });
											    $('#startDate').click(function() {
											    	$('#startDate').addClass('DateInput_input__focused DateInput_input__focused_2');
											    })
											    $('#endDate').click(function() {
											    	$('#endDate').addClass('DateInput_input__focused DateInput_input__focused_2');
											    })
											    
										        $('#startDate').datepicker({
										        	minDate: 'D',
										        	<c:if test="${ not empty re_list }">
										        	beforeShowDay: noReserve_sD,
										        	</c:if>
										        	onSelect : function(dateText){
										        		
										        		$('#startDate').removeClass('DateInput_input__focused DateInput_input__focused_2')
														$('#endDate').addClass('DateInput_input__focused DateInput_input__focused_2')

														// 시작 선택 날짜
														var selectDate = $.datepicker.formatDate('yy-mm-dd', new Date(dateText))
														
										        		/*
										        		예약 되어 있는 날짜가 저장되어 있는 배열
										        		console.log(noReservation) 
										        		*/
										        		/*
										        		예약 되어 있는 날짜가 저장되어 있는 배열과 시작 선택 날짜를 비교하여
										        		종료 날짜 선택 가능 마지막 날 정하는 부분
										        		*/
														for (var i = 0; i < noReservation_eD.length; i++) {
														    if (selectDate < noReservation_eD[i]) {
															    console.log(noReservation_eD[i])
															    $('#endDate').datepicker("option", "maxDate", noReservation_eD[i]);
															    break;
														    } else {
														    	console.log("없다!")
														    }
													  	}
														/* 종료 날짜 선택 가능 시작 날 정하는 부분 */
										        		$('#endDate').datepicker("option", "minDate", dateText);
														/* 시작 날짜 선택 시 종료 날짜 값 비우기 */
										        		$('#endDate').val('');
										        		var location = document.getElementById("startDate");
										        		var s_height = window.screen.height
										        		console.log(s_height / 2)
														window.scrollTo({top : s_height / 2, behavior:'smooth'});
										        		$('#endDate').datepicker('toggle');
										        		
										        		
										        	},
										        	onClose : function(dateText) {
										        		$('#sD').val(dateText);
										        		$('#startDate').removeClass('DateInput_input__focused DateInput_input__focused_2');
										        		
										        		
										        	}
										        });
										        
										        $('#endDate').datepicker({
										        	minDate: 'D',
										        	<c:if test="${ not empty re_list }">
										        	beforeShowDay: noReserve_eD,
										        	</c:if>
										        	onShow : function() {
										        		var location = document.getElementById("startDate").getBoundingClientRect().top;
										        		console.log(location)
														window.scrollTo({top : 500, behavior:'smooth'});
										        		$('#endDate').addClass('DateInput_input__focused DateInput_input__focused_2');
										        	},
										        	onSelect : function(dateText) {
										        		/* $('#startDate').datepicker("option", "maxDate", dateText); */
										        		$('#cal_img').datepicker("option", "maxDate", dateText);
										        		$('#eD').val(dateText);
										        		$('#endDate').removeClass('DateInput_input__focused DateInput_input__focused_2');
										        		if ($('#startDate').val() != null && $('#startDate').val() != "") {
											        		$('.ant-btn').removeAttr('disabled')
										        		}
										        		/* location.href="<c:url value='/' />petsfinder/petsitters/reserve?sD=" + $('#sD').val() + "&eD=" + $('#eD').val(); */
										        	},
										        	onClose : function() {
										        		$('#endDate').removeClass('DateInput_input__focused DateInput_input__focused_2');
										        	}
										        });
										        
										        $('#cal_img').datepicker({
										        	minDate : 'd',
										        	onSelect : function(dateText) {
										        		$('#startDate').datepicker("setDate", dateText);
										        	}
										        });
										
										    });
										</script>
										<div>
										<!-- 예약 form 시작 -->
										<script>
										
										$(document).ready(function (){
										   	  
											var IMP = window.IMP;
											var code = "imp70517070"; //가맹점 식별코드
											IMP.init(code);
											
											$("#reservation").click(function(e){
												var p_cell = document.getElementById('p_cell');
												document.getElementById("p_cellData").value = p_cell.innerText
												var p_cellData = document.getElementById("p_cellData").value;
												var sum = document.getElementById('sum');
												document.getElementById("totalPrice").value = sum.innerText;
												var totalPrice = document.getElementById("totalPrice").value;
												var start_date = $('#sD').val()
												var end_date = $('#eD').val()
												var member_name = $('#sit_name').val()
												var member_email = $('#sit_email').val()
												var sit_idx = ${ sitterView.sit_idx }
												console.log(start_date)
												console.log(end_date)
												console.log(p_cellData)
												console.log(totalPrice)
												console.log(member_name)
												console.log(member_email)
												console.log(sit_idx)
												var location = "";
												location += "./bookEmailSend?sitter_email=" + member_email + "&login_email=${ email }&sitter_name=" + member_name + "&sbook_start=" + start_date
								        	  	location +=	"&sbook_end=" + end_date + "&p_cellData=" + p_cellData + "&totalPrice=" + totalPrice + "&member_name=${ name }"
								        	  	console.log(location)
								        	  	var pop = window.open("about:blank", "reserve", "width=1,height=1");
												if(${ idx } != null) {
													//결제요청
													IMP.request_pay({
														//name과 amout만있어도 결제 진행가능
														// pg : 'tosspay',  //pg사 선택 (kakao, kakaopay 둘다 가능)
														pg : 'kakaopay',  //pg사 선택 (kakao, kakaopay 둘다 가능)
														pay_method: 'card',
														merchant_uid : 'merchant_' + new Date().getTime(),
														name : p_cellData, // 상품명(반려동물)
														amount : totalPrice, //가격 
														buyer_email : '${ email }', // 구매자 이메일
														buyer_name : '${ name }', // 구매자 이름
														buyer_tel : '${ phone }',  // 구매자 전화번호
														//결제완료후 이동할 페이지 kko나 kkopay는 생략 가능
														//m_redirect_url : 'https://localhost:8080/payments/complete'
													}, function(rsp){
														console.log(rsp);
														if(rsp.success){//결제 성공시
															var msg = '결제가 완료되었습니다';
															var result = {
															"p_cellData" : p_cellData,
															"totalPrice" : totalPrice,
													    	"sbook_start" : start_date,
													    	"sbook_end" : end_date,
													    	"member_name" : member_name,
													    	"member_email" : member_email,
													    	"sit_idx" : sit_idx,
													    	"member_idx" : ${ idx },
													    	"amount" : totalPrice,
													    	"productname" : p_cellData,
													    	"merchant_uid" : rsp.merchant_uid,
													    	"payStus" : 'pay',
															}
															console.log("결제성공 : " + msg);
															console.log("result : " + JSON.stringify(result,
													        		['p_cellData', 'totalPrice', 'sbook_start', 'sbook_end', 
												        			'member_name', 'member_email', 'sit_idx', 'member_idx',
												        			'merchant_uid', 'payStus', 'productname', 'amount',
													        		]))
															$.ajax({
																url : './bookEmailInfo.do', 
														        type :'POST',
														        data : JSON.stringify(result,
														        		['p_cellData', 'totalPrice', 'sbook_start', 'sbook_end', 
													        			'member_name', 'member_email', 'sit_idx', 'member_idx',
													        			'merchant_uid', 'payStus', 'productname', 'amount',
															    		]),
														        contentType:'application/json;charset=UTF-8',
														        dataType: 'json', //서버에서 보내줄 데이터 타입
														        success: function(res){
														        	if (res == 1) {
														        	  	console.log("결제 성공!!!")
														        	  	pop.location.href=location
														        	  	document.location.replace('../myPage')
														        	} else {
														        		console.log("결제 실패...");
														        	}
														        },
														        error:function(){
														            console.log("Insert ajax 통신 실패!!!");
														        }
															}) //ajax
														}
														else{//결제 실패시
															var msg = '결제에 실패했습니다';
															msg += '에러 : ' + rsp.error_msg
														}
														console.log(msg);
													});//pay
												} else {
													location.href="./Login";
												}
											}); //check1 클릭 이벤트 
										}); //doc.ready
										</script>
								        	<input type="hidden" id="sit" name="sit_idx" value="${ sitterView.sit_idx }"/>
								        	<!-- 예약 날짜 정보 -->
									        <input type="hidden" id="sD" name="sD"/>
									        <input type="hidden" id="eD" name="eD"/>
							        		<!-- 맡기는 반려동물 정보 -->
			                                <input type="hidden" id="p_cellData" name="p_cellData" />
			                                <!-- 이용요금 합계 -->
			                                <input type="hidden" id="totalPrice" name="totalPrice"/>
			                                <!-- 시터의 이름과 이메일 -->
									        <input id="sit_name" name="member_name" type="hidden" value="${ sitterView.member_name }"/>
							     			<input id="sit_email" name="member_email" type="hidden" value="${ sitterView.member_email }"/>
											
											<div
												style="width: 375px; border-radius: 8px; border: 1px solid rgb(223, 227, 234); box-shadow: rgba(0, 0, 0, 0.07) 1px 3px 7px; padding-left: 32px; padding-right: 32px; padding-bottom: 32px;">
												<p
													style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71); margin-top: 38px;">언제
													펫시터가 필요한가요?</p>
												<div style="display: flex; flex-grow: 1; margin-top: 24px;">
													<div class="DateRangePicker DateRangePicker_1">
														<div>
															<div
																class="DateRangePickerInput DateRangePickerInput_1 DateRangePickerInput__disabled DateRangePickerInput__disabled_2 DateRangePickerInput__withBorder DateRangePickerInput__withBorder_3">
																<div class="DateInput DateInput_1">
																	<input class="DateInput_input DateInput_input_1"
																		aria-label="체크인 날짜" type="text" id="startDate"
																		name="startDate" placeholder="체크인 날짜"
																		autocomplete="off"
																		aria-describedby="DateInput__screen-reader-message-startDate"
																		value="">
																</div>	
																<div
																	class="DateRangePickerInput_arrow DateRangePickerInput_arrow_1"
																	aria-hidden="true" role="presentation">
																	<img width="11" height="8"
																		src="<c:url value='/'/>sitterView/date_picker_right_arrow.png">
																</div>
																<div
																	class="DateInput DateInput_1 ">
																	<input
																		class="DateInput_input DateInput_input_1 "
																		aria-label="체크아웃 날짜" type="text" id="endDate"
																		name="endDate" placeholder="체크아웃 날짜"
																		autocomplete="off" 
																		aria-describedby="DateInput__screen-reader-message-endDate"
																		value="">
																</div>
															</div>
														</div>
													</div>
												</div>
												<script>
												$(function() {
													var btn = 0;
													/* 반려동물 선택 창 출력 */
													$('.ant-btn').click(function() {
														if (btn == 0) {
															$('.ant-btn').addClass('ant-dropdown-open');
															$('.ant-dropdown').attr({'style': 'display : inherit; left: 823px; top: 1127px; min-width: 311px;'})
															btn = 1;
															
														} else if (btn == 1) {
															$('.ant-btn').removeClass('ant-dropdown-open');
															$('.ant-dropdown').attr({'style': 'display : none'})
															btn = 0;
														}
													})
													$('#close').click(function() {
														$('.ant-dropdown').attr({'style': 'display : none'})
													})
												})
												</script>
												<p
													style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71); margin-top: 38px; margin-bottom: 18px;">맡기시는
													반려동물</p>
												<button disabled type="button"
													class="ant-btn ant-dropdown-trigger"
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 311px; height: 50px;">
													<p id="p_cell" style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(153, 153, 153);">반려동물 선택</p>
													<img width="13" height="7"
														src="../sitterView/arrow_down.png">
												</button>
												<div id="money" style="display: none">
												  <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 38px">
												    <p style="font-family: 'Noto Sans KR'; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72)">합계 금액</p>
												    <p id="sum" style="font-weight: 600; font-size: 12px; letter-spacing: 0.2px; line-height: 18px; color: rgb(56, 60, 72)"></p>
												  </div>
												  <div style="width: 310px; height: 1px; background-color: rgb(235, 235, 235); margin-top: 16px; margin-bottom: 19px"></div>
												  <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; height: 32px">
												    <div style="display: flex">
												      <p style="font-size: 13px; line-height: 19px; color: rgb(94, 99, 109)">1박 비용</p>
												      <span style="font-size: 13px; color: rgb(213, 53, 53)">(성수기 여부)</span
												      ><span id="type" style="font-size: 13px; margin-left: 4px">/ </span>
												    </div>
												    <p id="day" style="font-size: 13px; line-height: 19px; color: rgb(94, 99, 109)"></p>
												  </div>
												  <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 10px">
												    <p style="font-size: 13px; line-height: 19px; color: rgb(94, 99, 109)">부가세 (10%)</p>
												    <p id="tax" style="font-size: 13px; line-height: 19px; color: rgb(94, 99, 109)"></p>
												  </div>
												</div>
												<div
													style="display: flex; align-items: center; justify-content: center; width: 311px; height: 59px; border-radius: 3px; background-color: rgb(113, 162, 255); margin-top: 50px; user-select: none; cursor: pointer;">
													<p id="reservation" style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-weight: 600; font-size: 15px; letter-spacing: 0.2px; line-height: 22px; color: white;">예약 요청</p>
												</div>
											</div>
											<!-- 반려동물 선택 창 & 금액 계산 -->
											<script>
											
											$(function() {
												/* 예약 기간 호출 함수 */
												function ran(sd, ed) {
											    	var sD_date = new Date(sd)
													var eD_date = new Date(ed)
													var range = (eD_date - sD_date + 86400000) / 86400000;
									        		
											    	return range;
											    }
												/* 소형 요금, 세금, 합계 */
												var s_fee = ${ sitterView.s_fee }
												var s_tax = s_fee / 10
												var s_sum = parseInt(s_fee + s_tax)
												
												var m_fee = ${ sitterView.m_fee }
												var m_tax = m_fee / 10
												var m_sum = parseInt(m_fee + m_tax)
												
												var b_fee = ${ sitterView.b_fee }
												var b_tax = b_fee / 10
												var b_sum = parseInt(b_fee + b_tax)
												
												$('#s_minus').click(function() {
													if($('#small').text() != 0) {
														var s01 = $('#small').text()
														var s02 = parseInt(s01) - 1
														$('#small').text(s02)
														
														var r = ran($('#sD').val(), $('#eD').val())
														var day = parseInt($('#day').text().split('원')[0])
														
														if (s01 != 1) {
															console.log('sm1')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('소형 ' + s01, '소형 ' + s02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day - s_fee * r) 
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														} else {
															if ($('#p_cell').text().search('중형') != -1 || $('#p_cell').text().search('대형') != -1){
																console.log('sm2')
																var p01 = $('#p_cell').text()
																var p02 = p01.replace('소형 ' + s01 + ', ', '')
																$('#p_cell').text(p02)
																
																var day01 = parseInt(day - s_fee * r) 
																var tax01 = parseInt(day01 / 10)
																var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																
																$('#day').text(day01 + '원')
																$('#tax').text(tax01 + '원')
																$('#sum').text(sum01 + '원')
															}
														}
													}
													if($('#big').text() == 0 && $('#middle').text() == 0 && $('#small').text() == 0) {
														$('#p_cell').text('반려동물 선택')
														$('#money').attr({'style' : 'display: none'})
													}
												})
												$('#s_plus').click(function() {
													$('#money').attr({'style' : 'display: inherit'})
													var s01 = $('#small').text()
													var s02 = parseInt(s01) + 1
													$('#small').text(s02)
													
													var r = ran($('#sD').val(), $('#eD').val())
													var day = parseInt($('#day').text().split('원')[0])
													
													if($('#p_cell').text() == '반려동물 선택') {
														console.log('sp1')
														var p = '소형 ' + s02
														$('#p_cell').text(p)
														
														$('#day').text((s_fee * r) + '원')
														$('#tax').text((s_tax * r) + '원')
														$('#sum').text((s_sum * r).toLocaleString('ko-KR') + '원')
														
													} else if ($('#p_cell').text().search('소형') != -1 ) {
														console.log('sp2')
														var p01 = $('#p_cell').text()
														var p02 = p01.replace('소형 ' + s01, '소형 ' + s02)
														$('#p_cell').text(p02)
														
														var day01 = parseInt(day + s_fee * r)
														var tax01 = parseInt(day01 / 10)
														var sum01 = (day01 + tax01).toLocaleString('ko-KR')
														
														$('#day').text(day01 + '원')
														$('#tax').text(tax01 + '원')
														$('#sum').text(sum01 + '원')
													} else {
														console.log('sp3')
														var p01 = $('#p_cell').text()
														var p02 = '소형 ' + s02 + ', ' + p01
														$('#p_cell').text(p02)
														
														var day01 = parseInt(day + s_fee * r) 
														var tax01 = parseInt(day01 / 10)
														var sum01 = (day01 + tax01).toLocaleString('ko-KR')
														
														$('#day').text(day01 + '원')
														$('#tax').text(tax01 + '원')
														$('#sum').text(sum01 + '원')
													}
												})
												$('#m_minus').click(function() {
													if($('#middle').text() != 0) {
														var m01 = $('#middle').text()
														var m02 = parseInt(m01) - 1
														$('#middle').text(m02)
														
														var r = ran($('#sD').val(), $('#eD').val())
														var day = parseInt($('#day').text().split('원')[0])
														
														if (m01 != 1) {
															console.log('mm1')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('중형 ' + m01, '중형 ' +  m02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day - m_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														} else {
															if ($('#p_cell').text().search('대형') != -1){
																console.log('mm2')
																var p01 = $('#p_cell').text()
																var p02 = p01.replace('중형 ' + m01 + ', ', '')
																$('#p_cell').text(p02)
																
																var day01 = parseInt(day - m_fee * r)
																var tax01 = parseInt(day01 / 10)
																var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																
																$('#day').text(day01 + '원')
																$('#tax').text(tax01 + '원')
																$('#sum').text(sum01 + '원')
															} else if ($('#p_cell').text().search('대형') == -1 && $('#p_cell').text().search('소형') != -1) {
																console.log('mm3')
																var p01 = $('#p_cell').text()
																var p02 = p01.replace(', 중형 ' + m01, '')
																$('#p_cell').text(p02)
																
																var day01 = parseInt(day - m_fee * r)
																var tax01 = parseInt(day01 / 10)
																var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																
																$('#day').text(day01 + '원')
																$('#tax').text(tax01 + '원')
																$('#sum').text(sum01 + '원')
															}
														}
													}
													if($('#big').text() == 0 && $('#middle').text() == 0 && $('#small').text() == 0) {
														$('#p_cell').text('반려동물 선택')
														$('#money').attr({'style' : 'display: none'})
													}
												})
												$('#m_plus').click(function() {
													$('#money').attr({'style' : 'display: inherit'})
													var m01 = $('#middle').text()
													var m02 = parseInt(m01) + 1
													$('#middle').text(m02)
													
													var r = ran($('#sD').val(), $('#eD').val())
													var day = parseInt($('#day').text().split('원')[0])
													
													if($('#p_cell').text() == '반려동물 선택') {
														console.log('mp1')
														var p = '중형 ' + m02
														$('#p_cell').text(p)
														
														$('#day').text((m_fee * r) + '원')
														$('#tax').text((m_tax * r) + '원')
														$('#sum').text((m_sum * r).toLocaleString('ko-KR') + '원')
													} else {
														if ($('#p_cell').text().search('중형') != -1 ) {
															console.log('mp2')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('중형 ' + m01, '중형 ' +  m02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day + m_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														} else {
															if ($('#p_cell').text().search('소형') != -1 ) {
																if ($('#p_cell').text().search('대형') == -1) {
																	console.log('mp3')
																	var p01 = $('#p_cell').text()
																	var p02 = p01 + ', 중형 ' + m02
																	$('#p_cell').text(p02)
																	
																	var day01 = parseInt(day + m_fee * r)
																	var tax01 = parseInt(day01 / 10)
																	var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																	
																	$('#day').text(day01 + '원')
																	$('#tax').text(tax01 + '원')
																	$('#sum').text(sum01 + '원')
																} else {
																	console.log('mp4')
																	var p01 = $('#p_cell').text()
																	var p02 = p01.replace(', ', ', 중형 ' +  m02 + ', ')
																	$('#p_cell').text(p02)
																	
																	var day01 = parseInt(day + m_fee * r)
																	var tax01 = parseInt(day01 / 10)
																	var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																	
																	$('#day').text(day01 + '원')
																	$('#tax').text(tax01 + '원')
																	$('#sum').text(sum01 + '원')
																}
															} else {
																if ($('#p_cell').text().search('대형') != -1) {
																	console.log('mp5')
																	var p01 = $('#p_cell').text()
																	var p02 = '중형 ' + m02 + ', ' + p01
																	$('#p_cell').text(p02)
																	
																	var day01 = parseInt(day + m_fee * r)
																	var tax01 = parseInt(day01 / 10)
																	var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																	
																	$('#day').text(day01 + '원')
																	$('#tax').text(tax01 + '원')
																	$('#sum').text(sum01 + '원')
																}
															}
														}
													}
												})
												$('#b_minus').click(function() {
													if($('#big').text() != 0) {
														var b01 = $('#big').text()
														var b02 = parseInt(b01) - 1
														$('#big').text(b02)
														
														var r = ran($('#sD').val(), $('#eD').val())
														var day = parseInt($('#day').text().split('원')[0])
														
														if (b01 != 1) {
															console.log('bm1')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('대형 ' + b01, '대형 ' + b02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day - b_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														} else {
															if ($('#p_cell').text().search('소형') != -1 || $('#p_cell').text().search('중형') != -1){
																console.log('bm2')
																var p01 = $('#p_cell').text()
																var p02 = p01.replace(', 대형 ' + b01, '')
																$('#p_cell').text(p02)
																
																var day01 = parseInt(day - b_fee * r)
																var tax01 = parseInt(day01 / 10)
																var sum01 = (day01 + tax01).toLocaleString('ko-KR')
																
																$('#day').text(day01 + '원')
																$('#tax').text(tax01 + '원')
																$('#sum').text(sum01 + '원')
															}
														}
													}
													if($('#big').text() == 0 && $('#middle').text() == 0 && $('#small').text() == 0) {
														$('#p_cell').text('반려동물 선택')
														$('#money').attr({'style' : 'display: none'})
													}
												})
												$('#b_plus').click(function() {
													$('#money').attr({'style' : 'display: inherit'})
													var b01 = $('#big').text()
													var b02 = parseInt(b01) + 1
													$('#big').text(b02)
													
													var r = ran($('#sD').val(), $('#eD').val())
													var day = parseInt($('#day').text().split('원')[0])
													
													if($('#p_cell').text() == '반려동물 선택') {
														console.log('bp1')
														var p = '대형 ' + b02
														$('#p_cell').text(p)
														
														$('#day').text((b_fee * r) + '원')
														$('#tax').text((b_tax * r) + '원')
														$('#sum').text((b_sum * r).toLocaleString('ko-KR') + '원')
													} else {
														if ($('#p_cell').text().search('대형') != -1 ) {
															console.log('bp2')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('대형 ' + b01, '대형 ' + b02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day + b_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														} else {
															console.log('bp3')
															var p01 = $('#p_cell').text()
															var p02 = p01 + ', 대형 ' + b02
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day + b_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = (day01 + tax01).toLocaleString('ko-KR')
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														}
													}
												})
											})
											</script>
											<div style="position: absolute; top: -127px; left: 300px; width: 100%;">
											  <div>
											    <div class="ant-dropdown ant-dropdown-placement-bottomLeft" style="left: 823px; top: 1127px; min-width: 311px; display: none">
											      <ul class="ant-dropdown-menu ant-dropdown-menu-light ant-dropdown-menu-root ant-dropdown-menu-vertical" role="menu" tabindex="0">
											        <div style="padding: 32px 32px 24px">
											          <div style="display: flex; flex-direction: row; justify-content: space-between">
											            <div style="display: flex; flex-direction: column">
											              <p style="font-family: 'Noto Sans KR'; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72)">
											                소형견
											              </p>
											              <p style="font-size: 12px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 3px">7kg 미만</p>
											            </div>
											            <div style="display: flex; flex-direction: row; align-items: center">
											              <div
											              	id="s_minus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                "
											              >
											                <img width="8" src="../sitterView/select_pet_minus.png" />
											              </div>
											              <p
											              	id="small"
											                style="
											                  font-size: 13px;
											                  font-weight: 600;
											                  letter-spacing: -0.2px;
											                  line-height: 19px;
											                  color: rgb(94, 99, 109);
											                  margin-left: 20px;
											                  margin-right: 20px;
											                "
											              >0</p>
											              <div
											              	id="s_plus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                "
											              >
											                <img width="8" height="8" src="../sitterView/select_pet_plus.png" />
											              </div>
											            </div>
											          </div>
											          <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 24px">
											            <div style="display: flex; flex-direction: column">
											              <p style="font-family: 'Noto Sans KR'; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72)">
											                중형견
											              </p>
											              <p style="font-size: 12px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 3px">7 - 14.9kg</p>
											            </div>
											            <div style="display: flex; flex-direction: row; align-items: center">
											              <div
											              	id="m_minus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                  opacity: 1;
											                  pointer-events: all;
											                "
											              >
											                <img width="8" src="../sitterView/select_pet_minus.png" />
											              </div>
											              <p
											              	id="middle"
											                style="
											                  font-size: 13px;
											                  font-weight: 600;
											                  letter-spacing: -0.2px;
											                  line-height: 19px;
											                  color: rgb(94, 99, 109);
											                  margin-left: 20px;
											                  margin-right: 20px;
											                "
											              >0</p>
											              <div
											              	id="m_plus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                  opacity: 1;
											                  pointer-events: all;
											                "
											              >
											                <img width="8" height="8" src="../sitterView/select_pet_plus.png" />
											              </div>
											            </div>
											          </div>
											          <div style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 24px">
											            <div style="display: flex; flex-direction: column">
											              <p style="font-family: 'Noto Sans KR'; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72)">
											                대형견
											              </p>
											              <p style="font-size: 12px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 3px">15kg 이상</p>
											            </div>
											            <div style="display: flex; flex-direction: row; align-items: center">
											              <div
											              	id="b_minus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                  opacity: 1;
											                  pointer-events: all;
											                "
											              >
											                <img width="8" src="../sitterView/select_pet_minus.png" />
											              </div>
											              <p
											              	id="big"
											                style="
											                  font-size: 13px;
											                  font-weight: 600;
											                  letter-spacing: -0.2px;
											                  line-height: 19px;
											                  color: rgb(94, 99, 109);
											                  margin-left: 20px;
											                  margin-right: 20px;
											                "
											              >0</p>
											              <div
											              	id="b_plus"
											                style="
											                  display: flex;
											                  align-items: center;
											                  justify-content: center;
											                  width: 30px;
											                  height: 30px;
											                  border-radius: 50%;
											                  border: 1px solid rgb(113, 162, 255);
											                  cursor: pointer;
											                  user-select: none;
											                  opacity: 1;
											                  pointer-events: all;
											                "
											              >
											                <img width="8" height="8" src="../sitterView/select_pet_plus.png" />
											              </div>
											            </div>
											          </div>
											          <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 32px">
											            <p style="font-size: 12px; line-height: 18px; color: rgb(129, 137, 155)">최대 6마리까지만 선택 가능합니다</p>
											            <p id="close" style="font-family: 'Noto Sans KR'; font-size: 12px; line-height: 18px; color: rgb(113, 162, 255); cursor: pointer">닫기</p>
											          </div>
											        </div>
											      </ul>
											    </div>
											  </div>
											</div>
											<div
												style="width: 375px; border-radius: 8px; border: 1px solid rgb(223, 227, 234); box-shadow: rgba(0, 0, 0, 0.07) 1px 3px 7px; padding: 38px 32px; margin-top: 38px;">
												<div
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between;">
													<p
														style="font-size: 17px; font-weight: 600; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">이용
														요금</p>
													<div
														style="display: flex; align-items: center; flex-direction: row;">
														<div
															style="display: flex; flex-direction: row; align-items: center; margin-right: 8px;">
															<p
																style="font-size: 13px; line-height: 18px; color: rgb(56, 60, 72);">1박
																케어</p>
														</div>
													</div>
												</div>
												<div
													style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 31px;">
													<div
														style="display: flex; flex-direction: row; align-items: center; height: 24px;">
														<img width="24" height="24"
															src="../sitterView/price_pet_small.png"
															alt="소형견">
														<p
															style="font-size: 15px; line-height: 19px; color: rgb(56, 60, 72); margin-left: 10px;">소형견</p>
														<p
															style="font-size: 12px; line-height: 17px; color: rgb(153, 153, 153); margin-left: 12px;">7키로
															미만</p>
													</div>
													<div style="display: flex; flex-direction: row;">
														<div
															style="display: flex; align-items: center; flex-direction: row;">
															<!-- 소형견 1박케어 s_fee_day -->
															<p style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;"><fmt:formatNumber value="${ sitterView.s_fee}" pattern="#,###" />원</p>

														</div>
													</div>
												</div>
												<div
													style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 14px;">
													<div
														style="display: flex; flex-direction: row; align-items: center; height: 24px;">
														<img width="24" height="24"
															src="../sitterView/price_pet_medium.png"
															alt="중형견">
														<p
															style="font-size: 15px; line-height: 19px; color: rgb(56, 60, 72); margin-left: 10px;">중형견</p>
														<p
															style="font-size: 12px; line-height: 17px; color: rgb(153, 153, 153); margin-left: 12px;">7~14.9키로</p>
													</div>
													<div style="display: flex; flex-direction: row;">
														<div
															style="display: flex; align-items: center; flex-direction: row;">
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;"><fmt:formatNumber value="${ sitterView.m_fee}" pattern="#,###" />원</p>
														</div>
													</div>
												</div>
												<div
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 14px;">
													<div
														style="display: flex; flex-direction: row; align-items: center; height: 24px;">
														<img width="24" height="24"
															src="<c:url value='/'/>sitterView/price_pet_large.png"
															alt="대형견">
														<p
															style="font-size: 15px; line-height: 19px; color: rgb(56, 60, 72); margin-left: 10px;">대형견</p>
														<p
															style="font-size: 12px; line-height: 17px; color: rgb(153, 153, 153); margin-left: 12px;">15키로
															이상</p>
													</div>
													<div style="display: flex; flex-direction: row;">
														<div
															style="display: flex; align-items: center; flex-direction: row;">
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;"><fmt:formatNumber value="${ sitterView.b_fee}" pattern="#,###" />원</p>
														</div>
													</div>
												</div>

												<div
													style="width: 310px; height: 1px; background-color: rgb(235, 235, 235); margin: 32px 0px;"></div>
												<div
													style="display: flex; flex-direction: row; justify-content: space-between;">
													<p style="font-size: 14px; color: rgb(78, 82, 91);">반려동물
														추가비</p>
													<div
														style="display: flex; flex-direction: column; justify-content: space-between;">
														<p style="font-size: 13px; color: rgb(126, 126, 126);">
															기본 요금에서 <span style="text-decoration: underline;">10,000원</span>
															할인
														</p>
													</div>
												</div>
												<div
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 17px;">
													<p
														style="font-size: 14px; line-height: 20px; color: rgb(78, 82, 91);">명절
														할증비</p>
													<p
														style="font-size: 13px; line-height: 18px; color: rgb(126, 126, 126);">
														기본 요금에서 <span style="text-decoration: underline;">10,000원</span>
														할증
													</p>
												</div>
												<div
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-top: 17px;">
													<p
														style="font-size: 14px; line-height: 20px; color: rgb(78, 82, 91);">공휴일·성수기
														할증비</p>
													<p
														style="font-size: 13px; line-height: 18px; color: rgb(126, 126, 126);">
														기본 요금에서 <span style="text-decoration: underline;">5,000원</span>
														할증
													</p>
												</div>
											</div>
											
											<div
												style="display: flex; flex-direction: column; width: 375px; border-radius: 8px; border: 1px solid rgb(223, 227, 234); box-shadow: rgba(0, 0, 0, 0.07) 1px 3px 7px; margin-top: 38px; overflow: hidden;">
												<div
													style="display: flex; flex-grow: 1; flex-direction: column; justify-content: center; margin-left: 38px; margin-right: 38px;">
													<div
														style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 38px; margin-bottom: 34px;">
														<p
															style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">펫시터님
															위치</p>
														<div>
															<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(119, 119, 119); width: 160px; margin-top: 3px;">
																${sitterView.sit_addr }
															</p>
														</div>
													</div>
												</div>
												<!-- 지도 -->
												<div>
													<div id="map" style="width: 373px; height: 270px; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
													<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2&libraries=services,clusterer,drawing"></script>
									                <script>
								                	$(function () {
								                    
								                		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								                	    mapOption = {
								                	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
								                	        level: 3 // 지도의 확대 레벨
								                	    };  

									                	// 지도를 생성합니다    
									                	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
									                	// 주소-좌표 변환 객체를 생성합니다
									                	var geocoder = new kakao.maps.services.Geocoder();
	
									                	// 주소로 좌표를 검색합니다
									                	geocoder.addressSearch('${sitterView.sit_addr }', function(result, status) {
	
									                	    // 정상적으로 검색이 완료됐으면 
									                	     if (status === kakao.maps.services.Status.OK) {
	
									                	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
									                	        // 결과값으로 받은 위치를 마커로 표시합니다
									                	        var marker = new kakao.maps.Marker({
									                	            map: map,
									                	            position: coords
									                	        });
									                	     	// 지도에 표시할 원을 생성합니다
									                	        var circle = new kakao.maps.Circle({
									                	            center : new kakao.maps.LatLng(result[0].y, result[0].x),  // 원의 중심좌표 입니다 
									                	            radius: 100, // 미터 단위의 원의 반지름입니다 
									                	            strokeWeight: 5, // 선의 두께입니다 
									                	            strokeColor: '#75B8FA', // 선의 색깔입니다
									                	            strokeOpacity: 0, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
									                	            strokeStyle: 'dashed', // 선의 스타일 입니다
									                	            fillColor: '#75c9ba', // 채우기 색깔입니다
									                	            fillOpacity: 0.3  // 채우기 불투명도 입니다   
									                	        }); 

									                	        // 지도에 원을 표시합니다 
									                	        circle.setMap(map); 
									                	        /* // 인포윈도우로 장소에 대한 설명을 표시합니다
									                	        var infowindow = new kakao.maps.InfoWindow({
									                	            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
									                	        });
									                	        infowindow.open(map, marker); */
	
									                	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									                	        map.setCenter(coords);
									                	    } 
									                	});    
								                	})
								              	</script>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	 <jsp:include page="../common/foot.jsp" />
</body>
</html>