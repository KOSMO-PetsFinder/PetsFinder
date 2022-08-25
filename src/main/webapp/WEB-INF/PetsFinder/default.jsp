<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.view {
	width:1250px;
	height: 800px;
	overflow: hidden;
	margin-top: 100px; 
	display: flex; 
	flex-direction: column; 
	justify-content: center;
}
.scrollBlind {
	width:1280px;
	height: 100%;
	overflow-y: scroll;
	overflow-x: hidden;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}
a {
  text-decoration: none;
}s

</style>
</head>
<body>
<div class="view">
	<div class="scrollBlind">
		<section>
			<div style="display: flex; position:absolute; top: 120px; left: 210px">
				<c:if test="${ m_info.member_photo ne null}" var="result">
				<img width="200" height="200" src="<c:url value="/" />Uploads/${ m_info.member_photo }" alt="" style="object-fit: cover; border-radius: 50%;"/>
				</c:if>
				<c:if test="${ not result }">
				<img width="200" height="200" src="<c:url value='/'/>images/no_review.png" style="object-fit: cover; border-radius: 50%;">
				</c:if>
			</div>
			<div style="display: flex; flex-direction: row; margin-top: 120px">
				<div style="display: flex; flex-direction: row; justify-content: space-around; font-size: 1.2em; margin-left: 30px; margin-right:-10px">
					<div style="display: flex; flex-direction: column; align-items: center; ">
				        <div style="background-color: white; width: 500px; height: 300px; padding-top: 50px; border-radius: 30px; display: flex; justify-content: space-around; flex-direction: row; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 10px;">
				        	<div style="display:flex; justify-content: center; flex-direction: column; ">
								<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 이름 : 간지 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 나이 : 8살 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 성별 : 여 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 품종 : 토이 푸들 </p>
				        	</div>
				        	<div>
				        		<img src="./images/KakaoTalk_20220801_231219490_02.jpg" alt="애기 사진" width="140" height="200" style=" border-radius: 5px"/>
				        	</div>
						</div>
				    </div>
			    </div>
			</div>
			<div style="display: flex; flex-direction: row; margin-top: 20px">
				<div style="display: flex; flex-direction: row; justify-content: space-around; font-size: 1.2em; margin-left: 30px;">
					<div style="display: flex; flex-direction: column; align-items: center; ">
				        <div style="background-color: white; width: 500px; height: 300px; border-radius: 30px; display: flex; justify-content: space-around; flex-direction: row; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 10px;">
				        	<div style="display:flex; justify-content: center; flex-direction: column; ">
								<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 이름 : 말랭 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 나이 : 5살 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 성별 : 여 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 품종 : 페르시안 클래식 </p>
				        	</div>
				        	<div>
				        		<img src="./images/KakaoTalk_20220807_230557415_21.jpg" alt="애기 사진" width="140" height="200" style=" border-radius: 5px"/>
				        	</div>
						</div>
				    </div>
			    </div>
			</div>
		</section>
		<section>
			<div style="display: flex; flex-direction: row; margin-top: 120px">
				<div style="display: flex; flex-direction: row; justify-content: space-around; font-size: 1.2em; margin-left: -90px ">
					<div style="display: flex; flex-direction: column; align-items: center; ">
				        <div style="background-color: white; width: 600px; height: 620px; padding-top: 50px; border-radius: 30px; display: flex; justify-content: space-around; flex-direction: row; align-items: center; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 10px;">
							<div style="display:flex; justify-content: center; flex-direction: column; ">
								<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 이름 : 호두 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 나이 : 4살 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 성별 : 여 </p>
				            	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 품종 : 시바 </p>
				        	</div>
				        	<div>
				        		<img src="./images/KakaoTalk_20220825_010318201_04.jpg" alt="애기 사진" width="250" height="320" style=" border-radius: 5px"/>
				        	</div>
						</div>
				    </div>
			    </div>
			</div>
		</section>
	</div>
</div>
</body>
</html>