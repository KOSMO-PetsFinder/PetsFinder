<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Pets Finder Admin Page</title>
<style>
    .map_wrap {position:relative;width:100%;height:500px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<style>
* {
   font-family: 'BM JUA_TTF';
   text-align: center;
}
</style>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>유기동물 신고 위치</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple" style="text-align: center;">
					<colgroup>
						<col width="15%" />
						<col width="40%" />
						<col width="15%" />
						<col width="40%" />
					</colgroup>
					<tr>
						<th>접수번호</th>
						<td>${reportView.dclrAbnd_idx }</td>
						<th>신고자</th>
						<td>${reportView.member_idx }</td>			
					</tr>
					<tr>
						<th>신고접수일</th>
						<td>${reportView.dclrAbnd_regdate }</td>
						<th>구조 작업 현황</th>
						<td>${reportView.dclrAbnd_stts }</td>			
					</tr>
					<tr>
						<th>제목</th>
						<td>${reportView.dclrAbnd_title }</td>
						<th>발견 위치</th>
						<td>${reportView.dclrAbnd_loc }</td>
					</tr>
					<tr>
					<td colspan=4>
						<div id="map" style="width:100%;height:350px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2&libraries=services"></script>
						<script>
						$(function(){
						
						var container = document.getElementById('map'), // 지도를 표시할 div 
						    option = { 
						        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						        level: 5 // 지도의 확대 레벨 
						    }; 
						var map = new kakao.maps.Map(container, option); // 지도를 생성합니다
						
						// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
						if (navigator.geolocation) {
						    
						    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
						    navigator.geolocation.getCurrentPosition(function(position) {
						        
						        var lat = position.coords.latitude, // 위도
						               lon = position.coords.longitude; // 경도
						        
						        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
						            message = '<div style="padding:5px;">동물 발견 장소</div>'; // 인포윈도우에 표시될 내용입니다
						        // 마커와 인포윈도우를 표시합니다
						        displayMarker(locPosition, message);
						            
						      });
						    
						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
						    
						    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
						        message = 'geolocation을 사용할수 없어요..'
						        
						    displayMarker(locPosition, message);
						}
						
						//주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						
						var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
						infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
						
						//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
						searchAddrFromCoords(map.getCenter(), displayCenterInfo);
						
						var coord = new kakao.maps.LatLng(37.56496830314491, 126.93990862062978);
						var callback = function(result, status) {
						    if (status === kakao.maps.services.Status.OK) {
						        console.log('그런 너를 마주칠까 ' + result[0].address.address_name + '을 못가');
						        address = result[0].address.address_name;
						    }
						};
						
						geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
						
						//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
						kakao.maps.event.addListener(map, 'idle', function() {
						    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
						});
						
						function searchAddrFromCoords(coords, callback) {
						    // 좌표로 행정동 주소 정보를 요청합니다
						    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback); 
						}
						
						function searchDetailAddrFromCoords(coords, callback) {
						    // 좌표로 법정동 상세 주소 정보를 요청합니다
						    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
						}
						
						// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
						function displayCenterInfo(result, status) {
						    if (status === kakao.maps.services.Status.OK) {
						        var infoDiv = document.getElementById('centerAddr');
						
						        for(var i = 0; i < result.length; i++) {
						            // 행정동의 region_type 값은 'H' 이므로
						            if (result[i].region_type === 'H') {
						                infoDiv.innerHTML = result[i].address_name;
						                break;
						            }
						        }
						    }    
						}
						// 지도에 마커와 인포윈도우를 표시하는 함수입니다
						function displayMarker(locPosition, message) {
						
						    // 마커를 생성합니다
						    var marker = new kakao.maps.Marker({  
						        map: map, 
						        position: locPosition
						    }); 
						    
						    var iwContent = message, // 인포윈도우에 표시할 내용
						        iwRemoveable = true;
						
						    // 인포윈도우를 생성합니다
						    var infowindow = new kakao.maps.InfoWindow({
						        content : iwContent,
						        removable : iwRemoveable
						    });
						    
						    // 인포윈도우를 마커위에 표시합니다 
						    infowindow.open(map, marker);
						    
						    // 지도 중심좌표를 접속위치로 변경합니다
						    map.setCenter(locPosition);      
						}    
						})
						</script>
					</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3" style="height:150px;">
							${reportView.dclrAbnd_content }
						</td>
					</tr>
					<tr>
						<th>사진</th>
						<td colspan="3" style="height:150px;">
							${reportView.dclrAbnd_photo }
						</td>
					</tr>		
					<tr>
						<td colspan="4" align="center">	
						<button type="button" class="btn btn-info btn-sm" onclick="location.href='./reportList.do?nowPage=${param.nowPage}';">리스트보기</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- footer -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"	crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>
