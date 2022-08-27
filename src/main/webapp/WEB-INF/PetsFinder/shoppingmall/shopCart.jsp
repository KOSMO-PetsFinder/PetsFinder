<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/54b3b8eebf.js"
	crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="../jquery/jquery-ui.css">
	<script src="../jquery/jquery-ui.js"></script> -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/' />css/calendar.css">
<title>PetsFinder</title>
<style>
* {
	font-family: 'BM JUA_TTF';
}

p {
	margin-bottom: 0
}

a {
	text-decoration: none;
}
tr.cartlist td {
	vertical-align: middle;
}
</style>

</head>
<body>
	<!-- alert 창 꾸미기 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<jsp:include page="../common/Header.jsp" />
	<jsp:include page="../common/Shopheader.jsp" />

		<div class="container" style="height:200px;">
			<div class="row">
				<div class="col-xl-12">
					<div class=" d-flex align-items-center justify-content-center" style="padding-top: 80px;">
						<h1 style="color:#75c9ba">장바구니</h1>
					</div>
				</div>
			</div>
		</div>
	
	<section class="cart_area">
		<div class="container bg-light">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table"style="color:#75c9ba" >
						<thead >
							<tr style="border-bottom-color:#75c9ba; font-size: 20px;">
								<th scope="col"></th>
								<th scope="col">상품명</th>
								<th scope="col" style="padding-left: 30px;">상품 수량</th>
								<th scope="col">상품 가격</th>
								<th scope="col"style="padding-left: 20px;">합계</th>
								<th scope="col"style="padding-left: 20px;">배송비</th>
							</tr>
						</thead>
						<tbody>
							<!-- 장바구니 목록 반복 시작 -->
							<c:set var="i" value="0" />
							<c:forEach items="${ payList }" var="row" varStatus="vs">
							
							<tr class="cartlist" style="color:#6c757d;">
								<td>
					               	<input name="checkedValue" type="checkbox" style="width: 20px;height: 20px;" value="${ row.cart_idx }">
					               	<input name="cart_idx" type="hidden" value="${ row.cart_idx }">
								</td>
								<td style="vertical-align: middle;">
									<div class="media">
										<div class="d-flex">
											<img src="./Uploads/${row.product_photo }" style="width:80px; height:80px;"  />
											<div style="height:60px; padding-left: 10px;">
											<p style="font-size: 19px;">${row.product_name }</p>
											<br/>
											<p>재고 : ${row.product_stock }</p>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="product_count" style="padding-top: 30px;">
										<ul class="list-inline pb-3" >
											<li class="list-inline-item"><span class="btn" style="color:#75c9ba;" id="btn-minus${ vs.index }">-</span></li>
                                            <li class="list-inline-item"><input class="bg-light" name="q_num" id="q_value${ vs.index }" style="border:none;outline:none; width:25px;text-align: center;" readonly value="${row.product_quanity }"></input></li>
                                            <li class="list-inline-item"><span class="btn" style="color:#75c9ba; " id="btn-plus${ vs.index }">+</span></li>
										</ul>
									</div>
								</td>
								<c:if test="${row.deliveryCharge == 0 }" var="dc">
								<td>
									<input type="hidden" id="hpPrice${ vs.index }" value="${ row.amount}"/>
		                           <p style=" ont-size:21px;" id="pPrice${ vs.index }"><fmt:formatNumber type="number" maxFractionDigits="0" value="${ row.amount }" />원</p>
		                           <p style="font-size:14px; text-decoration: line-through;" ><fmt:formatNumber type="number" maxFractionDigits="0" value="${row.product_price }" />원</p>
		                        </td>
		                        <td>
		                        	<input type="hidden" id="hptPrice${ vs.index }" value="${(row.amount) * row.product_quanity }"/>
		                           <p id="ptPrice${ vs.index }"><fmt:formatNumber type="number" maxFractionDigits="0" value="${(row.amount) * row.product_quanity }" />원</p>
		                        </td>
								</c:if>
								<c:if test="${ not dc }">
								<td>
									<input type="hidden" id="hpPrice${ vs.index }" value="${ row.product_price }"/>
									<p id="pPrice${ vs.index }"><fmt:formatNumber type="number" maxFractionDigits="0" value="${ row.product_price }" />원</p>
								</td>
								<td>
									<input type="hidden" id="hptPrice${ vs.index }" value="${ row.product_price * row.product_quanity }"/>
									<p id="ptPrice${ vs.index }"><fmt:formatNumber type="number" maxFractionDigits="0" value="${ row.product_price * row.product_quanity }" />원</p>
								</td>
								</c:if>
								<td>
									<p class="ps-2" id="delivery">
									<c:if test="${row.deliveryCharge ==0 }">
										무료 배송
									</c:if>
									<c:if test="${row.deliveryCharge !=0 }">
										<fmt:formatNumber type="number" maxFractionDigits="0" value="${row.deliveryCharge }"/>원
									</c:if>	
									</p>
								</td>
							</tr>
							<c:set var="i" value="${i+1 }" />
							<script>
								$(function () {
									$('#btn-plus${ vs.index }').click(function () {
										var count${ vs.index } = parseInt($('#q_value${ vs.index }').val());
										var p${ vs.index } = parseInt($('#hpPrice${ vs.index }').val());
										var totalPrice = parseInt($('#htotalPrice').val());
										if (count${ vs.index } < ${ row.product_stock }) {
											count${ vs.index } += 1;
											$('#q_value${ vs.index }').val(count${ vs.index })
											var price = parseInt(p${ vs.index } * count${ vs.index })
											$('#hptPrice${ vs.index }').val(price)
											$('#ptPrice${ vs.index }').text(price.toLocaleString() + '원')
											totalPrice += parseInt(p${ vs.index })
											$('#htotalPrice').val(totalPrice)
											$('#totalPrice').text(totalPrice.toLocaleString() + '원')
											
											$.ajax({
								    			url : "./cartUpdate",
								    			type : "GET",
								    			data : {
								    				"cart_idx" : "${ row.cart_idx }", //카트번호
								    				"product_quanity" : count${ vs.index }, //수량
								    			},
								    			dataType : 'text',
								    			success : function () {
								    				
								    				console.log("성공");
								    			}, 
								    			
								    			error:function(request, status, error) {
								    				console.log("실패");
								    				
								    	        },
								    		});
										}
									})
									$('#btn-minus${ vs.index }').click(function () {
										var count${ vs.index } = parseInt($('#q_value${ vs.index }').val());
										var p${ vs.index } = parseInt($('#hpPrice${ vs.index }').val());
										var totalPrice = parseInt($('#htotalPrice').val());
										if (count${ vs.index } > 1) {
											count${ vs.index } -= 1;
											$('#q_value${ vs.index }').val(count${ vs.index })
											var price = parseInt(p${ vs.index } * count${ vs.index })
											$('#hptPrice${ vs.index }').val(price)
											$('#ptPrice${ vs.index }').text(price.toLocaleString() + '원')
											totalPrice -= parseInt(p${ vs.index })
											$('#htotalPrice').val(totalPrice)
											$('#totalPrice').text(totalPrice.toLocaleString() + '원')
											
											$.ajax({
								    			url : "./cartUpdate",
								    			type : "GET",
								    			data : {
								    				"cart_idx" : "${ row.cart_idx }", //카트번호
								    				"product_quanity" : count${ vs.index }, //수량
								    			},
								    			dataType : 'text',
								    			success : function () {
								    				console.log("성공");
								    			}, 
								    			
								    			error:function(request, status, error) {
								    				console.log("실패");
								    				
								    	        },
								    		});
										}
									})
								})
							</script>
							</c:forEach>
							<!-- 장바구니 목록 반복 끝 -->
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td style="padding-left: 30px;">
									<h5>총계</h5>
								</td>
								<td>
									<input type="hidden" id="htotalPrice" value="${ total }">
									<p id="totalPrice"><fmt:formatNumber type="number" maxFractionDigits="0" value="${ total }" />원</p>
								</td>
								<td>
									<a class="btn" style="border-bottom:solid 2px #75c9ba; color: #75c9ba;" href="#" onclick="cartDelete();">삭제하기</a>
								</td>
							</tr>
						</tbody>
					</table>

					<div style="text-align: center;	justify-content: center; margin-bottom: 20px" >
						<a class="btn" style="background-color: #75c9ba; color: white;" href="./Shop" >쇼핑 계속하기</a>&nbsp;&nbsp;&nbsp;
						<a class="btn checkout_btn" style="background-color: #C97584; color: white;" href="#" onclick="return chk_form()">구매하기</a>
					</div>
					<form id="frm" action="./Shop/buyOrCart.do">
					<input type="hidden" name="subM" value="cartBuy">
					</form>
				</div>
			</div>
		</div>
	</section>
	
<script type="text/javascript">

    var p_names = "";
 	<c:forEach items="${ payList }" var="row" varStatus="vs">
	 	p_names += "${ row.product_name }" + " \n "
 	</c:forEach>
 	console.log(p_names)
    function cartDelete(){
    	 const query = 'input[name="checkedValue"]:checked';
    	 const selectedEls = 
    	      document.querySelectorAll(query);
    	 let result = '';
    	 selectedEls.forEach((el) => {
    	   result += el.value + ',';
    	 });
   	 	
    	console.log(result);
		$.ajax({
			url : "./cartDelete",
			type : "GET",
			data : {
				"result" : result,
			},
			dataType : 'text',
			success : function () {
				Swal.fire({
		            icon: 'success',                         // Alert 타입
		            title: '장바구니에서 삭제 되었습니다',         // Alert 제목
		            text: p_names,  // Alert 내용
		        }).then(() => {
						location.href = "./shopCart";
		        })
			}, 
			
			error:function(request, status, error) {
				console.log("실패");
				
	        },
		});
	};
	
	function chk_form() {
		document.getElementById('frm').submit();
	}
	
	
</script>               
	<jsp:include page="../common/foot.jsp" />
</body>
</html>
