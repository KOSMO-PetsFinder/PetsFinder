<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charSet="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>PetsFinder</title>
<style>
*{font-family: 'BM JUA_TTF'}
</style>
</head>
<body>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
			height="0" width="0" style="display: none; visibility: hidden;"></iframe>
	</noscript>
	<div id="__next">
		<div>
			<div>
				<div class="wrapper">
					<div id="applyform-container">
						<div class="desktop hidden-s">
							<section style="width: 100%; margin-top: 85px">
								<div style="width: 1000px; margin: 0px auto; padding-top: 158px">
									<h2 style="font-size: 50px; font-weight: 600; color: #555555">
										지원서 작성하기
									</h2>
								</div>
							</section>
							
							<form action="<c:url value='/'/>sitterApl" name="sitterApplFrm" method="post">
							<input type="hidden" name="idx" value="${idx }" />
							<section style="background-color: #FAFAFB; margin-top: 102px">
								<div style="width: 1000px; margin: 0px auto; padding-top: 95px">
									<p style="font-size: 27px; font-weight: 600; color: #555555">1.
										기본 정보</p>
									<div
										style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
										<div style="display: flex; align-items: center">
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													지원자 성명 <span style="color: #71A2FF">*</span>
												</p>
												<div style="margin-top: 15px">
													<input class="form-control" type="text" name="name" readonly value="${name }" placeholder="이름"
														style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													성별 <span style="color: #71A2FF">*</span>
												</p>
												<div style="display: flex; margin-top: 15px">
												<input type="hidden" name="gender" value="${gender }" />
													<c:if test="${gender eq 'F'}" var="gen">
													<div
														style="display: flex; justify-content: center; align-items: center; border: 2px solid #75c9ba; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<p style="position: absolute; font-size: 17px; color: #333333; line-height: 50px"></p>
														<input class="form-control" type="button" value="F" name="gender" readonly checked class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>
													<div
														style="display: flex; justify-content: center; align-items: center; border: 2px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<p style="position: absolute; font-size: 17px; color: #333333; line-height: 50px"></p>
														<input class="form-control" type="button" value="M" readonly name="gender" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>
													</c:if>	
													<c:if test="${not gen }">	
													<div
														style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<p style="position: absolute; font-size: 17px; color: #333333; line-height: 50px"></p>
														<input type="button" value="F" name="gender" readonly  class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>											
													<div
														style="display: flex; justify-content: center; align-items: center; border: 2px solid #75c9ba; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<p style="position: absolute; font-size: 17px; color: #333333; line-height: 50px"></p>
														<input type="button" value="M" readonly name="gender" checked class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>
													</c:if>
												</div>
												
											</div>
										</div>
										<div
											style="display: flex; align-items: center; margin-top: 54px">
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													생년월일 <span style="color: #71A2FF">*</span>
												</p>
												<p style="font-size: 13px; color: #999999">
													27세 이상 / 96년생부터 지원이 가능합니다.
												</p>
												<div style="margin-top: 5px">
													<input class="form-control" type="text" value="${birth }" name="birth" maxLength="8" readonly
														placeholder="예) 19940101"
														style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													연락처 <span style="color: #71A2FF">*</span>
												</p>
												<div style="margin-top: 15px">
													<input class="form-control" type="text" value="${phone }" name="phone" readonly maxLength="12"
														placeholder="01012345678"
														style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
												</div>
											</div>
										</div>
										<div
											style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
											<p style="font-size: 17px; font-weight: 600; color: #555555">
												거주지 주소 <span style="color: #71A2FF">*</span>
											</p>
											<div style="margin-top: 15px">
												<input class="form-control" type="text" value="${address }" name="address" readonly placeholder="예) 서울시 강남구 논현동"
													style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
											</div>
										</div>
										<div
											style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
											<p style="font-size: 17px; font-weight: 600; color: #555555">
												본인을 포함한 가족구성원 흡연 여부 <span style="color: #71A2FF">*</span>
											</p>
											<div
												style="margin-top: 31px; display: flex; align-items: center">
												<div style="width: 270px">
												<!-- 흡연여부 radio-->
													<!-- 네, 흡연자가 있어요. -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														  <input class="form-check-input" type="radio" name="smoke" value="1" id="smoker">
  														<label class="form-check-label" for="smoker" style="font-size: 17px; margin-left: 10px">
														    네, 흡연자가 있어요.
														  </label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 아니요, 흡연자가 없습니다. -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="smoke" value="0" id="nonsmoker">
  														<label class="form-check-label" for="nonsmoker" style="font-size: 17px; margin-left: 10px">
														    아니오, 흡연자는 없습니다.
														  </label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section style="background-color: #FAFAFB">
								<div style="width: 1000px; margin: 0px auto; padding-top: 84px" >
									<p style="font-size: 27px; font-weight: 600; color: #555555">2.
										반려 경험/경력</p>
									<div
										style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
										<p style="font-size: 17px; font-weight: 600; color: #555555">
											반려견을 반려한(키운) 총 기간 <span style="color: #71A2FF">*</span>
										</p>
										<p style="margin-top: 10px">
											성인되기 전 가족과 키우던 기간은 제외하여 정확하게 기재 바랍니다.<br />고양이, 햄스터 등 다른
											반려동물은 제외, 강아지 반려기간만 체크해 주세요.
										</p>
										<div
											style="margin-top: 34px; display: flex; align-items: center">
											<div style="width: 270px">
												<!-- 1.10년이상 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="havepet" value="10년이상" id="10y">
												  <label class="form-check-label" for="10y" style="font-size: 17px; margin-left: 5px">
												    10년 이상
												  </label>
												</div>
												
											</div>
											<div style="width: 270px">
												<!-- 2.5년이상-10년미만 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="havepet" value="5~10년" id="5to10y">
												  <label class="form-check-label" for="5to10y" style="font-size: 17px; margin-left: 5px">
												    5년 이상 - 10년 미만
												  </label>
												</div>
												
											</div>
											<div style="width: 270px">
												<!-- 3.1년이상-5년미만 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="havepet" value="1~5년" id="1to5y">
												  <label class="form-check-label" for="1to5y" style="font-size: 17px; margin-left: 5px">
												    1년 이상 - 5년 미만
												  </label>
												</div>
											</div>
										</div>
										<div
											style="margin-top: 15px; display: flex; align-items: center">
											<div style="width: 270px">
												<!-- 4.1년미만 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style=" width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="havepet" value="1년미만" id="1y">
												  <label class="form-check-label" for="1y" style="font-size: 17px; margin-left: 5px">
												    1년 미만
												  </label>
												</div>
											</div>
											<div style="width: 270px">
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style="width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="havepet" value="none" id="noExperience">
												  <label class="form-check-label" for="noExperience" style="font-size: 17px; margin-left: 5px">
												    강아지 반려 경험 없음
												  </label>
												</div>
											</div>
										</div>
										<p
											style="font-size: 17px; font-weight: 600; color: #555555; margin-top: 55px">
											<span style="color: #71A2FF">[중요]</span>현재까지 반려동물과 반려한 경험 <span
												style="color: #71A2FF">*</span>
										</p>
										<p
											style="margin-top: 10px; font-weight: 400; color: #999999; font-size: 15px">
											저희 PetsFinder는<span style="font-size: 15px; color: #71A2FF">
												강아지 반려 경험을 펫시터로서의 중요한 요건으로 판단</span>합니다. 지금까지 반려하셨던 반려동물의 종류, 품종,
											마리 수, 총 반려 기간, 키우게 된 동기 등에 대해 상세하게 기재해 주시고, 가족과 키웠는데 자신이 주요
											담당자였는지 혹은 주요 담당자가 아니었다면 어떤 역할을 주로 맡았는지 그 내용을 자세히 서술해 주세요.
										</p>
										<textarea class="form-control" name="explain"
											placeholder="예) 5년 동안 푸들 아이 둘을 가족과 함께 키웠고, 두 아이 모두 무지개 다리 건넌 뒤에 유기견 보호소에서 믹스견 아이를 2년 전에 데려와 지금까지 저 혼자 키우고 있습니다."
											style="width: 100%; height: 130px; min-height: 130px; padding-top: 18px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px; margin-top: 25px"></textarea>
									</div>
								</div>
							</section>
							<section style="background-color: #FAFAFB; padding-bottom: 208px">
								<div style="width: 1000px; margin: 0px auto; padding-top: 84px">
									
									<p
											style="font-size: 27px; font-weight: 600; color: #555555; margin-top: 55px">
											동의 사항 <span style="color: #71A2FF">*</span>
										</p>
										<div style="margin-top: 26px">
											<!-- 개인정보 수집동의 -->
											<div style="display: flex; align-items: center" class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
											  <label class="form-check-label" for="flexCheckDefault" style="font-size: 17px; color: #555555; margin-left: 5px">
											    개인정보 수집/이용에 동의합니다.
											  </label>
											  <div class="valid-feedback"></div>
											  <div class="invalid-feedback">동의를 해야만 제출이 가능합니다.</div>
											</div>
										</div>
										<div style="margin-top: 26px">
											<!-- 본인작성 사실 확인 -->
											<div style="display: flex; align-items: center" class="form-check">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1" required>
											  <label class="form-check-label" for="flexCheckDefault1" style="font-size: 17px; color: #555555; margin-left: 5px">
											    지원서에 기재된 내용은
													모두 본인이 작성하였으며, 사실과 다름 없음을 확인했습니다.
											  </label>
											  <div class="valid-feedback"></div>
											  <div class="invalid-feedback">동의를 해야만 제출이 가능합니다.</div>
											</div>
											<p
												style="font-size: 15px; color: #999999; margin-left: 32px; margin-top: 10px">*
												사실과 다를 경우, 합격이 취소될 수 있습니다.</p>
										</div>
									
									<div
										style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
										<button type="submit"
											style="width: 270px; color:white; border:none; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer">
											최종 	제출
										</button>
									</div>
								</div>
							</section>
							</form>
						</div>
			</div>
		</div>
		</div>
	</div>
	</div>
</body>
</html>