<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- 입양 신청 폼  -->
<!DOCTYPE html>
<html>
<head>
<%
request.setCharacterEncoding("utf-8");
String abani_idx = request.getParameter("abani_idx");
%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
src="/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="/static/js/polyfill.min.js"></script>
<script type="text/javascript" src="/static/js/kakao.js"></script>
<script type="text/javascript"
src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f23556bd57117a96842def422603994"></script>
<script type="text/javascript" src="/static/js/ua-parser.min.js"></script>
<script type="text/javascript" src="/static/js/react.production.min.js"></script>
<!-- jQuery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
 <script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

<script type="text/javascript">
        function checkAppForm(fm) {
                
                if(fm.ADPAPL_name.value=="") {
                        ADPAPL_name_check.style.color = 'red'
                        ADPAPL_name_check.innerHTML = "이름을 입력하세요!"
                        fm.ADPAPL_name.focus();
                        return false;
                }
                if(fm.ADPAPL_gender.value=="") {
                        ADPAPL_gender_check.style.color = 'red'
                        ADPAPL_gender_check.innerHTML = "성별을 선택하세요!"
                        fm.ADPAPL_name.focus();
                        return false;
                }
                if(fm.ADPAPL_birth.value=="") {
                        ADPAPL_birth_check.style.color = 'red'
                        ADPAPL_birth_check.innerHTML = "생년원일을 입력하세요!"
                        fm.ADPAPL_birth.focus();
                        return false;
                }
                if(fm.ADPAPL_tel.value=="") {
                        ADPAPL_tel_check.style.color = 'red'
                        ADPAPL_tel_check.innerHTML = "전화번호를 입력하세요!"
                        fm.ADPAPL_tel.focus();
                        return false;
                }
                if(fm.ADPAPL_addr.value=="") {
                        ADPAPL_addr_check.style.color = 'red'
                        ADPAPL_addr_check.innerHTML = "주소를 입력하세요!"
                        fm.ADPAPL_addr.focus();
                        return false;
                }
                
                //라디오 체크 여부 아직 못함 .....
                var chk = document.querySelector('input[name="adpapl_fNum"]').checked;
                if(chk) {
                        adpapl_fNum_check.style.color = 'red'
                        adpapl_fNum_check.innerHTML = "가족 구성원을 선택하세요!"
                        fm.adpapl_fNum.focus();
                        return false;
                }
                if(fm.ADPAPL_job.value=="") {
                        ADPAPL_job_check.style.color = 'red'
                        ADPAPL_job_check.innerHTML = "가족 구성원 직업 여부를 선택하세요!"
                        fm.ADPAPL_job.focus();
                        return false;
                }
                if(fm.ADPAPL_exp.value=="") {
                        ADPAPL_exp_check.style.color = 'red'
                        ADPAPL_exp_check.innerHTML = "반려동물을 반려한(키운) 경험 여부를 선택하세요!"
                        fm.ADPAPL_exp.focus();
                        return false;
                }
                //......
                
        }
        
        </script>

<form action="../AbandonedAnimal/AdoptApplicationForm.do" id="adoptionFrm" name="adoptionFrm" method="post" style="margin-top:100px"
onsubmit="return checkAppForm(this);">
<input type="hidden" name="abani_idx" value="<%=abani_idx%>">
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
                                        <input type="text"  name="ADPAPL_name" value="" placeholder="이름"
                                                style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                </div>
                                <div style="margin-top: 5px;">
                                <p><span id="ADPAPL_name_check" style="color: skyblue"></span></p>
                                </div>
                        </div>
                        <div
                                style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
                                <p style="font-size: 17px; font-weight: 600; color: #555555">
                                        성별 <span style="color: #71A2FF">*</span>
                                </p>
                                
                                <script>
                                        function selectFemale() {
                                                var aaa= document.getElementById("female");
                                                $('input[name=ADPAPL_gender]').attr('value',"F");
                                        }
                                        function selectMale() {
                                                var aaa= document.getElementById("female");
                                                $('input[name=ADPAPL_gender]').attr('value',"M");
                                        }
                                </script>
                                <div style="display: flex; margin-top: 15px">
                                        <div
                                                style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                                <!-- 여성버튼 -->	
                                                <input onclick="selectFemale();" id="female" type="button" value="여성" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                                        </div>
                                        <div style="width: 10px"></div>
                                        <div
                                                style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                                <!-- 남성버튼 -->
                                                <input onclick="selectMale();" type="button" id="male" value="남성" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                                        </div>
                                        <input type="hidden" id="ADPAPL_gender" name="ADPAPL_gender" value="">
                                </div>
                                <div style="margin-top: 5px;">
                                <p><span id="ADPAPL_gender_check" style="color: skyblue"></span></p>
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
                                        <input type="number" name="ADPAPL_birth" value="" maxLength="8"
                                                placeholder="예) 19940101"
                                                style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                </div>
                                <p><span id="ADPAPL_birth_check" style="color: skyblue"></span></p>
                        </div>
                        <div
                                style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
                                <p style="font-size: 17px; font-weight: 600; color: #555555">
                                        연락처 <span style="color: #71A2FF">*</span>
                                </p>
                                <p style="margin-top: 10px">입력한 휴대폰 번호로 합격 여부를 알려드립니다.</p>
                                <div style="margin-top: 15px">
                                        <input type="number" name="ADPAPL_tel" value="" maxLength="12"
                                                placeholder="01012345678"
                                                style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                </div>
                                <p><span id="ADPAPL_tel_check" style="color: skyblue"></span></p>
                        </div>
                </div>
                <div
                        style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                        <p style="font-size: 17px; font-weight: 600; color: #555555">
                                거주지 주소 <span style="color: #71A2FF">*</span>
                        </p>
                        <div style="margin-top: 15px">
                                <input type="text" name="ADPAPL_addr" value="" placeholder="예) 서울시 강남구 논현동"
                                        style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                        </div>
                        <p><span id="ADPAPL_addr_check" style="color: skyblue"></span></p>
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
                                                <input class="form-check-input" name="adpapl_fNum" value="1" type="radio" id="solo">
                                                <label class="form-check-label" for="solo" style="font-size: 17px; margin-left: 10px;">1인 가구</label>
                                        </div>
                                </div>
                                
                                <div
                                        style="width: 270px; display: flex; align-items: center" class="form-check">
                                        <div style="display: flex; align-items: center">
                                                <div
                                                        style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                                <input class="form-check-input" name="adpapl_fNum" value="2" type="radio" id="couple">
                                                <label class="form-check-label" for="couple" style="font-size: 17px; margin-left: 10px;">2인 가구</label>
                                        </div>
                                </div>
                                
                                <div
                                        style="width: 270px; display: flex; align-items: center" class="form-check">
                                        <div style="display: flex; align-items: center">
                                                <div
                                                        style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                                <input class="form-check-input" name="adpapl_fNum" value="3" type="radio" id="plusbaby">
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
                                                <input class="form-check-input" name="adpapl_fNum" value="4" type="radio" id="plusbaby2">
                                                <label class="form-check-label" for="plusbaby2" style="font-size: 17px; margin-left: 10px;">4인 가구</label>
                                        </div>
                                </div>

                                <div
                                        style="width: 270px; display: flex; align-items: center" class="form-check">
                                        <div style="display: flex; align-items: center">
                                                <div
                                                        style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                                <input class="form-check-input" name="adpapl_fNum" value="5" type="radio" id="bigfamily">
                                                <label class="form-check-label" for="bigfamily" style="font-size: 17px; margin-left: 10px;">5인 가구 이상</label>
                                        </div>
                                </div>
                                
                                </div>
                        </div>
                        <p><span id="adpapl_fNum_check" style="color: skyblue"></span></p>
                </div>
                <div
                        style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                        <p style="font-size: 17px; font-weight: 600; color: #555555">
                                본인을 포함한 가족구성원 직업 여부 <span style="color: #71A2FF">*</span>
                        </p>
                        <div
                                style="margin-top: 31px; display: flex; align-items: center">
                                <div style="width: 270px">
                                        <div style="display: flex; align-items: center" class="form-check">
                                                <div
                                                        style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                                        <input class="form-check-input" name="ADPAPL_job" value="1" type="radio" name="smokingStatus" id="smoker">
                                                <label class="form-check-label" for="smoker" style="font-size: 17px; margin-left: 10px">
                                                        네, 직업이 있어요.
                                                        </label>
                                        </div>
                                </div>
                                <div style="width: 270px">
                                        <div style="display: flex; align-items: center" class="form-check">
                                                <div
                                                        style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                                <input class="form-check-input" name="ADPAPL_job" value="1" type="radio" name="smokingStatus" id="nonsmoker">
                                                <label class="form-check-label" for="nonsmoker" style="font-size: 17px; margin-left: 10px">
                                                        아니오, 직업이 없습니다.
                                                        </label>
                                        </div>
                                </div>
                                <p><span id="ADPAPL_job_check" style="color: skyblue"></span></p>
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
                        반려동물을 반려한(키운) 경험 여부 <span style="color: #71A2FF">*</span>
                </p>
                <p style="margin-top: 10px">
                        성인되기 전 가족과 키우던 경험은 제외하여 정확하게 기재 바랍니다.<br />햄스터 등 다른
                        반려동물은 제외, 고양이, 강아지 반려기간만 체크해 주세요.
                </p>
                <div
                        style="margin-top: 34px; display: flex; align-items: center">
                        <div style="width: 270px">
                                <!-- 1.10년이상 -->
                                <div style="display: flex; align-items: center" class="form-check">
                                        <div
                                                style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                        <input class="form-check-input" name="ADPAPL_exp" value="1" type="radio" id="10y">
                                        <label class="form-check-label" for="10y" style="font-size: 17px; margin-left: 5px">
                                        있다
                                        </label>
                                </div>
                                
                        </div>
                        <div style="width: 270px">
                                <!-- 2.5년이상-10년미만 -->
                                <div style="display: flex; align-items: center" class="form-check">
                                        <div
                                                style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                        <input class="form-check-input" name="ADPAPL_exp" value="0" type="radio" id="5to10y">
                                        <label class="form-check-label" for="5to10y" style="font-size: 17px; margin-left: 5px">
                                        없다
                                        </label>
                                </div>
                                
                        </div>
                        <p><span id="ADPAPL_exp_check" style="color: skyblue"></span></p>
                </div>
                <br>
                <br>
                <p style="font-size: 17px; font-weight: 600; color: #555555">
                        반려동물을 반려한(키운) 총 기간
                </p>
                <p style="margin-top: 10px">
                        발려동물을 반려한(키운) 경험이 있는 사람만 기재 바랍니다. <br />
                        성인되기 전 가족과 키우던 기간은 제외하여 정확하게 기재 바랍니다.<br />햄스터 등 다른
                        반려동물은 제외, 고양이, 강아지 반려기간만 체크해 주세요.
                </p>
                <div
                        style="margin-top: 34px; display: flex; align-items: center">
                        <div style="width: 270px">
                                <!-- 1.10년이상 -->
                                <div style="display: flex; align-items: center" class="form-check">
                                        <div
                                                style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                        <input class="form-check-input" name="ADPAPL_havepet" value="10년 이상" type="radio" id="10y">
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
                                        <input class="form-check-input" name="ADPAPL_havepet" value="5년 이상 - 10년 미만" type="radio" id="5to10y">
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
                                        <input class="form-check-input" name="ADPAPL_havepet" value="1년 이상 - 5년 미만" type="radio" id="1to5y">
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
                                        <input class="form-check-input" name="ADPAPL_havepet" value="1년 미만" type="radio" id="1y">
                                        <label class="form-check-label" for="1y" style="font-size: 17px; margin-left: 5px">
                                        1년 미만
                                        </label>
                                </div>
                        </div>
                        <div style="width: 270px">
                                <div style="display: flex; align-items: center" class="form-check">
                                        <div
                                                style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                        <input class="form-check-input" name="ADPAPL_havepet" value="반려 경험 없음" type="radio" id="noExperience">
                                        <label class="form-check-label" for="noExperience" style="font-size: 17px; margin-left: 5px">
                                        반려 경험 없음
                                        </label>
                                </div>
                        </div>
                </div>
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
        <div
                style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
                <div
                        style="width: 270px; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer; vertical-align: middle;">
                                <p style="font-size: 20px; font-weight: 600; color: white; " ><input style="background-color: #71A2FF;font-size: 20px; font-weight: 600; color: white;border: none;" type="submit" value="최종 제출"></p>
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