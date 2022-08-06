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
<link rel="stylesheet" href="../jquery/jquery-ui.css">
<script src="../jquery/jquery-ui.js"></script>
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
													<%-- <input type="hidd en" value="${sitterViewList.member_idx }"/> --%>
													<!-- sitterDTO를 통해서 주소값을 넘김 하지만 같은 idx으로 member의 이름값을 넘길려면 회원가입시 sitter or normal 를 선택
													해서  -->
													<h1
														style="font-size: 15px; color: rgb(76, 80, 86); line-height: 22px; letter-spacing: -0.2px; font-weight: bold;">${sitterViewList.sit_addr } 펫시터 / ${stMember.member_name } 님</h1>
													<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; letter-spacing: -0.2px;">${sitterViewLists.sit_title }</p>
													<!-- 시터 신청시 체크박스로 선택한 것들 반복문으로 띄우기 -->
													<div style="display: flex; flex-flow: row wrap; margin-top: 12px; width: 458px;">
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#2인이하 가구</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#단독주택</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#마당보유</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#테라스보유</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#산책로있어요</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#반려동물있어요</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#영주시휴천동 펫시터</p>
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
												<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">${stMember.member_name }
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
																	성별 : ${stPet.pet_gender } /
																	나이 : ${stPet.pet_age }
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
												<h2
													style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71); margin-bottom: 24px;">이용
													가능 서비스</h2>
												<div style="display: flex; flex-flow: row wrap;">
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image8.png"/>
														<div style="margin-left: 13px;">
															<p style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">실내놀이</p>
															<p style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">터그놀이, 노즈워크 등</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image1.png"/>
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">매일
																산책</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">산책
																및 실외 배변 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image10.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">응급
																처치</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">응급
																상황 시 병원 이동 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image7.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">집앞
																픽업</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">비용은
																펫시터와 협의</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image9.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">모발
																관리</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">눈물
																또는 빗질 관리 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image3.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">약물
																복용</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">경구(입)
																약물 복용 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image2.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">목욕
																가능</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">비용은
																펫시터와 협의</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image4.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">장기
																예약</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">14일
																이상 돌봄 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image6.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">노견
																케어</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">8년
																이상 노견 돌봄 가능</p>
														</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center; width: 200px; height: 69px;">
														<img width="32" height="32"
															src="<c:url value='/'/>sitterView/image5.png">
														<div style="margin-left: 13px;">
															<p
																style="font-size: 13px; letter-spacing: -0.2px; line-height: 19px; color: rgb(85, 85, 85);">퍼피
																케어</p>
															<p
																style="font-size: 11px; letter-spacing: -0.2px; line-height: 17px; color: rgb(94, 99, 109); margin-top: 5px;">1년
																미만 퍼피 돌봄 가능</p>
														</div>
													</div>
												</div>
											</div>
											<!-- 후기 -->
											<div style="margin-top: 80px;">
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
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<img width="50" height="50"
																src="<c:url value='/'/>sitterView/0f9b46e53cf74ae3916d25246eacec9c.jpg"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 18px;">
																<!--은아 수정중  
																${"stReview"}
																-->
																<!-- 작성자 이름 부분은 조인쿼리문을 써야되는건가? -->
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">작성자이름</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">${stReview.sitreview_regdate }
																</p>
															</div>
														</div>
														<p
															style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${stReview.sitreview_content }</p>
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
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">다른 작성자 답글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">N일
																		전</p>
																</div>
																<p
																	style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">[답글내용]</p>
															</div>
														</div>
													</div>
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
										<!-- 데이터피커 있는 자리 -->
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
											    
										        $('#startDate').datepicker({
										        	minDate: 'D',
										        	/* beforeShowDay: noReserve, */
										        	onSelect : function(dateText){
										        		$('#endDate').datepicker("option", "minDate", dateText);
										        		$('#endDate').val('');
										        		$('#endDate').datepicker('enabled');
										        		$('#endDate').addClass('DateInput_input__focused DateInput_input__focused_2');
										        		$('#startDate').removeClass('DateInput_input__focused DateInput_input__focused_2');
										        		$('table.ui-datepicker-calendar td').hover({backgroundColor: '#75c9ba'})
										        	},
										        	onClose : function(dateText) {
										        		$('#sD').val(dateText);
										        	}
										        });
										        
										        $('#endDate').datepicker({
										        	minDate: 'D',
										        	/* beforeShowDay: noReserve, */
										        	onSelect : function(dateText) {
										        		$('#startDate').datepicker("option", "maxDate", dateText);
										        		$('#cal_img').datepicker("option", "maxDate", dateText);
										        		$('#eD').val(dateText);
										        		location.href="<c:url value='/' />petsfinder/petsitters/reserve?sD=" + $('#sD').val() + "&eD=" + $('#eD').val();
										        	},
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
								        <form action="./ListSearch">
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
																	<p
																		class="DateInput_screenReaderMessage DateInput_screenReaderMessage_1"
																		id="DateInput__screen-reader-message-startDate">Navigate
																		forward to interact with the calendar and select a
																		date. Press the question mark key to get the keyboard
																		shortcuts for changing dates.</p>
																</div>	
																<div
																	class="DateRangePickerInput_arrow DateRangePickerInput_arrow_1"
																	aria-hidden="true" role="presentation">
																	<img width="11" height="8"
																		src="<c:url value='/'/>sitterView/date_picker_right_arrow.png">
																</div>
																<div
																	class="DateInput DateInput_1 DateInput__disabled DateInput__disabled_2">
																	<input
																		class="DateInput_input DateInput_input_1 DateInput_input__disabled DateInput_input__disabled_2"
																		aria-label="체크아웃 날짜" type="text" id="endDate"
																		name="endDate" placeholder="체크아웃 날짜"
																		autocomplete="off" disabled=""
																		aria-describedby="DateInput__screen-reader-message-endDate"
																		value="">
																	<p
																		class="DateInput_screenReaderMessage DateInput_screenReaderMessage_1"
																		id="DateInput__screen-reader-message-endDate">Navigate
																		backward to interact with the calendar and select a
																		date. Press the question mark key to get the keyboard
																		shortcuts for changing dates.</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<p
													style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71); margin-top: 38px; margin-bottom: 18px;">맡기시는
													반려동물</p>
												<button disabled="" type="button"
													class="ant-btn ant-dropdown-trigger"
													style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; width: 311px; height: 50px;">
													<p
														style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(153, 153, 153);">반려동물
														선택</p>
													<img width="13" height="7"
														src="../sitterView/arrow_down.png">
												</button>
												<div
													style="display: flex; align-items: center; justify-content: center; width: 311px; height: 59px; border-radius: 3px; background-color: rgb(113, 162, 255); margin-top: 50px; user-select: none; cursor: pointer;">
													<p
														style="font-family: &amp; quot; Noto Sans KR&amp;quot;; font-weight: 600; font-size: 15px; letter-spacing: 0.2px; line-height: 22px; color: white;">예약
														요청</p>
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
															<div
																style="width: 1px; height: 15px; background-color: rgb(236, 237, 240); margin-left: 15px; margin-right: 15px;"></div>
															<p
																style="font-size: 13px; line-height: 18px; color: rgb(56, 60, 72);">데이케어</p>
														</div>
														<div style="display: flex;">
															<img width="13" height="13"
																src="../sitterView/question_mark.png"
																class="ant-dropdown-trigger">
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
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.s_fee_day}원</p>
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91);">${ sitterViewList.s_fee_night}원</p>
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
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.m_fee_day}원</p>
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91);">${ sitterViewList.m_fee_night}원</p>
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
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91); margin-right: 12px;">${ sitterViewList.b_fee_day}원</p>
															<p
																style="font-size: 14px; letter-spacing: 0.5px; line-height: 20px; color: rgb(78, 82, 91);">${ sitterViewList.b_fee_night}원</p>
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
	<script async="" data-next-page="/details" src="../sitterView/details.js"></script>
	<!--
	지워도 이상 없음
	<script async="" data-next-page="/_app"	src="../sitterView/_app.js"></script>
	 -->
	<!--
	지워도 이상 없음
	<script	src="../sitterView/webpack-4b444dab214c6491079c.js"	async=""></script>
	 -->
	<!--
	지워도 이상 없음
	<script	src="../sitterView/commons.7c16b5d39bd35b619670.js"	async=""></script>
	 -->
	<!--  
	지워도 이상 없음 	
	<script	src="../sitterView/styles.58a0c59fae1a4a2af04e.js" async=""></script>
	 -->
	<!-- 
	지워도 이상 없음 
	<script	src="../sitterView/main-02a579c90518306d4183.js" async=""></script>
	 -->
	<!-- 
	지워도 이상 없음
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
	지워도 이상 없음
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
</body>
</html>