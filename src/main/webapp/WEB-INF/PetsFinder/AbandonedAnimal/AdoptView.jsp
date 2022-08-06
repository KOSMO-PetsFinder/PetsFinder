<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
<!-- 입양후기 + 유기동물 상세보기 -->
<!DOCTYPE html>
<!-- saved from url=(0046)https://petplanet.co/petsitters/details/rsbzj1 -->
<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body cz-shortcut-listen="true">
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
										style="z-index: 1; width: 83px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 605px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<p
											style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">사진
											보기</p>
									</div>
									<div
										style="z-index: 1; width: 100px; height: 36px; display: flex; align-items: center; justify-content: center; border: 1px solid rgb(223, 227, 234); border-radius: 3px; position: absolute; top: 109px; right: 24px; background-color: white; cursor: pointer; user-select: none;">
										<img width="22" height="22"
											src="./sitterView/icon_share.png"
											style="margin-right: 2px;">
										<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(57, 60, 71);">공유하기</p>
									</div>
									<div class="mainGallery"
										style="z-index: 0; display: flex; flex-direction: row; width: 100%; height: 580px; margin-top: 85px; position: relative;">
										<div style="width: 62.5%; height: 580px; overflow: hidden;">
											<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" width="900" height="580"
												class="normalImage"
												src="../sitterView/e0b00068f0f84976a9442d8a89e18646.jpg"
												style="object-fit: cover; width: 100%; user-select: none; cursor: pointer;">
										</div>
										<div
											style="display: flex; flex-grow: 1; width: 37.5%; height: 580px; flex-direction: column;">
											<div style="width: 100%; height: 290px; overflow: hidden;">
												<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" height="290"
													class="normalImage"
													src="./sitterView/14592bff60324a22995567266f07115a.jpg"
													style="object-fit: cover; user-select: none; cursor: pointer; width: 100%;">
											</div>
											<div style="width: 100%; height: 290px; overflow: hidden;">
												<img alt="경북 영주시 휴천동, 송*은 펫시터 환경" height="290"
													class="normalImage"
													src="./sitterView/654dd40110f54db8935e54eef538a441.jpg"
													style="object-fit: cover; user-select: none; cursor: pointer; width: 100%;">
											</div>
										</div>
									</div>
									<div
										style="margin-top: 73px; margin-left: auto; margin-right: auto; width: 1027px; display: flex; flex-direction: row; justify-content: space-between;">
										<div>
											<div style="display: flex; flex-direction: row;">
												<div style="overflow: hidden; width: 90px; height: 90px; border: none; border-radius: 12px; margin-top: 5px;">
													<img width="90" height="90" alt="경북 영주시 휴천동 펫시터"
														src="./sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
														style="object-fit: cover; display: inline-block;">
												</div>
												<div style="margin-left: 32px;" >
													<h1
														style="font-size: 15px; color: rgb(76, 80, 86); line-height: 22px; letter-spacing: -0.2px;">${abandonedAnimalDTO.abani_species }</h1>
													<p style="margin-top: 5px; font-size: 25px; color: rgb(56, 60, 72); line-height: 37px; letter-spacing: -0.2px;">${abandonedAnimalDTO.abani_kind }</p>
													<!-- 시터 신청시 체크박스로 선택한 것들 반복문으로 띄우기 -->
													<div style="display: flex; flex-flow: row wrap; margin-top: 12px; width: 458px;">
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${abandonedAnimalDTO.abani_age }</p>
														<p style="font-size: 14px; line-height: 21px; letter-spacing: -0.2px; color: rgb(94, 99, 109); margin-right: 7px;">#${abandonedAnimalDTO.abani_gender }</p>
													</div>
												</div>
												<div style="display: inline-block; margin-left:auto;  float: right;">
													<c:if test="${abandonedAnimalDTO.abani_stat eq 'adopt'  }">
													<span class="badge rounded-pill bg-success">입양완료</span>
													</c:if>
													<c:if test="${abandonedAnimalDTO.abani_stat eq 'prtct'  }">
													<span class="badge rounded-pill bg-primary">보호중</span>
													</c:if>
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 85px; margin-top: 50px; border-radius: 5px; background-color: rgb(250, 250, 251);">
												<div
													style="display: flex; flex-direction: row; align-items: center;">
													<img width="26" height="27"
														src="./sitterView/verification.png">
													<p
														style="font-weight: 600; font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(57, 60, 71); margin-left: 5px;">예방 접종${abandonedAnimalDTO.abani_vaccin } / 중성화 완료${abandonedAnimalDTO.abani_neut }</p>
												</div>
												<p
													style="font-size: 12px; letter-spacing: -0.2px; line-height: 18px; color: rgb(85, 85, 85); margin-top: 5px;">5단계 신원 검증 및 돌봄 환경의 안전성 검증이 완료된 펫츠 파인더입니다</p>
											</div>
											<div  style="margin-top: 53px; width: 1027px;">
												<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57, 60, 71);">아이를 소개합니다.</h2>
												<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 32px;">
													${abandonedAnimalDTO.abani_char }
												</p>
											</div>
											
											
											<!-- 보호중일 경우엔 입양하기 버튼을 생성   -->
											<c:if test="${abandonedAnimalDTO.abani_stat eq 'prtct'  }">
											 <!-- 날짜 계산 -->
									        <fmt:formatDate var="sDate" value="${abandonedAnimalDTO.abani_regdate }" pattern="yyyyMMdd" />
									        <fmt:parseDate var="pDate" value="${sDate }" pattern="yyyyMMdd" />
									        <fmt:parseNumber value="${pDate.time / (1000*60*60*24)}" integerOnly="true" var="isDate" scope="request" />
									        <%long currentMilliseconds = new Date().getTime();
											String nDate = String.valueOf(currentMilliseconds /(1000*60*60*24) -1); %>
									        <fmt:parseNumber value="<%=nDate %>" integerOnly="true" var="nowDate" scope="request" />
											<!-- 등록일로부터 10일이 지나면 nowDate - isDate >=10  -->
											<c:if test="${nowDate - isDate >=10}">
												<div style="margin-top: 80px;">
												입양신청 버튼 
												</div>
											</c:if>
											</c:if>
											
											
											
											<!-- 입양중일 경우 -->
											<c:if test="${abandonedAnimalDTO.abani_stat eq 'adopt'  }">
											<!-- 후기가 없을 때  -->
											<c:if test="${revState eq 'nex' }">
												<div style="margin-top: 80px;">
												후기등록 버튼? 
												</div>
											</c:if>
											<!-- 후기가 있을 때  -->
											<c:if test="${revState eq 'exe' }">
											<div style="margin-top: 80px;">
												<div style="display: flex; flex-direction: row; align-items: center; margin-bottom: 38px;">
													<h2 style="font-weight: 600; font-size: 22px; letter-spacing: -0.2px; line-height: 33px; color: rgb(57, 60, 71); margin-right: 20px; margin-bottom: 0px;">입양 후기</h2>
												</div>
												<div style="display: flex; flex-direction: row;">
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/46bbf847d6434a20a033a18a0061879b.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/8a2b86f4fc534f73a15a434baebd53fa.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/01b9927be704472a8e4f75dbdfcf55ce.jpg"
															style="object-fit: cover;">
													</div>
													<div
														style="display: flex; overflow: hidden; border-radius: 3px; margin-right: 9px; user-select: none; cursor: pointer; position: relative;">
														<img width="139" height="139"
															src="./sitterView/6a7dffb15ac44f28a39289bf5357ad23.jpg"
															style="object-fit: cover;">
														<div
															style="display: flex; position: absolute; inset: 0px; width: 139px; height: 139px; align-items: center; justify-content: center; background-color: rgba(0, 0, 0, 0.59); border-radius: 3px;">
															<p
																style="font-size: 17px; letter-spacing: 0.5px; line-height: 25px; color: white;">+8</p>
														</div>
													</div>
												</div>
												<!-- 댓글보기 전체 불러오기 -->
												<c:forEach items="${reviewLists }" var="row">
												<script>
													
													function com_view${row.review_idx} () {
														var a = ${row.review_idx};
														var id = "com" + a;
														var com = document.getElementById(id)
														if( com.style.display == 'none' ) {
															com.style.display = 'flex'
														} else {
															com.style.display = 'none'
														}
													}
													function commentView${row.review_idx}() {
														var a = ${row.review_idx};
														var id = "Comment" + a;
														var com = document.getElementById(id)
														if( com.style.display == 'none' ) {
															com.style.display = 'flex'
														} else {
															com.style.display = 'none'
														}
													}
												</script>
												</c:forEach>
												
												
												<!-- 입양후기 --> 
												<!-- 여기를 if문으로 감싸서 .. 처리  -->
												
												<div style="margin-top: 38px;">
													<c:forEach items="${requestScope.reviewLists }" var="row">
													<div
														style="display: flex; flex-direction: column; border-top: 1px solid rgb(235, 235, 235); padding: 38px 0px;">
														<!-- 이름,날짜,내용 -->
														<div
															style="display: flex; flex-direction: row; align-items: center;">
															<img width="50" height="50"
																src="../images/4.png"
																style="object-fit: cover; border-radius: 50%;">
															<div style="margin-left: 18px;">
																<p
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">${row.member_namer }</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">${row.review_regdate }</p>
															</div>
															<div style="display: flex; flex-direction: row; margin-left:auto;  float: right;">
																<div style="padding-right: 10px;">
																<!-- 좋아요 -->
																<p>
																	<a href="">
																		<img src="../images/heart0.png" alt="" width="30" height="30" />
																	</a>
																</p>
																</div>
																<div>
																	<p>
																	123
																	</p>
																</div>
															</div>
														</div>
														<p
															style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${row.review_content }</p>
														<!-- 사진 -->
														<div
															style="display: flex; flex-direction: row; margin-top: 33px;">
															<img width="90" height="90"
																src="../images/4.png"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="../images/4.png"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;"><img
																width="90" height="90"
																src="../images/4.png"
																style="border-radius: 2px; object-fit: cover; margin-right: 9px; user-select: none; cursor: pointer;">
															<c:if test="${sessionScope.idx ne null }">
															<div style="display: flex; flex-direction: column-reverse; margin-left:auto;  float: right; vertical-align:bottom; padding-bottom: 3px;">
																<p onclick="commentView${row.review_idx}()" style="cursor: pointer;" >
																	댓글달기
																	<img src="../images/comment.png" alt="" width="20" height="20" />
																</p>
															</div>
															</c:if>
														</div>
														<!-- 댓글 폼 -->
														<div style="display: none; flex-direction: column; margin-top: 33px; align-items: center;" id="Comment${row.review_idx }">
														<form action="<c:url value='/' />AbandonedAnimal/commentInsert.do">
														<input type="hidden" name="review_idx" value="${row.review_idx }">
														<input type="hidden" name="member_idx" value="${sessionScope.idx }">
														<input type="hidden" name="abani_idx" value="${abandonedAnimalDTO.abani_idx }">
														<div>
															<textarea style="width:972px; height: 150px; margin-top: 30px;" name="reviewcomm_content"></textarea>														
														</div>
														<div style="display: flex; flex-direction: column-reverse; margin-left:auto;  float: right; vertical-align:bottom; padding-bottom: 3px; padding-top: 10px; padding-right:25px;">
															<button type="submit" class="btn btn-info">등록</button>
														</div>
														</form>
														</div>
														
														<% int temp = 0; %>
														<c:forEach items="${reviewCommLists }" var="rerow" varStatus="status">
															
															<c:if test="${rerow.review_idx eq row.review_idx }" >
																<%  
																if(temp < 1) {
																	temp++;
																%>
																	<button onclick="com_view${row.review_idx}();" style='background: none; border: none;'>댓글보기</button>
																<%}%>
															</c:if>
														</c:forEach>
														
														<div id="com${row.review_idx }" name="com${row.review_idx }" style="display: none; flex-direction: column; justify-content: right; margin-top: 32px;">
														
														<c:forEach items="${reviewCommLists }" var="rerow" varStatus="status">
														<c:if test="${rerow.review_idx eq row.review_idx }" >
														
														
														
															<div
															style="display: flex; flex-direction: row; justify-content: right; margin-top: 32px;">
															<img width="50" height="50"
															src="./sitterView/086d1c39b3704073bd35db5d5298e464.jpg"
															style="object-fit: cover; border-radius: 50%;">
															<div
																style="background-color: rgb(250, 250, 252); width: 100%; padding: 20px 24px;">
																<div
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">${rerow.member_namec }님
																		답글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">${rerow.reviewcomm_regdate }</p>
																</div>
																<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">${rerow.reviewcomm_content }</p>
															</div>
															</div>
															
														</c:if>
														</c:forEach>
														</div>
													</div>
													</c:forEach>
													
													<!-- 후기 폼!!!!!!!! -->
													
													<!-- <div
														style="display: flex; align-items: center; justify-content: center; height: 50px; border-radius: 25px; border: 1px solid rgb(129, 137, 155); margin-bottom: 100px; user-select: none; cursor: pointer; margin-top: 12px;">
														<p
															style="font-size: 14px; letter-spacing: -0.2px; line-height: 20px; color: rgb(56, 60, 72);">입양
															후기 더보기</p>
													</div> -->
												</div>
											</div>
											</c:if>
											</c:if>
										</div>
										<!-- 왼쪽 끝 -->
									</div>
								</div>
							</div>
						</div>
						<div class="custom-channel-io-button"
							style="position: fixed; right: 0px; bottom: 90px; z-index: 99999;">
							<img
								src="./sitterView/mobile_channelio_icon.png"
								style="width: 95px; height: 95px;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>