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
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 신청/이용 내역 > 시터 이용 내역</p>
</div>
<c:if test="${ m_Reserve eq null}">
<div style="display: flex; flex-direction: row; justify-content: center">
	<img width="200" height="200" src="<c:url value='/'/>images/no_reivew.png" style="object-fit: cover; border-radius: 50%;">
</div>
</c:if>
<div style="display:flex; justify-content: center; align-items:center; flex-direction: column;">
	<c:if test="${ m_Reserve ne null }">
		<c:forEach items="${ m_Reserve }" var="mr">
	<div style="display: flex;  flex-direction: column; border: 2px solid #75c9ba; border-radius: 10px; padding: 38px 0px; margin-top: 100px; width: 800px;">
		<div>
			<div style="margin-left: 18px; display: flex; justify-content: flex-end;">
				<p style="font-size: 15px; line-height: 19px; color: rgb(76, 80, 86); margin: 6px 20px 0 0; ">
					예약 날짜 : ${ mr.sbook_date }
					<br />
					예약 상태 : 
					<c:choose>
						<c:when test="${ mr.sbook_status eq 'stb'}">
							예약 대기
						</c:when>
						<c:when test="${ mr.sbook_status eq 'fix'}">
							예약 확정
						</c:when>
						<c:when test="${ mr.sbook_status eq 'can'}">
							예약 취소
						</c:when>
					</c:choose>
				</p>
			</div>
			<div style="display: flex; flex-direction: column; margin-bottom: 50px; margin-left: 18px;">
				<p style="font-size: 20px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
					< 예약 정보 >
				</p>
				<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
					시터 이름 : ${ mr.member_name }<br />
					시터 주소 : ${ mr.sit_addr } <br />
					예약 기간 : ${ mr.sbook_start } ~ ${ mr.sbook_end } <br />
					반려동물 : ${ mr.p_cellData } <br />
					총 금액 : ${ mr.totalPrice }
				</p>
			</div>
			<div style="display: flex; justify-content: flex-end; margin-right: 20px">
			<c:choose>
				<c:when test="${ mr.sbook_status eq 'stb'}">
				<a href="./up_Reserve?mode=up&sbook_idx=${ mr.sbook_idx }" style="padding-right: 10px">예약 확정</a>
				<a href="./up_Reserve?mode=cn&sbook_idx=${ mr.sbook_idx }">예약 취소</a>
				</c:when>
				<c:when test="${ mr.sbook_status eq 'fix'}">
				<a href="./up_Reserve?mode=latter&m=${ mr.member_name }&ss=${ mr.sbook_start }&se=${ mr.sbook_end }&i=${ mr.sit_idx }">후기쓰기</a>
				</c:when>
				<c:when test="${ mr.sbook_status eq 'can'}">
				</c:when>
			</c:choose>
			</div>
		</div>
	</div>
		</c:forEach>
	</c:if>
	<c:if test="${ m_Reserve eq null }">
		<div style="display: flex; flex-direction: row; justify-content: center">
			<p style="font-size: 2em">이용한 예약이 없어요.. ㅠ ㅠ</p>
		</div>
	</c:if>
</div>