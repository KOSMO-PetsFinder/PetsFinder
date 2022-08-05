<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 입양 신청 폼  -->
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="naver-site-verification"
	content="9d4ada4a32e188c9c5e42e8a751c4f497033d0c7" />
<link rel="shortcut icon" href="/static/images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="/static/js/slick.min.css" />
<link rel="stylesheet" type="text/css" href="/static/js/slick.min.js" />
<link rel="stylesheet" type="text/css"
	href="/static/js/slick-theme.min.css" />
<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="/static/js/polyfill.min.js"></script>
<script type="text/javascript" src="/static/js/kakao.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f23556bd57117a96842def422603994"></script>
<script type="text/javascript" src="/static/js/ua-parser.min.js"></script>
<script type="text/javascript" src="/static/js/react.production.min.js"></script>
<script type="text/javascript"
	src="/static/js/react-copy-to-clipboard.js"></script>
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
		}
		var d = window.document;
		var ch = function() {
			ch.c(arguments);
		};
		ch.q = [];
		ch.c = function(args) {
			ch.q.push(args);
		};
		w.ChannelIO = ch;
		function l() {
			if (w.ChannelIOInitialized) {
				return;
			}
			w.ChannelIOInitialized = true;
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
			s.charset = 'UTF-8';
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		}
		if (document.readyState === 'complete') {
			l();
		} else if (window.attachEvent) {
			window.attachEvent('onload', l);
		} else {
			window.addEventListener('DOMContentLoaded', l, false);
			window.addEventListener('load', l, false);
		}
	})();
	ChannelIO(
			'boot',
			{
				"pluginKey" : "28718193-bc8b-4f0a-bcee-32aff281d5f2",
				"customLauncherSelector" : "#channel-io-button, .custom-channel-io-button",
				"hideDefaultLauncher" : true
			});
</script>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-PDQCPDS');
</script>
<script>
	(function() {
		if (typeof NodeList.prototype.forEach === "function")
			return false;
		NodeList.prototype.forEach = Array.prototype.forEach;
	})();
</script>
<script>
	var parser = new UAParser();
	var browser = parser.getResult().browser;
	if (browser.name === 'IE' && parseInt(browser.version) < 11) {
		if (window.location.pathname !== '/notsupported') {
			window.location.href = '/notsupported';
		}
	} else {
		if (window.location.pathname === '/notsupported') {
			window.location.href = '/';
		}
	}
</script>
<meta charSet="utf-8" />
<title>펫시터 교육과 지원을 통해 전문가로 성장하세요 | 펫플래닛</title>
<meta name="description"
	content="펫플래닛 반려동물 전문가에게 펫시터 교육을 받고 펫시터 알바에서 펫케어 전문가로 성장하세요." />
<meta name="keywords" content="펫시터알바,펫시터자격증,펫시터교육,펫시터자격,펫시터월급" />
<link rel="canonical" href="https://petplanet.co/apply" />
<meta property="og:type" content="website" />
<meta property="og:title" content="펫시터 교육과 지원을 통해 전문가로 성장하세요 | 펫플래닛" />
<meta property="og:description"
	content="펫플래닛 반려동물 전문가에게 펫시터 교육을 받고 펫시터 알바에서 펫케어 전문가로 성장하세요." />
<meta property="og:image" content="/static/images/common/og_home.png" />
<meta property="og:url" content="https://petplanet.co/apply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="next-head-count" content="11" />
<link rel="preload"
	href="/_next/static/aga_gQ2FFDHz3WZk3zSb8/pages/applyform.js"
	as="script" />
<link rel="preload"
	href="/_next/static/aga_gQ2FFDHz3WZk3zSb8/pages/_app.js" as="script" />
<link rel="preload"
	href="/_next/static/runtime/webpack-4b444dab214c6491079c.js"
	as="script" />
<link rel="preload"
	href="/_next/static/chunks/commons.7c16b5d39bd35b619670.js" as="script" />
<link rel="preload"
	href="/_next/static/chunks/styles.58a0c59fae1a4a2af04e.js" as="script" />
<link rel="preload"
	href="/_next/static/runtime/main-02a579c90518306d4183.js" as="script" />
<link rel="stylesheet"
	href="/_next/static/css/commons.c9212cbb.chunk.css" />
<link rel="stylesheet"
	href="/_next/static/css/styles.7298462c.chunk.css" />
<link rel="stylesheet"
	href="/_next/static/css/static/aga_gQ2FFDHz3WZk3zSb8/pages/_app.js.548dbefb.chunk.css" />
</head>
<body> 
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
			height="0" width="0" style="display: none; visibility: hidden;"></iframe>
	</noscript>
	<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 35px">
    <img src="./images/mypage.png" alt="" style="width:30px; padding-right: 5px"> 마이페이지 > 입양신청관리 > 입양신청
  </div>
	<div id="__next">
		<div>
			<div>
				<div class="wrapper">
					<header id="hd">
					</header>
					<div id="applyform-container">
						<div class="desktop hidden-s">
							<section style="width: 100%;">
								<div style="width: 1000px; margin: 0px auto;">
									<h2 style="font-size: 50px; font-weight: 600; color: #555555">
										지원서 작성하기</h2>
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
													지원자 성명 <span style="color: #71A2FF">*</span>
												</p>
												<div style="margin-top: 15px">
													<input type="text" value="" placeholder="이름"
														style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													성별 <span style="color: #71A2FF">*</span>
												</p>
												
												<div style="display: flex; margin-top: 15px">
													<div
														style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<!-- 여성버튼 -->	
														<input type="button" value="여성" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>
													<div style="width: 10px"></div>
													<div
														style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
														<!-- 남성버튼 -->
														<input type="button" value="남성" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
													</div>
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
												<p style="margin-top: 10px; font-size: 13px; color: #999999">
													27세 이상 /
													<!-- -->
													96
													<!-- -->
													년생 부터 지원이 가능합니다.
												</p>
												<div style="margin-top: 15px">
													<input type="number" value="" maxLength="8"
														placeholder="예) 19940101"
														style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
												</div>
											</div>
											<div
												style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
												<p style="font-size: 17px; font-weight: 600; color: #555555">
													연락처 <span style="color: #71A2FF">*</span>
												</p>
												<p style="margin-top: 10px">입력한 휴대폰 번호로 합격 여부를 알려드립니다.</p>
												<div style="margin-top: 15px">
													<input type="number" value="" maxLength="12"
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
												<input type="text" value="" placeholder="예) 서울시 강남구 논현동"
													style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
											</div>
										</div>
										<div
											style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
											<p style="font-size: 17px; font-weight: 600; color: #555555">
												가족 구성원 <span style="color: #71A2FF">*</span>
											</p>
											<div style="margin-top: 31px; display: flex; align-items: center">
												<div style="width: 270px; display: flex; align-items: center" class="form-check" >
													<div style="display: flex; align-items: center">
														<div
															style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" id="solo">
														<label class="form-check-label" for="solo" style="font-size: 17px; margin-left: 10px;">1인 가구</label>
													</div>
												</div>
												
												<div
													style="width: 270px; display: flex; align-items: center" class="form-check">
													<div style="display: flex; align-items: center">
														<div
															style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" id="couple">
														<label class="form-check-label" for="couple" style="font-size: 17px; margin-left: 10px;">2인 가구</label>
													</div>
												</div>
												
												<div
													style="width: 270px; display: flex; align-items: center" class="form-check">
													<div style="display: flex; align-items: center">
														<div
															style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" id="plusbaby">
														<label class="form-check-label" for="plusbaby" style="font-size: 17px; margin-left: 10px;">3인 가구</label>
													</div>
												</div>
											</div>
											<!-- 다음줄 -->
											<div style="margin-top: 15px; display: flex; align-items: center">
												<div
													style="width: 270px; display: flex; align-items: center" class="form-check">
													<div style="display: flex; align-items: center">
														<div
															style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" id="plusbaby2">
														<label class="form-check-label" for="plusbaby2" style="font-size: 17px; margin-left: 10px;">4인 가구</label>
													</div>
												</div>

												<div
													style="width: 270px; display: flex; align-items: center" class="form-check">
													<div style="display: flex; align-items: center">
														<div
															style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" id="bigfamily">
														<label class="form-check-label" for="bigfamily" style="font-size: 17px; margin-left: 10px;">5인 가구 이상</label>
													</div>
												</div>
												
												</div>
											</div>
										</div>
										<div
											style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
											<p style="font-size: 17px; font-weight: 600; color: #555555">
												본인을 포함한 가족구성원 직업 여부 <span style="color: #71A2FF">*</span>
											</p>
											<div
												style="margin-top: 31px; display: flex; align-items: center">
												<div style="width: 270px">
												<!-- 흡연여부 radio-->
													<!-- 네, 흡연자가 있어요. -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														  <input class="form-check-input" type="radio" name="smokingStatus" id="smoker">
  														<label class="form-check-label" for="smoker" style="font-size: 17px; margin-left: 10px">
														    네, 직업이 있어요.
														  </label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 아니요, 흡연자가 없습니다. -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="smokingStatus" id="nonsmoker">
  														<label class="form-check-label" for="nonsmoker" style="font-size: 17px; margin-left: 10px">
														    아니오, 직업이 없습니다.
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
														style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="Experience" id="10y">
												  <label class="form-check-label" for="10y" style="font-size: 17px; margin-left: 5px">
												    10년 이상
												  </label>
												</div>
												
											</div>
											<div style="width: 270px">
												<!-- 2.5년이상-10년미만 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="Experience" id="5to10y">
												  <label class="form-check-label" for="5to10y" style="font-size: 17px; margin-left: 5px">
												    5년 이상 - 10년 미만
												  </label>
												</div>
												
											</div>
											<div style="width: 270px">
												<!-- 3.1년이상-5년미만 -->
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="Experience" id="1to5y">
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
														style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="Experience" id="1y">
												  <label class="form-check-label" for="1y" style="font-size: 17px; margin-left: 5px">
												    1년 미만
												  </label>
												</div>
											</div>
											<div style="width: 270px">
												<div style="display: flex; align-items: center" class="form-check">
													<div
														style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
													<input class="form-check-input" type="radio" name="Experience" id="noExperience">
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
											저희 팻츠 파인더는<span style="font-size: 15px; color: #71A2FF">
												강아지 반려 경험을 펫시터로서의 중요한 요건으로 판단</span>합니다. 지금까지 반려하셨던 반려동물의 종류, 품종,
											마리 수, 총 반려 기간, 키우게 된 동기 등에 대해 상세하게 기재해 주시고, 가족과 키웠는데 자신이 주요
											담당자였는지 혹은 주요 담당자가 아니었다면 어떤 역할을 주로 맡았는지 그 내용을 자세히 서술해 주세요.
										</p>
										<textarea
											placeholder="예) 5년 동안 푸들 아이 둘을 가족과 함께 키웠고, 두 아이 모두 무지개 다리 건넌 뒤에 유기견 보호소에서 믹스견 아이를 2년 전에 데려와 지금까지 저 혼자 키우고 있습니다."
											style="width: 100%; height: 130px; min-height: 130px; padding-top: 18px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px; margin-top: 25px"></textarea>
										<p
											style="font-size: 17px; font-weight: 600; color: #555555; margin-top: 54px">그
											외 반려동물 관련 경력 또는 경험(봉사활동/알바/자격증 등)</p>
										<p style="margin-top: 10px">현봉사활동/동물병원 근무경험/고양이카페나 애견카페
											이용경험/호텔링, 펫시터 이용경험/아르바이트 경험, 자격증 취득 등 반려동물 관련 경력이나 경험을
											기재해주세요. 없을 경우 생략하셔도 됩니다.</p>
										<textarea placeholder="그 외 반려동물 관련 경력 또는 경험에 대해서 알려주세요."
											style="width: 100%; height: 130px; min-height: 130px; padding-top: 18px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px; margin-top: 25px"></textarea>
									</div>
								</div>
							</section>
							<section style="background-color: #FAFAFB; padding-bottom: 208px">
								<div style="width: 1000px; margin: 0px auto; padding-top: 84px">
									<p style="font-size: 27px; font-weight: 600; color: #555555">3.
										기타 정보</p>
									<div
										style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
										<div style="margin-bottom: 55px">
											<p style="font-size: 17px; font-weight: 600; color: #555555">팻츠 파인더를
												알게 된 경로</p>
											<div style="margin-top: 31px; display: flex">
												<div style="width: 270px">
													<!-- 1. 포탈검색 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="search">
													  <label class="form-check-label" for="search">
													    포탈 검색
													  </label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 2.인스타/페북 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
															<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="social">
															<label class="form-check-label" for="social">
																인스타그램/페이스북
															</label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 3.요긱 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="yogig">
													  <label class="form-check-label" for="yogig">
													    요긱
													  </label>
													</div>
												</div>
											</div>
											<div style="margin-top: 22px; display: flex">
												<div style="width: 270px">
													<!-- 4.긱플 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="gigplanner">
													  <label class="form-check-label" for="gigplanner">
													    긱플
													  </label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 5.여성인력개발센터 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="womenCenter">
													  <label class="form-check-label" for="womenCenter">
													    여성인력개발센터
													  </label>
													</div>
												</div>
												<div style="width: 270px">
													<!-- 6.펫플 펫시터의 추천 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="recommendation">
													  <label class="form-check-label" for="recommendation">
													    다른 펫시터의 추천
													  </label>
													</div>
												</div>
											</div>
											<div style="margin-top: 22px; display: flex">
												<div style="width: 270px">
													<!-- 7.직접입력 -->
													<div style="display: flex; align-items: center" class="form-check">
														<div
															style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
														<input class="form-check-input" type="radio" name="howDidYouHearAboutUs" id="etc">
													  <label class="form-check-label" for="etc">
													    직접입력
													  </label>
													</div>
												</div>
											</div>
										</div>
										<p
											style="font-size: 17px; font-weight: 600; color: #555555; margin-top: 55px">
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
											<p
												style="font-size: 15px; color: #999999; margin-left: 32px; margin-top: 10px">*
												사실과 다를 경우, 합격이 취소될 수 있습니다.</p>
										</div>
									</div>
									<p
										style="font-size: 27px; font-weight: 600; color: #555555; margin-top: 85px">[필독]
										채용 절차 안내</p>
									<div
										style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
										<div style="position: relative">
											<div
												style="position: absolute; border-left: dashed 2.5px #E0E0E0; height: calc(100% - 12px); margin-left: 11px; z-index: 0"></div>
											<div style="display: flex">
												<img src="/static/images/applyform/1.png"
													style="width: 24px; height: 24px; margin-right: 18px; z-index: 1" />
												<div>
													<h1
														style="font-weight: 600; font-size: 17px; letter-spacing: -0.1px; line-height: 26px; color: #555555">서류
														심사</h1>
													<p
														style="font-weight: 400; font-size: 17px; line-height: 28px; color: #555555; margin-top: 18px">
														서류 합격자에 한해서<span style="font-weight: 600; color: #71A2FF">
															010-4333-8040 </span>번호로 문자를 3일 이내에 발송해 드립니다.
													</p>
													<h3
														style="font-weight: 400; font-size: 15px; letter-spacing: -0.1px; line-height: 23px; color: #999999; margin-top: 10px">*
														안전한 링크이므로, 클릭 후 면접이 가능한 일정을 선택하여 주시면 됩니다.</h3>
													<div
														style="background-image: url(/static/images/applyform/interview2.png); background-size: contain; width: 603px; height: 318px; margin-top: 28px; border: solid 1px #EBEBEB; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1)"></div>
												</div>
											</div>
											<div style="display: flex; margin-top: 55px">
												<img src="/static/images/applyform/2.png"
													style="width: 24px; height: 24px; margin-right: 18px; z-index: 1" />
												<div>
													<h1
														style="font-weight: 600; font-size: 17px; letter-spacing: -0.1px; line-height: 26px; color: #555555">화상
														면접/환경 안전성 검증</h1>
													<p
														style="font-weight: 400; font-size: 17px; line-height: 28px; color: #555555; margin-top: 18px">
														예약하신 면접 날짜에<span style="font-weight: 600; color: #71A2FF">
															지원서 내용 및 펫시터 자격 관련하여 인터뷰</span>를 진행하고, 돌봄이 진행될<br />공간을 지원자님이
														촬영하여<span style="font-weight: 600; color: #71A2FF">
															돌봄 환경에 대한 안전성 검증</span>을 받습니다
													</p>
												</div>
											</div>
											<div style="display: flex; margin-top: 57px">
												<img src="/static/images/applyform/3.png"
													style="width: 24px; height: 24px; margin-right: 18px; z-index: 1" />
												<div>
													<h1
														style="font-weight: 600; font-size: 17px; letter-spacing: -0.1px; line-height: 26px; color: #555555">온라인
														교육</h1>
													<p
														style="font-weight: 400; font-size: 17px; line-height: 28px; color: #555555; margin-top: 18px">
														면접 합격자에 한해서 3일 이내에 온라인 교육 일정과 펫시터 계약서 문자를 발송해 드립니다.<span
															style="font-weight: 600; color: #71A2FF"> 총 2일의
															온라인<br />교육을 진행
														</span>하며, 1일차 온라인 강의 시청, 2일차 온라인 화상 라이브 교육 모두 참여하셔야합니다.
													</p>
													<h3
														style="font-weight: 400; font-size: 13px; letter-spacing: -0.2px; line-height: 22px; color: #999999; margin-top: 18px">*
														교육이 종료된 후 진행되는 테스트에 통과하셔야 최종적으로 펫시터 활동이 가능합니다.</h3>
													<div
														style="background-image: url(/static/images/applyform/education2.png); background-size: contain; width: 603px; height: 328px; margin-top: 28px; border: solid 1px #EBEBEB; border-radius: 10px; box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1)"></div>
												</div>
											</div>
											<div style="display: flex; margin-top: 57px">
												<img src="/static/images/applyform/4.png"
													style="width: 24px; height: 24px; margin-right: 18px; z-index: 1" />
												<h1
													style="font-weight: 600; font-size: 17px; letter-spacing: -0.1px; line-height: 26px; color: #555555">펫시터
													등록</h1>
											</div>
										</div>
										<div style="margin-left: 42px">
											<p
												style="font-weight: 400; font-size: 17px; line-height: 28px; color: #555555; margin-top: 18px">
												펫시터 활동<span style="font-size: 15px; color: #999DA7">(가족
													구성원의 알레르기 또는 고객님 강아지의 짖음, 배변 등의 문제에 대한 이해 포함)</span>에 대해<span
													style="font-weight: 600; font-size: 17px; color: #71A2FF">
													가족분들의<br /> 동의가 완료
												</span>된 분들만 펫플래닛 펫시터로 활동할 수 있습니다.
											</p>
										</div>
									</div>
									<div
										style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
										<div
											style="width: 270px; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer">
											<p style="font-size: 20px; font-weight: 600; color: white">최종
												제출</p>
										</div>
									</div>
								</div>
							</section>
						</div>
			</div>
		</div>
	</div>
</body>
</html>