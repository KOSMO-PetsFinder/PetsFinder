<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("utf-8");String member_idx = request.getParameter("member_idx");%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="naver-site-verification" content="9d4ada4a32e188c9c5e42e8a751c4f497033d0c7" />
<link rel="shortcut icon" href="/static/images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="/static/js/slick.min.css" />
<link rel="stylesheet" type="text/css" href="/static/js/slick.min.js" />
<link rel="stylesheet" type="text/css" href="/static/js/slick-theme.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="/static/js/polyfill.min.js"></script>
<script type="text/javascript" src="/static/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f23556bd57117a96842def422603994"></script>
<script type="text/javascript" src="/static/js/ua-parser.min.js"></script>
<script type="text/javascript" src="/static/js/react.production.min.js"></script>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="/static/js/react-copy-to-clipboard.js"></script>
<meta charset="UTF-8">
<title>유기동물 신고 접수</title>
<meta name="description"
content="펫플래닛 반려동물 전문가에게 펫시터 교육을 받고 펫시터 알바에서 펫케어 전문가로 성장하세요." />
<meta name="keywords" content="펫시터알바,펫시터자격증,펫시터교육,펫시터자격,펫시터월급" />
<link rel="canonical" href="https://petplanet.co/apply" />
<meta property="og:type" content="website" />
<meta property="og:title" content="펫시터 교육과 지원을 통해 전문가로 성장하세요 | 펫플래닛" />
<meta property="og:description" content="펫플래닛 반려동물 전문가에게 펫시터 교육을 받고 펫시터 알바에서 펫케어 전문가로 성장하세요." />
<meta property="og:image" content="/static/images/common/og_home.png" />
<meta property="og:url" content="https://petplanet.co/apply" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="next-head-count" content="11" />
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<style>
     * {
       font-family: SpoqaHanSans,'BM JUA_TTF', sans-serif;
     }
     p {
       margin-bottom: 0
     }
     a {
       text-decoration: none;
     }
     div.adoptPlus_btn {
       display: flex;
       justify-content: space-between;
       margin-top: 50px
     }
     .ad_plus {
       display: flex; 
       justify-content: center;
       align-items: center; 
       background-color: #75c9ba; 
       color: white; 
       margin: 10px 20px 40px 0; 
       border-radius: 26px; 
       width: 300px; 
       height: 60px; 
     }
   </style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
/*
geolocation : 위치정보 서비스로써 웹브라우저가 현재 위도와 경도를 JS코드에게
    제공하는 서비스이다. PC웹, Mobile웹 모두에서 지원된다.
*/
var span;
window.onload = function(){
    span = document.getElementById("result");
    /*
    geolocation객체를 통해 현재 접속한 웹브라우저의 지원여부를 확인한다. 지원되지
    않는다면 false가 반환된다.
    */
    if(navigator.geolocation){
        span.innerHTML = "Geolocation API를 지원합니다.";
        //옵션설정 : 순서대로 정확도설정, 대기시간, 캐시된 위치값을 받을 시간
        //      maximumAge를 0으로 설정하면 항상 최신의 현재위치를 수집한다.
        var options = {
            
            enableHighAccurcy:true,
            timeout:5000,
            maximumAge:3000
        };
        /*
        현재 위치의 위,경도를 얻어오는 함수
        getCurrentPosition(showPosition : 위치얻기에 성공했을때의 콜백함수
            , showError : 위치얻기에 실패했을때 호출할 콜백함수
            , options : 옵션)
        */
        navigator.geolocation.getCurrentPosition(showPosition,showError, options);
    }
    else{
        span.innerHTML = "이 브라우저는 Geolocation API를 지원하지 않습니다.";
    }
}
//위치얻기에 성공한 경우 호출되는 콜백함수
var showPosition = function(position){
    //위도와 경도를 얻어와서 변수에 저장
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    //웹브라우저에 추렭
    span.innerHTML = "위도:"+latitude+", 경도:"+longitude;
    //input 태그에 삽입
    document.getElementById("lat").value = latitude;
    document.getElementById("lng").value = longitude;
    
    var geocoder = new kakao.maps.services.Geocoder();
    
    function searchDetailAddrFromCoords(coords, callback) {
        // 좌표로 행정동 주소 정보를 요청합니다
        geocoder.coord2Address(coords.longitude, coords.latitude, callback);
    }
    
    function addr(res) {
    	console.log(res);
    	document.getElementById('dclrAbnd_loc').value=res[0].address.address_name
    }
    searchDetailAddrFromCoords(position.coords, addr);
}
//실패했을때 호출되는 콜백함수
var showError = function(error){
    switch(error.code){
        case error.UNKNOWN_ERROR:
            span.innerHTML = "알수없는오류발생";break;
        case error.PERMISSION_DENIED:
            span.innerHTML = "권한이 없습니다";break;
        case error.POSITION_UNAVAILABLE:
            span.innerHTML = "위치 확인불가";break;
        case error.TIMEOUT:
            span.innerHTML = "시간초과";break;
    }
}
</script>
</head>
<body>
<jsp:include page="./common/Header.jsp" />
<noscript>
<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
height="0" width="0" style="display: none; visibility: hidden;"></iframe>
</noscript>

<script type="text/javascript">
function checkRepForm(fm) {
        
    if(fm.dclrAbnd_title.value=="") {
    	dclrAbnd_title_check.style.color = 'red'
   		dclrAbnd_title_check.innerHTML = "제목을 입력하세요!"
        fm.dclrAbnd_title.focus();
        return false;
    }
    if(fm.dclrAbnd_content.value=="") {
    	dclrAbnd_content_check.style.color = 'red'
   		dclrAbnd_content_check.innerHTML = "신고 내용을 선택하세요!"
        fm.dclrAbnd_content.focus();
        return false;
    }
    if(fm.dclrAbnd_loc.value=="") {
    	dclrAbnd_loc_check.style.color = 'red'
   		dclrAbnd_loc_check.innerHTML = "발견 주소를 입력하세요!"
        fm.dclrAbnd_loc.focus();
        return false;
    }
}

</script>


<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 100px; margin-right: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; padding-right: 5px"> 유기동물 신고
</div>
<form action="./notifyForm.do" id="reportFrm" name="reportFrm" method="post" enctype="multipart/form-data" style="margin-top:100px"
onsubmit="return checkRepForm(this);">
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
                유기동물 신고 접수</h2>
</div>
</section>
	<section style="background-color: #FAFAFB; margin-top: 102px">
		<div style="width: 1000px; margin: 0px auto; padding-top: 95px">
			<p style="font-size: 27px; font-weight: 600; color: #555555">1.
				신고 내용</p>
			<div style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
				<div style="display: flex; align-items: center">
					<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
						<p style="font-size: 17px; font-weight: 600; color: #555555">
							제목 <span style="color: #71A2FF">*</span>
						</p>
						<div style="margin-top: 15px">
							<input type="text" value="" name="dclrAbnd_title"
								style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
						</div>
						<div style="margin-top: 5px;">
	                    	<p><span id="dclrAbnd_title_check" style="color: skyblue"></span></p>
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
							<textarea name="dclrAbnd_content" style="width: 100%; height: 300px; border: 1px solid #EBEBEB; border-radius: 5px; padding: 10px 20px 0 20px"></textarea>
						</div>
						<div style="margin-top: 5px;">
	                    	<p><span id="dclrAbnd_content_check" style="color: skyblue"></span></p>
	                    </div>
					</div>
				</div>
				<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
					<p style="font-size: 17px; font-weight: 600; color: #555555">
						발견 주소 <span style="color: #71A2FF">*</span>
					</p>
					<div style="margin-top: 15px">
						<input type="text" value="" id="dclrAbnd_loc" name="dclrAbnd_loc" placeholder="예) 서울시 강남구 논현동"
							style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
					</div>
					<div style="margin-top: 5px;">
                    	<p><span id="dclrAbnd_loc_check" style="color: skyblue"></span></p>
                    </div>
                    <div style="display: none">
						<fieldset>
					        <legend>현재위치 - 위도, 경도</legend>
					        <span id="result" style="color:red; font-size:1.5em;
					        font-weight:bold;"></span>
					    </fieldset>
					
					    위도 : <input type="text" id="lat" />
					    경도 : <input type="text" id="lng" />
                    </div>
				</div>
				<div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
					<p style="font-size: 17px; font-weight: 600; color: #555555">
						사진</p>
					<div style="margin-top: 15px">
			            <input type="text" placeholder="Select file" style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" disabled>
						<input name="ofile" type="file" style="width: 40%; align-items: right">
			        </div>
				</div>
				<p style="font-size: 17px; font-weight: 600; color: #555555; margin-top: 70px">
					동의 사항 <span style="color: #71A2FF">*</span>
				</p>
				<div style="margin-top: 26px">
					<!-- 개인정보 수집동의 -->
					<div style="display: flex; align-items: center" class="form-check">
						<div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
					  	<label class="form-check-label" for="flexCheckDefault" style="font-size: 17px; color: #555555; margin-left: 5px">
					    개인정보 수집/이용에 동의합니다
					  	</label>
					</div>
				</div>
				<div style="margin-top: 26px">
					<!-- 본인작성 사실 확인 -->
					<div style="display: flex; align-items: center" class="form-check">
						<div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
					    <label class="form-check-label" for="flexCheckDefault1" style="font-size: 17px; color: #555555; margin-left: 5px">
					    지원서에 기재된 내용은
							모두 본인이 작성하였으며, 사실과 다름 없음을 확인했습니다
					    </label>
					</div>
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
				style="margin-bottom: 100px; width: 270px; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer">
				<p style="font-size: 20px; font-weight: 600; color: white" onclick="reportSubmit();">신고하기</p>
			</div>
		</div>
	</section>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
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