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
<title>Petsitters</title>
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
</style>

</head>
<body>
	<jsp:include page="../common/Header.jsp" />
	<jsp:include page="../common/Shopheader.jsp" />

		<div class="container" style="height:200px;">
			<div class="row">
				<div class="col-xl-12">
					<div class=" d-flex align-items-center justify-content-center" style="padding-top: 80px;">
						<h1 style="color:#75c9ba">Cart</h1>
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
								<th scope="col">Product</th>
								<th scope="col">Quantity</th>
								<th scope="col">Price</th>
								<th scope="col">Total</th>
								<th scope="col">Shipping</th>
							</tr>
						</thead>
						<tbody>
							<!-- 장바구니 목록 반복 시작 -->
							<c:set var="i" value="0" />
							<c:forEach items="${payList }" var="row" varStatus="vs">
							
							<tr class="cartlist" style="color:#6c757d;">
								<td>
								<div class="w-100 pt-1 mb-5 text-right">
					               	<input name="checkedValue" type="checkbox" style="width: 20px;height: 20px;" value="${row.cart_idx }">
					            </div>
								</td>
								<td style="vertical-align: middle;">
									<div class="media">
										<div class="d-flex">
											<img src="./images/${row.product_photo }" style="width:80px; height:80px;"  />
											<div style="height:60px; padding-left: 10px;">
											<p style="font-size: 19px;">${row.product_name }</p>
											<p>재고 : ${row.product_stock }</p>
											<p>배송 : 
											<c:if test="${row.deliveryCharge ==0 }">
												무료 배송
											</c:if>											
											<c:if test="${row.deliveryCharge !=0 }">
												${row.deliveryCharge }원
											</c:if>											
																						
											</p>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="product_count" style="padding-top: 30px;">
										<ul class="list-inline pb-3" >
											<li class="list-inline-item"><span class="btn" onclick="fnCalCount('m',this);" style="color:#75c9ba;" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><input class="bg-light" name="q_num" id="q_value" style="border:none;outline:none; width:25px;text-align: center;" readonly value="${row.product_quanity }"></input></li>
                                            <li class="list-inline-item"><span class="btn" onclick="fnCalCount('p',this);" style="color:#75c9ba; " id="btn-plus">+</span></li>
										</ul>
									</div>
								</td>
								<td>
									<p>${row.product_price }원</p>
								</td>
								<td>
									<p>${row.product_price * row.product_quanity }원</p>
								</td>
								<td   style="vertical-align: middle;">
									<p class="ps-2">
									<c:if test="${row.deliveryCharge ==0 }">
										무료 배송
									</c:if>											
									<c:if test="${row.deliveryCharge !=0 }">
										${row.deliveryCharge }원
									</c:if>	
									</p>
								</td>
							</tr>
							<c:set var="i" value="${i+1 }" />
							</c:forEach>
							<!-- 장바구니 목록 반복 끝 -->
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<h5>Subtotal</h5>
								</td>
								<td>
									<p>${total }원</p>
								</td>
								<td>
									<a class="btn" style="border-bottom:solid 2px #75c9ba; color: #75c9ba;" href="#" onclick="cartDelete();">수정하기</a>
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;	justify-content: center;" >
						<a class="btn" style="background-color: #75c9ba; color: white;" href="#" onclick="return chk_form()">쇼핑 계속하기</a>&nbsp;&nbsp;&nbsp;
						<a class="btn checkout_btn" style="background-color: #C97584; color: white;" href="#">결제하기</a>
					</div>
					<form id="frm" action="./Shop/buyOrCart.do">
					<input type="hidden" name="subM" value="cartBuy">
					</form>
				</div>
			</div>
		</div>
	</section>
	
<script type="text/javascript">
    function fnCalCount(type, ths){
        var $input = $(ths).parents("ul").find("input[name='q_num']");
        var tEqCount = Number($(ths).parents("ul").find("li>p.stock").html());
        var tCount = Number($input.val()); //일단 밸류값 가져옴 = 1
        var price_o = "${list.product_price}"; //기존 가격 가져옴
        console.log('수량 :'+ tCount);
        console.log('가격 : '+ price_o);
        if(type=='p'){ //plus이고
            if(tCount < tEqCount) { //수량이 재고보다 적으면
            var up = $input.val(Number(tCount)+1);
            var uptotal = Number(up.val());//수량 카운트 추가
            $('#total').val(price_o * uptotal);
            console.log('합계2 : '+uptotal);
            console.log('p');
        	}
                            
    	}else{ //minus이면
        	if(tCount > 1) {
            var down =  $input.val(Number(tCount)-1);
            var downtotal = Number(down.val());
            $('#total').val(price_o * downtotal);
            console.log('합계3 : '+downtotal);
            console.log('m');
        	}
    	}
    }
    
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
				location.href = "./shopCart";
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
