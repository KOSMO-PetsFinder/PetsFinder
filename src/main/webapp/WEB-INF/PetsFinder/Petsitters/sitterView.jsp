<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- <link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script> -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../css/calendar.css">
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
								<input type="hid den" value="${member_idx }"/>
									<div
										style="z-index: 1; width: 100px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 109px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<img width="22" height="22"
											src="<c:url value='/'/>sitterView/icon_share.png"
											style="margin-right: 2px;">
										<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">공유하기</p>
									</div>
									<div style="z-index: 0; display: flex; flex-direction: row; width: 100%; height: 580px; margin-top: 85px; position: relative;" id="demo" class="carousel slide" data-bs-ride="carousel">
											<div class="carousel-indicators">
												<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
												<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
												<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
											</div>
											<!-- 이미지 -->
											<div style="width: 100%; height: 580px;" class="carousel-inner">
												<div class="carousel-item active">
													<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" width="1500" height="580"
														class="d-block"
														src="<c:url value='/'/>sitterView/e0b00068f0f84976a9442d8a89e18646.jpg"
														style="object-fit: cover; width: 100%; user-select: none; cursor: pointer;">
												</div>
												<div class="carousel-item">
													<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" width="1500" height="580"
														class="d-block"
														src="<c:url value='/'/>sitterView/e0b00068f0f84976a9442d8a89e18646.jpg"
														style="object-fit: cover; width: 100%; user-select: none; cursor: pointer;">
												</div>
												<div class="carousel-item">
													<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" width="1500" height="580"
														class="d-block"
														src="<c:url value='/'/>sitterView/e0b00068f0f84976a9442d8a89e18646.jpg"
														style="object-fit: cover; width: 100%; user-select: none; cursor: pointer;">
												</div>
											</div>
											<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
												<span class="carousel-control-prev-icon"></span>
											</button>
											<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
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
														src="<c:url value='/'/>sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
														style="object-fit: cover; display: inline-block;">
												</div>
												<div style="margin-left: 32px;">
													<!-- 은아 수정중
													${svMemberInfo.member_addr } ${svMemberInfo.member_name }-->
													<!-- 연습 -->
														<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; 
														letter-spacing: -0.2px;"></p>
													
													<!-- sitterDTO를 통해서 주소값을 넘김 하지만 같은 idx으로 member의 이름값을 넘길려면 회원가입시 sitter or normal 를 선택
													해서  -->
													<h1
														style="font-size: 15px; color: rgb(76, 80, 86); line-height: 22px; letter-spacing: -0.2px; font-weight: bold;">${sitterViewList.sit_addr } 펫시터 / ${sitterViewList.member_name } 님</h1>
													<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; letter-spacing: -0.2px;">${sitterViewList.sit_title }</p>
													<!-- 시터 신청시 체크박스로 선택한 것들 반복문으로 띄우기 -->
													<!-- 시터태그 반복문 sitterTag.typtag_expln-->
													<div style="display: flex; flex-flow: row wrap; margin-top: 12px; width: 458px;">
														<c:forEach items="${sitterTag}" var="sitterTag">
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${sitterTag.typTag_expln }</p>
														<!-- <p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#단독주택</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#마당보유</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#테라스보유</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#산책로있어요</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#반려동물있어요</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#영주시휴천동 펫시터</p> -->
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
												<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">${sitterViewList.member_name }
													펫시터님을 소개합니다</h2>
												<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 32px;">
													${sitterViewList.sit_intro }
												</p>
											</div>
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
																	style="font-size: 15px; line-height: 22px; color: rgb(57, 60, 71);">${sitterViewList.pet_name }</p>
																<p
																	style="font-size: 13px; line-height: 18px; color: rgb(56, 60, 72); margin-top: 7px;">
																	성별 : ${sitterViewList.pet_gender } /
																	나이 : ${sitterViewList.pet_age }살
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
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
											<!-- 후기 -->
											<div style="margin-top: 80px;">
											<c:forEach items="" var="row">
												<div style="display: flex; flex-direction: row; align-items: center; margin-bottom: 38px;">
													<h2 style="font-weight: 600; font-size: 22px; letter-spacing: -0.2px; line-height: 33px; color: rgb(57, 60, 71); margin-right: 20px; margin-bottom: 0px;">펫시터 후기 N개</h2>
													<!-- 후기 중 사진 불러오기 -->
													<div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 113px;">
														<img width="18" height="18"
															src="<c:url value='/'/>sitterView/star_1.png"><img
															width="18" height="18"
															src="<c:url value='/'/>sitterView/star_1.png"><img
															width="18" height="18"
															src="<c:url value='/'/>sitterView/star_1.png"><img
															width="18" height="18"
															src="<c:url value='/'/>sitterView/star_1.png"><img
															width="18" height="18"
															src="<c:url value='/'/>sitterView/star_1.png">
													</div>
												</div>
												</c:forEach>
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
																style="font-size: 17px; letter-spacing: 0.5px; line-height: 25px; color: white;">+8</p>
														</div>
													</div>
												</div>
												<!-- 후기 내용 전체 불러오기 -->
												<div style="margin-top: 38px;">
												<c:forEach items="${ stReview }" var="sr" varStatus="loop">
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<c:if test="${ not empty sr.member_photo }" var="res">
															<img width="50" height="50"
																	src="<c:url value='/'/>Uploads/${ sr.member_photo }"
																style="object-fit: cover; border-radius: 50%;">
															</c:if>
															<c:if test="${ not res }">
															<img width="50" height="50"
																src="<c:url value='/'/>sitterView/0f9b46e53cf74ae3916d25246eacec9c.jpg"
																style="object-fit: cover; border-radius: 50%;">
															</c:if>
															<div style="margin-left: 18px;">
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">${sr.member_namer }</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">${sr.review_regdate }
																</p>
															</div>
															<!-- 후기 좋아요 -->
															<div style="display: flex; flex-direction: row; margin-left:auto;  float: right;">
																<div style="padding-right: 10px;">
																	<img id="like_img${sr.review_idx}" src="../images/heart_o.png" alt="" width="20" height="20" />
																</div>
																<div style=" width: 20px; margin-right: 10px;">
																	<p>
																	<input type="text" id="like_num${sr.review_idx}" style="width: 40px; height: 20px; border: 0" value="${sr.countlike }"/>
																	</p>
																</div>
															</div>
															<!-- 후기 좋아요 -->
														</div>
														<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${ sr.review_content}</p>
														<div
															style="display: flex; flex-direction: row; margin-top: 33px;">
															<img width="90" height="90"
																src="<c:url value='/'/>sitterView/46bbf847d6434a20a033a18a0061879b.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="<c:url value='/'/>sitterView/8a2b86f4fc534f73a15a434baebd53fa.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="<c:url value='/'/>sitterView/01b9927be704472a8e4f75dbdfcf55ce.jpg"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
														</div>
														<div
															style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 32px;">
															<img width="50" height="50"
																src="<c:url value='/'/>sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div
																style="background-color: rgb(250, 250, 252); width: 515px; padding: 20px 24px;">
																<div
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">후기 댓글 이름</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">후기 댓글 날짜
																	</p>
																</div>
																<p
																	style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">후기 댓글 내용</p>
															</div>
														</div>
													</div>
												</c:forEach>
													<div
														style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
														<p
															style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">펫시터
															후기 더보기</p>
													</div>
												</div>
											</div>
										</div>
										<!-- 왼쪽 끝 -->
										<!-- 오른쪽 시작 -->
										
										<!-- 예약 하기 -->
									  	<script>
									  		var noReservation = [];
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
									   	/* console.log(${loop.count})
									   	console.log(sD_${ loop.count });
									   	console.log(eD_${ loop.count }); */
									   	for (var d = new Date(sD_${ loop.count }); d <= new Date(eD_${ loop.count }); d.setDate(d.getDate() + 1)) {
									        noReservation.push($.datepicker.formatDate('yy-mm-dd', d));
									    }
										function noReserve(date) {
									    	
										   	var dateString = jQuery.datepicker.formatDate('yy-mm-dd', date);
									        return [noReservation.indexOf(dateString) == -1];
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
										        	beforeShowDay: noReserve,
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
														for (var i = 0; i < noReservation.length; i++) {
														    if (selectDate <= noReservation[i]) {
															    console.log(noReservation[i])
															    $('#endDate').datepicker("option", "maxDate", noReservation[i]);
															    break;
														    }
													  	}
														/* 종료 날짜 선택 가능 시작 날 정하는 부분 */
										        		$('#endDate').datepicker("option", "minDate", dateText);
														/* 시작 날짜 선택 시 종료 날짜 값 비우기 */
										        		$('#endDate').val('');
														
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
										        	beforeShowDay: noReserve,
										        	</c:if>
										        	onShow : function() {
										        		$('#endDate').addClass('DateInput_input__focused DateInput_input__focused_2');
										        	},
										        	onSelect : function(dateText) {
										        		/* $('#startDate').datepicker("option", "maxDate", dateText); */
										        		$('#cal_img').datepicker("option", "maxDate", dateText);
										        		$('#eD').val(dateText);
										        		$('#endDate').removeClass('DateInput_input__focused DateInput_input__focused_2');
										        		$('.ant-btn').removeAttr('disabled')
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
								        <form action="./reserve">
								        	<input type="hidden" id="sit" value="${ sitterViewList.sit_idx }"/>
									        <input type="hidden" id="sD" name="sD"/>
									        <input type="hidden" id="eD" name="eD"/>
											
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
													<p
														style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-weight: 600; font-size: 15px; letter-spacing: 0.2px; line-height: 22px; color: white;">예약
														요청</p>
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
												var s_fee = ${ sitterViewList.s_fee }
												var s_tax = s_fee / 10
												var s_sum = parseInt(s_fee + s_tax)
												
												var m_fee = ${ sitterViewList.m_fee }
												var m_tax = m_fee / 10
												var m_sum = parseInt(m_fee + m_tax)
												
												var b_fee = ${ sitterViewList.b_fee }
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
															var sum01 = day01 + tax01
															
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
																var sum01 = day01 + tax01
																
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
														$('#sum').text((s_sum * r) + '원')
														
													} else if ($('#p_cell').text().search('소형') != -1 ) {
														console.log('sp2')
														var p01 = $('#p_cell').text()
														var p02 = p01.replace('소형 ' + s01, '소형 ' + s02)
														$('#p_cell').text(p02)
														
														var day01 = parseInt(day + s_fee * r) 
														var tax01 = parseInt(day01 / 10)
														var sum01 = day01 + tax01
														
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
														var sum01 = day01 + tax01
														
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
															var sum01 = day01 + tax01
															
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
																var sum01 = day01 + tax01
																
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
																var sum01 = day01 + tax01
																
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
														$('#sum').text((m_sum * r) + '원')
													} else {
														if ($('#p_cell').text().search('중형') != -1 ) {
															console.log('mp2')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('중형 ' + m01, '중형 ' +  m02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day + m_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = day01 + tax01
															
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
																	var sum01 = day01 + tax01
																	
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
																	var sum01 = day01 + tax01
																	
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
																	var sum01 = day01 + tax01
																	
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
															var sum01 = day01 + tax01
															
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
																var sum01 = day01 + tax01
																
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
														$('#sum').text((b_sum * r) + '원')
													} else {
														if ($('#p_cell').text().search('대형') != -1 ) {
															console.log('bp2')
															var p01 = $('#p_cell').text()
															var p02 = p01.replace('대형 ' + b01, '대형 ' + b02)
															$('#p_cell').text(p02)
															
															var day01 = parseInt(day + b_fee * r)
															var tax01 = parseInt(day01 / 10)
															var sum01 = day01 + tax01
															
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
															var sum01 = day01 + tax01
															
															$('#day').text(day01 + '원')
															$('#tax').text(tax01 + '원')
															$('#sum').text(sum01 + '원')
														}
													}
												})
											})
											</script>
											<div style="position: absolute; top: -127px; left: 406px; width: 100%;">
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
											
										</form>	
											
											
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
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.s_fee}원</p>
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
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.m_fee}원</p>
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
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.b_fee}원</p>
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
												style="width: 375px; border-radius: 8px; border: 1px solid rgb(223, 227, 234); box-shadow: rgba(0, 0, 0, 0.07) 1px 3px 7px; padding: 38px; margin-top: 38px;">
												<h2
													style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71); margin-bottom: 24px;">예약
													가능 날짜</h2>
												<div>
													<div
														style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-bottom: 21px;">
														<div
															style="display: flex; align-items: center; justify-content: center; border: 1px solid rgb(157, 164, 180); opacity: 0.5; width: 32px; height: 32px; border-radius: 50%; pointer-events: none; user-select: none; cursor: pointer;">
															<img width="5" height="10"
																src="../sitterView/schedule_left_arrow.png">
														</div>
														<p
															style="font-size: 18px; line-height: 27px; letter-spacing: -0.2px; color: rgb(56, 60, 72);">2022년
															8월</p>
														<div
															style="display: flex; align-items: center; justify-content: center; border: 1px solid rgb(157, 164, 180); width: 32px; height: 32px; border-radius: 50%; user-select: none; cursor: pointer;">
															<img width="5" height="10"
																src="../sitterView/schedule_right_arrow.png">
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-bottom: 12px;">
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">일</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">월</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">화</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">수</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">목</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">금</p>
														</div>
														<div style="width: 42px;">
															<p
																style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(94, 99, 109); text-align: center;">토</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between;">
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div style="flex-grow: 1;"></div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">1</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">2</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">3</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">4</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);">
																<p
																	style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);">5</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);">
																<p
																	style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);">6</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between;">
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);">
																<p
																	style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);">7</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">8</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">9</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">10</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">11</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">12</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">13</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between;">
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">14</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">15</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">16</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">17</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">18</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">19</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">20</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between;">
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">21</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">22</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">23</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">24</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">25</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">26</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">27</p>
															</div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between;">
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">28</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">29</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">30</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div
																style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(113, 162, 255);">
																<p
																	style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;">31</p>
															</div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div style="flex-grow: 1;"></div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div style="flex-grow: 1;"></div>
														</div>
														<div
															style="display: flex; margin: 0.5px; background-color: white; width: 42px; height: 42px;">
															<div style="flex-grow: 1;"></div>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; justify-content: space-between; margin-top: 24px; margin-left: 36px; margin-right: 36px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<div
																style="background-color: rgb(113, 162, 255); width: 15px; height: 15px; margin-right: 8px;"></div>
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(78, 82, 90);">이용
																가능 날짜</p>
														</div>
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<div
																style="background-color: rgb(242, 243, 247); width: 15px; height: 15px; margin-right: 8px;"></div>
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(78, 82, 90);">예약
																불가 날짜</p>
														</div>
													</div>
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
															<p
																style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(119, 119, 119); width: 160px; margin-top: 3px;">영주시
																휴천동</p>
															<p
																style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(119, 119, 119); width: 160px; margin-top: 5px;">영주어린이집에서
																도보로 1분</p>
														</div>
													</div>
												</div>
												<div>
													<div class="map"
														style="width: 373px; height: 270px; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
														<div
															style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;">
															<div style="position: absolute;">
																<div style="position: absolute; z-index: 0;"></div>
																<div
																	style="position: absolute; z-index: 1; left: 0px; top: 0px;">
																	<img
																		src="<c:url value='/'/>sitterView/182.png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -82px; top: 133px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/183.png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 174px; top: 133px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/184.png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 430px; top: 133px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/182(1).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -82px; top: -123px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/183(1).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 174px; top: -123px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/184(1).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 430px; top: -123px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/182(2).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -82px; top: -379px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/183(2).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 174px; top: -379px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
																		src="<c:url value='/'/>sitterView/184(2).png"
																		alt="" draggable="false"
																		style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 430px; top: -379px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
																</div>
																<div style="position: absolute; z-index: 1;"></div>
																<div
																	style="width: 373px; height: 270px; position: absolute; z-index: 1;"></div>
																<div style="position: absolute; z-index: 1;">
																	<svg version="1.1"
																		style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 1865px; height: 1350px; left: -746px; top: -540px;"
																		viewBox="0 0 1865 1350">
																		<defs></defs>
																		<ellipse id="daum-maps-shape-0"
																			style="stroke:#75B8FA;stroke-opacity:1;stroke-width:1px;color:#75B8FA;stroke-linecap:round;fill:#CFE7FF;fill-opacity:0.7;fill-rule:evenodd;"
																			cx="932" cy="675" rx="62.5" ry="62.5" gtype="oval"></ellipse></svg>
																</div>
																<div
																	style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"></div>
															</div>
														</div>
														<div
															style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
															<div
																style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
																<div
																	style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div>
																<div
																	style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">500m</div>
															</div>
															<div style="margin: 0px 4px; float: left;">
																<a target="_blank" href="http://map.kakao.com/"
																	title="Kakao 지도로 보시려면 클릭하세요."
																	style="float: left; width: 32px; height: 10px;"><img
																	src="<c:url value='/'/>sitterView/m_bi_b.png"
																	alt="Kakao 지도로 이동"
																	style="float: left; width: 32px; height: 10px; border: none;"></a>
																<div
																	style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
															</div>
														</div>
														<div
															style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
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
<!-- 	
	<script async="" data-next-page="/details" src="../sitterView/details.js"></script>

	<script async="" data-next-page="/_app"	src="../sitterView/_app.js"></script>

	<script	src="../sitterView/webpack-4b444dab214c6491079c.js"	async=""></script>

	<script	src="../sitterView/commons.7c16b5d39bd35b619670.js"	async=""></script>

	<script	src="../sitterView/styles.58a0c59fae1a4a2af04e.js" async=""></script>

	<script	src="../sitterView/main-02a579c90518306d4183.js" async=""></script>


	<script type="application/ld+json">{
    "@context": "http://schema.org",
    "@type": "Person",
    "name": "펫플래닛",
    "url": "https://petplanet.co",
    "sameAs": [
        "http://blog.naver.com/petplanet_kr",
        "https://www.instagram.com/petplanet.co",
        "https://www.facebook.com/petplanet.co",
        "https://play.google.com/store/apps/details?id=co.petpeople.petplanet",
        "https://apps.apple.com/us/app/%ED%8E%AB%ED%94%8C%EB%9E%98%EB%8B%9B-%EC%97%84%EC%84%A0%EB%90%9C-%ED%8E%AB%EC%8B%9C%ED%84%B0/id1343097834"
    ]
	}</script>
 -->

<!-- 
	<div id="ch-plugin">
		<div id="ch-plugin-core">
			<style data-styled="active" data-styled-version="5.1.1"></style>
		</div>
		<div id="ch-plugin-script" style="display: none"
			class="ch-messenger-hidden">
			<iframe id="ch-plugin-script-iframe"
				style="position: relative !important; height: 100%; width: 100% !important; border: none !important;"
				src="../sitterView/saved_resource.html"></iframe>
		</div>
	</div>
	<style data-styled="active" data-styled-version="5.1.1"></style> 
	 -->
	 <jsp:include page="../common/foot.jsp" />

	 
</body>
</html>