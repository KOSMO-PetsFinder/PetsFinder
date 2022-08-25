<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<!-- <script type="text/javascript">
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp70517070"); // 예: imp00000000
	</script> -->
    <title>PetsFinder</title>
</head>
<style>
    a {
        text-decoration: none;
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
<body>
    <jsp:include page="../common/Header.jsp" />
	<jsp:include page="../common/Shopheader.jsp" />
    <div class="container" style="height:200px;">
			<div class="row ">
				<div class="col-xl-12">
					<div class=" d-flex align-items-center justify-content-center" style="padding-top: 80px;">
						<h1 style="color:#75c9ba">결제</h1>
					</div>
				</div>
			</div>
		</div>
	
	<section class="cart_area">
		<div class="container bg-light" style="display: flex; justify-content: space-evenly;">
			<div class="left" style="float:left">
				<div style="display:flex;">
					<div class="table-responsive" >
						<!-- 주문자 정보 시작 -->
						<table class="table"style="color:#75c9ba; width:750px;">
							<thead >
								<tr style="border-bottom-color:#75c9ba;font-size: 20px;">
									<th scope="col" style="padding-left: 20px; ">주문자 정보</th>
									<th style="font-size: 15px;"><a style="color:#4974a5" href="">배송지 변경 <i class="bi bi-caret-right-fill"></i></a></th>
								</tr>
							</thead>
							<tbody>
							<tr class="cartlist" style="color:#6c757d;">
								<td style="vertical-align: middle;">
									<div class="media">
										<p style="font-size: 19px;border-bottom: 1px dashed lightgray;width:60px;">${ memberSDTO.member_name }</p>
										<p style="font-size: 19px;border-bottom: 1px dashed lightgray;width:150px;">${ memberSDTO.member_phone }</p>
										<p style="font-size: 19px;border-bottom: 1px dashed lightgray;width:180px;">${ memberSDTO.member_email }</p>
										<p style="font-size: 19px;border-bottom: 1px dashed lightgray;width:400px;">${ memberSDTO.member_addr }</p>
										<div class="input-group">
										<span class="input-group-text ps-0" style="font-size: 19px;color:#6C757D; width:130px; background-color:transparent; border:none" >배송시 요청사항 :</span>
										<input type="text" style="font-size: 19px;border-style:hidden;padding-top: 10px;background-color:transparent; height: 30px;width:400px;outline:none;" />
										</div>
									</div>
								</td>
								<td>
								</td>
							</tr>
							</tbody>
						</table>
						<!-- 주문자 정보 끝 -->
						<!-- 주문상품 정보 시작 -->
						<table class="table"style="color:#75c9ba; width:750px;" >
							<thead >
								<tr style="border-bottom-color:#75c9ba; font-size: 20px;">	
									<th scope="col" style="padding-left: 20px;">주문상품 : ${ pl_count }개</th>
								</tr>
							</thead>
							<tbody>
								<!-- 리스트 시작 -->
								<c:forEach items="${ payList }" var="pl" varStatus="loop">
								<input type="hidden" id="product_idx${ loop.index }" value="${ pl.product_idx }"/>
								<input type="hidden" id="quanity_${ loop.index }" value="${ pl.product_quanity }"/>
								<input type="hidden" id="cart_idx${ loop.index }" value="${ pl.cart_idx }"/>
								<tr class="cartlist" style="color:#6c757d;">
									<td style="">
										<div class="media">
											<div class="d-flex" style="padding-left: 20px;">
												<div style="height:30px; width:400px; ">
												<p id="product_${ loop.index }" style="font-size: 18px;">${ pl.product_name }</p>
												</div>
											</div>
										</div>
									</td>
									<td style="vertical-align: middle;">
										<div style="border-left:1px solid lightgray; padding-left: 20px; width:100px; text-align:center;">
											<p style="font-size:16px; width:100px;">수량 : ${ pl.product_quanity } </p>
										</div>
									</td>
								</tr>
								</c:forEach>
								<!-- 리스트 끝 -->
							</tbody>
						</table>
					</div>
					<!-- 주문상품 정보 끝 -->
				</div>
			</div>
			<!-- 결제정보 -->
			<div class="right" style="float:right; border:1px dashed #75c9ba; ">
				<div style=" color: #75c9ba; width:350px; height:440px;">
					<div class="bill">
						<table class="table"style="color:#75c9ba;" >
							<thead >
								<tr style="border-bottom-color:#75c9ba; font-size: 40px;">	
									<th scope="col"style="text-align: center;">결제 정보</th>
								</tr>
							</thead>
							<tbody>
								<!-- 리스트 시작 -->
								<tr class="cartlist" style="color:#6c757d;">
									<td style="">
										<div class="media">
											<div class="d-flex" style="padding-top: 10px;padding-left: 20px;">
												<div style=" width:200px;">
													<p style="font-size: 18px;">총 상품 가격</p>
													<p style="font-size: 20px;color:#4974a5;">${ payInfo.product_price }원</p>
												</div>
											</div>
											<hr />
											<div class="d-flex" style="padding-left: 20px;">
												<div style=" width:200px; ">
													<p style="font-size: 18px;">할인 금액</p>
													<p style="font-size: 20px;color:#4974a5;">${ payInfo.discount }원</p>
												</div>
											</div>
											<hr />
											<div class="d-flex" style="padding-left: 20px;">
												<div style=" width:200px; ">
													<p style="font-size: 18px;">배송비</p>
													<p style="font-size: 20px;color:#4974a5;">${ payInfo.deliveryCharge }</p>
												</div>
											</div>
											<hr />
											<div class="d-flex" style="padding-left: 20px;">
												<div style=" width:200px; ">
													<p style="font-size: 18px;">총 결제 금액</p>
													<p style="font-size: 20px; color:#4974a5;">${ payInfo.amount }원</p>
												</div>
											</div>
											
										</div>
									</td>
								</tr>
								<!-- 리스트 끝 -->
							</tbody>
						</table>
					</div>
				</div>
				<div class="d-flex" style="padding-left: 20px;justify-content: space-around">
					<button class="btn" type="button" id="pay" style=" background-color: #C97584;text-align:center; font-size: 21px; margin-bottom: 12px;width:200px;color:white;">결제하기</button>
				</div>	
			</div>
			<!-- 결제정보 끝 -->
		</div>
	</section>
	   <!--  <div style="display: flex;margin-top: 30px;">
	        <a class="ad_plus" href="javascript:moreList();"  >
	            <p style="font-size: 18px; margin-bottom: 12px; font-weight: bold; color: white">결제하기</p>
	        </a>
	    </div>
 -->
	<jsp:include page="../common/foot.jsp" />
    <script type="text/javascript">
    console.log(${ pl_count });
    var product = "";
    var quanity = "";
    var p_idx = "";
    var c_idx = "";
    <c:if test="${ pl_count eq 1 }" var="result">
    	product += $('#product_0').text()
		quanity += $('#quanity_0').val()
		p_idx += $('#product_idx0').val()
	</c:if>
    <c:if test="${ not result }">
		<c:forEach begin="0" end="${ pl_count - 1 }" varStatus="p">
			c_idx += $('#cart_idx${p.index}').val() + ","
	    	product += $('#product_${p.index}').text() + ","
			quanity += $('#quanity_${p.index}').val() + ","
			p_idx += $('#product_idx${p.index}').val() + ","
		</c:forEach>
	</c:if>
	console.log(product)
	console.log(quanity)
	console.log(p_idx)
	console.log(c_idx)
	$(document).ready(function (){
	   	  
		var IMP = window.IMP;
		var code = "imp70517070"; //가맹점 식별코드
		IMP.init(code);
		
		$("#pay").click(function(e){
			
			if(${ idx } != null) {
				//결제요청
				IMP.request_pay({
					//name과 amout만있어도 결제 진행가능
					/* pg : 'tosspay',  //pg사 선택 (kakao, kakaopay 둘다 가능) */
					pg : 'kakaopay',  //pg사 선택 (kakao, kakaopay 둘다 가능)
					pay_method: 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : product, // 상품명
					amount : ${ payInfo.amount }, //가격 
					buyer_addr : '${ memberSDTO.member_addr }', // 구매자 이메일
					buyer_name : '${ name }', // 구매자 이름
					buyer_tel : '${ phone }',  // 구매자 전화번호
					//결제완료후 이동할 페이지 kko나 kkopay는 생략 가능
					//m_redirect_url : 'https://localhost:8080/payments/complete'
				}, function(rsp){
					console.log(rsp);
					if(rsp.success){//결제 성공시
						var msg = '결제가 완료되었습니다';
						var result = {
						"imp_uid" : rsp.imp_uid, //영수증 아이디
						"merchant_uid" : rsp.merchant_uid, //상품 아이디
						"biz_email" : 'petsfinder@naver.com', //우리 이메일
						"pay_date" : new Date().getTime(), // 결제일
						"amount" : rsp.paid_amount, //가격.
						"card_no" : rsp.apply_num, //카드번호
						"payStus" : 'pay',	//결제상태
						"recipient" : rsp.buyer_name,
						"shipping_location" : rsp.buyer_addr,
						"recipient_phone" : rsp.buyer_tel,
						"productname" : rsp.name,
				    	"quanity" : quanity,
				    	"p_idx" : p_idx,
						//판매자, 결제방식, 사용자정보, 상품명 추가 .. 
						}
						console.log("결제성공 : " + msg);
						console.log("result : " + JSON.stringify(result,
				        		['pg', 'imp_uid', 'merchant_uid', 'biz_email', 
			        			'pay_date', 'amount', 'card_no', 'payStus', 'recipient',
				        		'shipping_location', 'recipient_phone', 'productname', 'quanity',
					    		'quanity', 'p_idx',
				        		]))
						$.ajax({
							url : './insertPay', 
					        type :'POST',
					        data : JSON.stringify(result,
					        		['imp_uid', 'merchant_uid', 'biz_email', 
				        			'pay_date', 'amount', 'card_no', 'payStus', 'recipient',
					        		'shipping_location', 'recipient_phone', 'productname', 'quanity',
						    		'quanity', 'p_idx',
						    		]),
					        contentType:'application/json;charset=UTF-8',
					        dataType: 'json', //서버에서 보내줄 데이터 타입
					        success: function(res){
					          	if (res == 1){
					          		<c:if test="${ r ne 'buy' }">
						        	  	$.ajax({
							      			url : "../cartDelete",
							      			type : "GET",
							      			data : {
							      				"result" : c_idx,
							      			},
							      			dataType : 'text',
							      			success : function () {
							      				location.href = "../Shop";
							      			}, 
							      			
							      			error:function(request, status, error) {
							      				console.log("실패");
							      				
							      	        },
						      			});
					        	  	</c:if>
				        	  		console.log("결제 성공!!!")
				         	 	} else {
				             		console.log("결제 실패...");
				          		}
					        },
					        error:function(){
					          console.log("Insert ajax 통신 실패!!!");
					        }
						}) //ajax
					}
					else{//결제 실패시
						var msg = '결제에 실패했습니다';
						msg += '에러 : ' + rsp.error_msg
					}
					console.log(msg);
				});//pay
			} else {
				location.href="./Login";
			}
		}); //check1 클릭 이벤트
	}); //doc.ready
  	</script>
</body>
</html>