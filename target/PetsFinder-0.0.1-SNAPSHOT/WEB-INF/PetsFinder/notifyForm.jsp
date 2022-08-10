<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기동물 신고 접수</title>
  <!-- bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 100px">
      <img src="./images/mypage.png" alt="" style="width:30px; padding-right: 5px"> 마이페이지 > 내가 쓴 글 보기 > 유기동물 신고
    </div>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
			height="0" width="0" style="display: none; visibility: hidden;"></iframe>
	</noscript>
	<form action="./notifyForm.do" id="reportFrm" name="reportFrm" method="post" style="margin-top:100px">
	<div id="__next">
		<div>
			<div class="wrapper">
				<header id="hd">
				</header>
				<div id="applyform-container">
					<div class="desktop hidden-s">
						<section style="width: 100%;">
							<div style="width: 1000px; margin: 0px auto;">
								<h2 style="font-size: 50px; font-weight: 600; color: #555555">
									신고하기</h2>
							</div>
						</section>
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
												제목 <span style="color: #71A2FF">*</span>
											</p>
											<div style="margin-top: 15px">
												<input type="text" value="" name="dclrAbnd_title"
													style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
											</div>
										</div>
									</div>
									<div
										style="display: flex; align-items: center; margin-top: 54px">
										<div
											style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
											<p style="font-size: 17px; font-weight: 600; color: #555555">
												내용 <span style="color: #71A2FF">*</span>
											</p>
											<div style="margin-top: 15px">
												<textarea name="dclrAbnd_content" id="" style="width: 100%; height: 300px; border: 1px solid #EBEBEB; border-radius: 5px; padding: 10px 20px 0 20px"></textarea>
											</div>
										</div>
									</div>
									<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
										<p style="font-size: 17px; font-weight: 600; color: #555555">
											발견 주소 <span style="color: #71A2FF">*</span>
										</p>
										<div style="margin-top: 15px">
											<input type="text" value="" name="dclrAbnd_loc" placeholder="예) 서울시 강남구 논현동"
												style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
										</div>
									</div>
									<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
										<p style="font-size: 17px; font-weight: 600; color: #555555">
											사진 <span style="color: #71A2FF">*</span>
										</p>
										<input class="form-control" type="file" name="dclrAbnd_photo">
									</div>
								</div>
							</div>
						</section>
						<section style="background-color: #FAFAFB; padding-bottom: 208px">
							<div style="width: 1000px; margin: 0px auto; padding-top: 84px">
								<p style="font-size: 27px; font-weight: 600; color: #555555">2.
									기타 정보</p>
								<div
									style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px;">
									<p style="font-size: 17px; font-weight: 600; color: #555555; margin-top: 55px">
										동의 사항 <span style="color: #71A2FF">*</span>
									</p>
									<div style="margin-top: 26px">
										<!-- 개인정보 수집동의 -->
										<div style="display: flex; align-items: center" class="form-check">
											<div
												style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
											<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault" style="font-size: 17px; color: #555555; margin-left: 5px">
										    개인정보 수집/이용에 동의합니다
										  </label>
										</div>
									</div>
									<div style="margin-top: 26px">
										<!-- 본인작성 사실 확인 -->
										<div style="display: flex; align-items: center" class="form-check">
											<div
												style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
											<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
										  <label class="form-check-label" for="flexCheckDefault" style="font-size: 17px; color: #555555; margin-left: 5px">
										    지원서에 기재된 내용은
												모두 본인이 작성하였으며, 사실과 다름 없음을 확인했습니다
										  </label>
										</div>
									</div>
								</div>
								<div
									style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
									<script type="text/javascript">
										function reportSubmit() {
											document.reportFrm.submit();
										}
									</script>
									<div
										style="width: 270px; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer">
										<p style="font-size: 20px; font-weight: 600; color: white" onclick="reportSubmit();">신고하기</p>
									</div>
								</div>
							</div>
						</section>
					</div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>