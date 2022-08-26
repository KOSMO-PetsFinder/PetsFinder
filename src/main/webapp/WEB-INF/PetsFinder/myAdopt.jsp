<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
*{
	font-family: 'BM JUA_TTF';
}
a {
	text-decoration: none;
	color: #75c9ba
}
textarea {
	font-size: 1.2em; 
	width: 100%; 
	height: 300px; 
	border: 0; 
	font-family: 'BM JUA_TTF'; 
	overflow: hidden; 
	background:none; 
	resize:none;
	min-height: 18rem;
    overflow-y: hidden;
    outline: none;
}
</style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 신청/이용 내역 > 입양 신청 내역</p>
</div>
<c:if test="${ m_Adopt.isEmpty() }">
<div style="display: flex; flex-direction: row; justify-content: center">
	<img width="200" height="200" src="<c:url value='/'/>images/no_review.png" style="object-fit: cover; border-radius: 50%;">
</div>
</c:if>
<div style="display:flex; justify-content: center; align-items:center; flex-direction: column;">
	<c:if test="${ !m_Adopt.isEmpty() }">
		<c:forEach items="${ m_Adopt }" var="ma">
	<div style="display: flex;  flex-direction: column; border: 2px solid #75c9ba; border-radius: 10px; padding: 38px 0px; margin-top: 100px; width: 800px;">
		<div>
			<div style="margin-left: 18px; display: flex; justify-content: flex-end;">
				<p style="font-size: 15px; line-height: 19px; color: rgb(76, 80, 86); margin: 6px 20px 0 0; ">
					<br />
					신청 상태 : 
					<c:choose>
						<c:when test="${ ma.adpapl_stt eq 'udr'}">
							심사중
						</c:when>
						<c:when test="${ ma.adpapl_stt eq 'apl'}">
							승인
						</c:when>
						<c:when test="${ ma.adpapl_stt eq 'rej'}">
							거절
						</c:when>
					</c:choose>
				</p>
			</div>
			<div style="display: flex; flex-direction: column; margin-bottom: 50px; margin-left: 18px;">
				<p style="font-size: 20px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
					< 입양 신청 정보 >
				</p>
				<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
					입양 신청 동물 일련번호 : ${ ma.abani_idx }<br />
					입양 신청 동물 종 : ${ ma.abani_species } <br />
					입양 신청 동물 품종 : ${ ma.abani_kind } <br />
				</p>
			</div>
			<div style="display: flex; justify-content: flex-end; margin-right: 20px">
			<c:choose>
				<c:when test="${ ma.adpapl_stt eq 'udr'}">
				<a href="./up_Adopt?mode=cn&adpapl_idx=${ ma.adpapl_idx }" style="padding-right: 10px">입양 취소</a>
				</c:when>
				<c:when test="${ ma.adpapl_stt eq 'apl'}"> 
				<a href="./up_Adopt?mode=latter&i=${ ma.abani_idx }&adpapl_idx=${ma.adpapl_idx}" onclick="check();">후기쓰기</a>
				</c:when>
				<c:when test="${ ma.adpapl_stt eq 'rej'}">
				</c:when>
			</c:choose>
			</div>
		</div>
	</div>
		</c:forEach>
	</c:if>
	<c:if test="${ m_Adopt.isEmpty() }">
		<div style="display: flex; flex-direction: row; justify-content: center">
			<p style="font-size: 2em">신청한 내역이 없어요.. ㅠ ㅠ</p>
		</div>
	</c:if>
</div>