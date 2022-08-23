<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <% int likeEx = 0; %>
    <% boolean like1 = false; %>
<!-- 입양후기 + 유기동물 상세보기 -->
<!DOCTYPE html>
<!-- saved from url=(0046)https://petplanet.co/petsitters/details/rsbzj1 -->
<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
	<link rel="stylesheet" href="../jquery/jquery-ui.css">
	<script src="../jquery/jquery-ui.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head> 

<body cz-shortcut-listen="true">
	<jsp:include page="../common/Header.jsp" />
	<c:forEach items="${reviewLists }" var="row">
	<!-- ajax시작 -->
    <script type="text/javascript">
    var today = new Date();

    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);

    var dateString = year + '-' + month  + '-' + day;

    console.log(dateString);
    function commentInsert${row.review_idx}(){
    	var reviewcomm_content = $("#reviewcomm_content${row.review_idx }").val();
    	var member_idx = "${sessionScope.idx}";
    	var review_idx = "${row.review_idx}"
    	var member_namec = "${sessionScope.name}";
    	var member_photo = "${sessionScope.photo}";
		var reviewcomm_regdate = dateString;
    	var formData = $("#comm${row.review_idx}").serialize();
		$.ajax({
			url : "./commentInsert.do",
			type : "GET",
			data : {
				"reviewcomm_content" : reviewcomm_content,
				"member_idx" : member_idx,
				"review_idx" : review_idx,
				"reviewcomm_regdate" : reviewcomm_regdate,
			},
			dataType : 'text',
			success : function () {
				console.log("성공");
				var content=""; 
				content += "<div style='display: flex; flex-direction: row; align-self: flex-end; margin-top: 32px; width: 600px'><img width='50' height='50'";
				content += "src='<c:url value='/' />Uploads/"+member_photo+"' style='object-fit: cover; border-radius: 50%;'>";
				content += "<div style='background-color: rgb(250, 250, 252); width: 100%; padding: 20px 24px;'>";
				content	+= "<div style='display: flex; flex-direction: row; align-items: center;'>";
				content += "<p style='font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);'>" +member_namec+"님";
				content += "댓글</p><p style='font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;'>" +reviewcomm_regdate+"</p>";
				content	+= "</div>";
				content	+= "<p style='font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;'>"+reviewcomm_content+"</p>";
            	content	+= "</div></div>";
				$(content).appendTo("#com${row.review_idx}");
				
				//내용 삭제..
				document.getElementById("reviewcomm_content${row.review_idx }").value='';
				//이게 none으로 되고
				var a = ${row.review_idx};
				var id = "Comment" + a;
				var com = document.getElementById(id)
				com.style.display = 'none'
				//댓글보기 나오게 
				a = ${row.review_idx};
				id = "com" + a;
				com = document.getElementById(id)
				com.style.display = 'flex'
				//쓴 댓글로 이동
				var location = document.querySelector("#scroll${row.review_idx}").offsetTop;
				window.scrollTo({top:location, behavior:'smooth'});
			}, 
			
			error:function(request, status, error) {
				console.log("실패");
				
	        },
		});
	};
	</script>
	</c:forEach>
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
									<div style="z-index: 0; display: flex; flex-direction: row; width: 100%; height: 580px; margin-top: 85px; position: relative;">
										<div class="carousel-indicators">
											<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
											<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
											<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
										</div>
										<!-- 캐러셀 이미지 -->
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
									<!-- 캐러셀 이미지 끝 -->
									<div
										style="margin-top: 73px; margin-left: auto; margin-right: auto; width: 1027px; display: flex; flex-direction: row; justify-content: space-between;">
										<div>
											<div style="display: flex; flex-direction: row;">
												<div style="overflow: hidden; width: 90px; height: 90px; border: none; border-radius: 12px; margin-top: 5px;">
													<img width="90" height="90" alt="경북 영주시 휴천동 펫시터"
														src="../sitterView/08d8f81d5fd74638bcd1e4d6792e95d0.jpg"
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
														src="../sitterView/verification.png">
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
											<c:if test="${abandonedAnimalDTO.abani_stat eq 'prtct' }">
											 <!-- 날짜 계산 -->
									        <fmt:formatDate var="sDate" value="${abandonedAnimalDTO.abani_regdate }" pattern="yyyyMMdd" />
									        <fmt:parseDate var="pDate" value="${sDate }" pattern="yyyyMMdd" />
									        <fmt:parseNumber value="${pDate.time / (1000*60*60*24)}" integerOnly="true" var="isDate" scope="request" />
									        <%long currentMilliseconds = new Date().getTime();
											String nDate = String.valueOf(currentMilliseconds /(1000*60*60*24) -1); %>
									        <fmt:parseNumber value="<%=nDate %>" integerOnly="true" var="nowDate" scope="request" />
											<!-- 등록일로부터 10일이 지나면 nowDate - isDate >=10  -->
											<c:if test="${nowDate - isDate >=10}">
											<c:if test="${not empty sessionScope.idx  }">
												<div style="margin-top: 80px; margin-bottom: 80px;padding-left: 40%;" >
													 <button onclick="location.href='<c:url value='/' />AbandonedAnimal/AdoptApplicationForm.do?abani_idx=${abandonedAnimalDTO.abani_idx }';" 
													 type="button" class="btn btn-success" style="width: 200px;height: 50px;">입양하기</button>
												</div>
											</c:if>
											</c:if>
											</c:if>
											
											
											
											<!-- 입양중일 경우 -->
											<c:if test="${abandonedAnimalDTO.abani_stat eq 'adopt'  }">
											<!-- 유기동물을 입양한 유저일 떄 -->
											<c:if test="${sessionScope.idx eq  abandonedAnimalDTO.adoptmember_idx}">
												<div style="margin-top: 80px;">
													<button onclick="location.href='#';"
													type="button" class="btn btn-success" style="width: 200px;height: 50px;">후기등록</button> 
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
																	style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72); margtin-bottom: 0">${row.member_namer }</p>
																<p
																	style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">${row.review_regdate }</p>
															</div>
															<!-- 좋아요 -->
															<!-- 좋아요 처리할 스크립트 -->
															<script type="text/javascript">
															$(function(){
																var a = ${row.review_idx }
																$('p[id=like${row.review_idx}]').click(function(){
															
																	$.ajax({
																		
																		url : "./abanilike",
																		
																		type : "GET",
																		
																		data : {
																			review_idx : a,
																			member_idx : '${sessionScope.idx }',
																			like_check : $('#like_check').val(),
																			abani_idx : '${ abandonedAnimalDTO.abani_idx}',
																		},
															
																		success : function () {
																			
																			if($('#like_check${row.review_idx}').val()==0){
																				console.log("plus");
																				$('#like_check${row.review_idx}').val('1');
																				$('#like_img${row.review_idx}').attr('src', "../images/heart_o.png");
																				var val01 = $('#like_num${row.review_idx}').val();
																				var val02 = parseInt(val01) + 1;
																				$('#like_num${row.review_idx}').val(val02);
																				
																			}
																			else{
																				console.log("minus");
																				$('#like_check${row.review_idx}').val('0');
																				$('#like_img${row.review_idx}').attr('src', "../images/heart_x.png");
																				var val01 = $('#like_num${row.review_idx}').val();
																				var val02 = parseInt(val01) - 1;
																				$('#like_num${row.review_idx}').val(val02);
																			}
																		},
																		
																		error : function () {
																			console.log("실패");
																		},
																	});
																});
															});
															</script>
															<div style="display: flex; flex-direction: row; margin-left:auto;  float: right; padding-right: 10px;">
																<c:if test="${not empty sessionScope.idx }" var="sessionIdx">
																
																<div style="padding-right: 10px;">
																<% likeEx = 0; %>
																<c:forEach items="${likeLists }" var="likerow">
																<c:if test="${likerow.review_idx eq row.review_idx }">
																<% likeEx =1; %>
																</c:if>
																</c:forEach>
																
																<input type="hidden" id="like_check${row.review_idx}" name="like_check${row.review_idx}" value="<%=likeEx %>"/>
																<button type="button" id="like${row.review_idx}" name="like${row.review_idx}" style="border: 0;outline: 0;background-color: white;">
																<c:if test="<%=likeEx==1 %>">
																<p style="cursor: pointer;" id="like${row.review_idx }">
																	<img id="like_img${row.review_idx}" src="../images/heart_o.png" alt="" width="20" height="20" />
																</p>
																</c:if>
																<c:if test="<%=likeEx==0 %>">
																<p style="cursor: pointer;" id="like${row.review_idx }">
																	<img id="like_img${row.review_idx}" src="../images/heart_x.png" alt="" width="20" height="20" />
																</p>
																</c:if>
																</button>
																</div>
																</c:if>
																<c:if test="${not sessionIdx }">
																<div style="padding-right: 10px;">
																	<img id="like_img${row.review_idx}" src="../images/heart_o.png" alt="" width="20" height="20" />
																</div>	
																</c:if>
																<div style=" width: 20px; margin-right: 30px;">
																	<p>
																	<input type="text" id="like_num${row.review_idx}" style="width: 40px; height: 20px; border: 0" value="${row.countlike }"/>
																	</p>
																</div>
															</div>
															<!-- 좋아요 끝 -->
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
														<form name="comm${row.review_idx }" id="comm${row.review_idx }">
														<input type="hidden" id="review_idx${row.review_idx }" name="review_idx" value="${row.review_idx }">
														<input type="hidden" id="member_idx${row.review_idx }" name="member_idx" value="${sessionScope.idx }">
														<input type="hidden" id="abani_idx${row.review_idx }" name="abani_idx" value="${abandonedAnimalDTO.abani_idx }">
														<div>
															<textarea style="width:972px; height: 150px; margin-top: 30px;" id="reviewcomm_content${row.review_idx }" name="reviewcomm_content"></textarea>														
														</div>
														<div style="display: flex; flex-direction: column-reverse; margin-left:auto;  float: right; vertical-align:bottom; padding-bottom: 3px; padding-top: 10px; padding-right:25px;">
															<button type="button" onclick="commentInsert${row.review_idx }();" class="btn btn-info">등록</button>
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
														
														<c:forEach items="${reviewCommLists }" var="rerow" varStatus="index">
														<c:if test="${rerow.review_idx eq row.review_idx }" >
														
														
														
															<div
															style="display: flex; flex-direction: row; align-self: flex-end; margin-top: 32px; width: 600px">
															<img width="50" height="50"
															src="<c:url value='/' />Uploads/${ rerow.member_photo }"
															style="object-fit: cover; border-radius: 50%;">
															<div
																style="background-color: rgb(250, 250, 252); width: 100%; padding: 20px 24px;">
																<div
																	style="display: flex; flex-direction: row; align-items: center;">
																	<p
																		style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">${rerow.member_namec }님
																		댓글</p>
																	<p
																		style="font-size: 13px; line-height: 19px; color: rgb(157, 164, 180); margin-left: 9px;">${rerow.reviewcomm_regdate }</p>
																</div>
																<p style="font-size: 15px; line-height: 25px; color: rgb(85, 85, 85); margin-top: 12px;">${rerow.reviewcomm_content }</p>
															</div>
															</div>
															
														</c:if>
														<c:if test="${index.last  }">
														<div id="scroll${row.review_idx }"></div>
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
	 <jsp:include page="../common/foot.jsp" />
</body>
</html>