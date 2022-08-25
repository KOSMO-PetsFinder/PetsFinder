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
						<td>
						<c:if test="${reportView.dclrAbnd_stts eq 'reg'  }">
							<span class="badge rounded-pill bg-danger">접수</span>
							</c:if>
							<c:if test="${reportView.dclrAbnd_stts eq 'PRG'  }">
							<span class="badge rounded-pill bg-warning text-dark">구조진행중</span>
							</c:if>
							<c:if test="${reportView.dclrAbnd_stts eq 'CMP'  }">
							<span class="badge rounded-pill bg-success">구조완료</span>
						</c:if>
						</td>			
					</tr>
					<tr>
						<th>제목</th>
						<td>${reportView.dclrAbnd_title }</td>
						<th>발견 위치</th>
						<td>${reportView.dclrAbnd_loc }</td>
					</tr>
					<tr>
					<td colspan=4>
						<div id="map" style="width:100%;height:700px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2&libraries=services"></script>
						<script>
					$(function () {
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
					center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level: 3 // 지도의 확대 레벨
					};  
					
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption); 
					
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('${reportView.dclrAbnd_loc }', function(result, status) {
					
					// 정상적으로 검색이 완료됐으면 
					if (status === kakao.maps.services.Status.OK) {
					
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					
					// 결과값으로 받은 위치를 마커로 표시합니다
					var marker = new kakao.maps.Marker({
					map: map,
					position: coords
					});
					var a = result[0].y;
					var b = result[0].x;
					var roadView = '<div style="padding:5px; margin-right ">유기동물 발견 지점<br/><a href="https://map.kakao.com/link/to/유기동물 발견 지점, ' + a + ',' + b + '" style="color:blue; padding:5px;" target="_blank">길찾기</a></div>';
					
					var iwContent = roadView, // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				    iwPosition = new kakao.maps.LatLng(result[0].y, result[0].x); //인포윈도우 표시 위치입니다

					// 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
					    position : iwPosition, 
					    content : iwContent 
					});
				  
					// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
					infowindow.open(map, marker); 
					
					// 지도에 표시할 원을 생성합니다
					var circle = new kakao.maps.Circle({
					center : new kakao.maps.LatLng(result[0].y, result[0].x),  // 원의 중심좌표 입니다 
						radius: 300, // 미터 단위의 원의 반지름입니다 
						strokeWeight: 5, // 선의 두께입니다 
						strokeColor: '#75B8FA', // 선의 색깔입니다
						strokeOpacity: 0, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
						strokeStyle: 'dashed', // 선의 스타일 입니다
						fillColor: '#75c9ba', // 채우기 색깔입니다
						fillOpacity: 0.4  // 채우기 불투명도 입니다   
					}); 
					
					// 지도에 원을 표시합니다 
					circle.setMap(map); 
					/* // 인포윈도우로 장소에 대한 설명을 표시합니다
					var infowindow = new kakao.maps.InfoWindow({
					content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
					});
					infowindow.open(map, marker); */
					
					// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					map.setCenter(coords);
					} 
					});    
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
