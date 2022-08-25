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
.view {
	width:1250px;
	height: 850px;
	overflow: hidden;
}
.scrollBlind {
	width:1280px;
	height: 100%;
	overflow-y: scroll;
	overflow-x: hidden;
}
</style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<div class="view">
	<div class="scrollBlind">
		<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px; margin-right: 15px">
			<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
			<p style="margin-top:9px;">마이페이지 > 신청/이용 내역 > 구매 내역</p>
		</div>
		<c:if test="${ viewlist eq null}">
		<div style="display: flex; flex-direction: row; justify-content: center">
			<img width="200" height="200" src="<c:url value='/'/>images/no_reivew.png" style="object-fit: cover; border-radius: 50%;">
		</div>
		</c:if>
		<div style="display:flex; justify-content: center; align-items:center; flex-direction: column;">
			<c:if test="${ viewlist ne null }">
				<c:forEach items="${ viewlist }" var="mbv">
			<div style="display: flex;  flex-direction: column; border: 2px solid #75c9ba; border-radius: 10px; padding: 38px 0px; margin-top: 100px; width: 800px;">
				<div>
					<div style="margin-left: 18px; display: flex; justify-content: flex-end;">
						<%-- <p style="font-size: 15px; line-height: 19px; color: rgb(76, 80, 86); margin: 6px 20px 0 0; ">
							구매 날짜 : ${ mb.pay_date }
							<br />
							구매 상태 : 
							<c:choose>
								<c:when test="${ mb.payStus eq 'pay'}">
									결제 완료
								</c:when>
								<c:when test="${ mb.payStus eq 'rfn'}">
									환불 완료
								</c:when>
							</c:choose>
							<c:if test="${mb.payStus eq 'pay' }">
							<br />
							배송 상태 : 
								<c:choose>
									<c:when test="${ mb.delivery_status eq 'prp'}">
										배송 준비
									</c:when>
									<c:when test="${ mb.delivery_status eq 'dlv'}">
										배송중
									</c:when>
									<c:when test="${ mb.delivery_status eq 'cmp'}">
										배송 완료
									</c:when>
								</c:choose>
							</c:if>
						</p> --%>
					</div>
					<div style="display: flex; flex-direction: column; margin-bottom: 50px; margin-left: 18px;">
						<p style="font-size: 20px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
							< 상품 정보 >
						</p>
						<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">
							주문 번호 : ${ mbv.payment_idx } <br />
							상품명 : ${ mbv.product_name } <br />
							수량 : ${mbv.product_quanity }
						</p>
					</div>
					<div style="display: flex; justify-content: flex-end; margin-right: 20px">
						<a href="./up_Bought?mode=latter&payment_idx=${mbv.payment_idx}&p=${mbv.product_idx}&pn=${ mbv.product_name }&pd=${mbv.pay_date}" onclick="check();">후기쓰기</a>
					</div>
				</div>
			</div>
				</c:forEach>
			</c:if>
			<c:if test="${ viewlist eq null }">
				<div style="display: flex; flex-direction: row; justify-content: center">
					<p style="font-size: 2em">이용한 예약이 없어요.. ㅠ ㅠ</p>
				</div>
			</c:if>
		</div>
	</div>
</div>