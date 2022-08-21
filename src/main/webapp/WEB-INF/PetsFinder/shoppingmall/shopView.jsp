<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="<c:url value='/'/>Uploads/${ productDTO.photo[0] }"
														style="object-fit: contain; width: 100%; user-select: no" alt="Card image cap" id="photo${loop.count - 1 }">
                    </div>
                    <div class="row">
                        <!--First slide-->
                        <div class="row">
                        	<c:set var="i" value="0" />
                        	<c:forEach items="${productDTO.photo}" var="row" varStatus="vv">
                        	<c:if test="${i== 0 }">
                            <div class="col-4">
                                <a href="#">
                                    <img class="card-img img-fluid" src="<c:url value='/'/>Uploads/${row }" alt="Product Image 1">
                                </a>
                            </div>
                        	</c:if>
                        	<c:set var="i" value="${i+1 }" />
                        	</c:forEach>
                        </div>
                        <!--/.First slide-->
                    </div>
                </div>
                <!-- 상세 내용 시작 -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                        	<input type="hidden" value="${productDTO.product_idx }">
                            <h1 class="h2" style="color:#75c9ba;">${productDTO.product_name }</h1>
                            <p class="h3 py-2"><fmt:formatNumber value="${productDTO.product_price }" pattern="#,###" />원</p>
                            <p class="py-2">
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <span class="list-inline-item text-dark">Rating 4.8 | 36 Comments</span>
                            </p>

                            <h6>설명 :</h6>
                            <p>${productDTO.product_description }</p>
                            <br />
                           <script type="text/javascript">
                             function fnCalCount(type, ths){
                                 var $input = $(ths).parents("ul").find("input[name='product_quanity']");
                                 var tEqCount = Number($(ths).parents("ul").find("li>p.stock").html());
                                var tCount = Number($input.val()); //일단 밸류값 가져옴 = 1
                                var price_o = "${productDTO.product_price}"; //기존 가격 가져옴
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
                             
                            </script>
							<!-- form태그 시작 -->
                            <form action="Shop/buyOrCart.do" method="GET">
                                <input type="hidden" name="product_idx" value="${productDTO.product_idx }">
                                <div class="row">
                                    <div class="col-auto" >
                                        <ul class="list-inline pb-3" >
                                        	<li class="list-inline-item">
			                                    <h6>재고 :</h6>
			                                </li>
			                                <li class="list-inline-item">
			                                    <p class="text-muted stock" >${productDTO.product_stock }</p>
			                                </li>
			                                <br />
                                            <li class="list-inline-item text-right">
                                                수량
                                                <input type="hidden" value="1">
                                            </li>
                                            <li class="list-inline-item"><span class="btn" onclick="fnCalCount('m',this);" style="color:#75c9ba;" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><input class="" name="product_quanity" id="product_quanity" style="border:none;outline:none; width:25px;text-align: center;" readonly value="1"></input></li>
                                            <li class="list-inline-item"><span class="btn" onclick="fnCalCount('p',this);" style="color:#75c9ba; " id="btn-plus">+</span></li>
                                        	<br /><li class="list-inline-item" value="">합계 : &nbsp;&nbsp;&nbsp;&nbsp;<input name="amount" style="color:#75c9ba; font-weight: bold; outline:none; border:none;" readonly id="total" value="${productDTO.product_price }"></input></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row pb-3" style="text-align: center; justify-content: center;">
                                    <div class="col ms-3">
                                        <button type="submit" class="btn" style=" width:200px; border-bottom:#75c9ba solid 2px; color:#75c9ba;" name="subM" value="buy">바로구매</button>
                                    </div>
                                    <div class="col me-3" >
                                        <button type="submit" class="btn" style=" border-bottom:#75c9ba solid 2px; color:#75c9ba; width:200px;" name="subM" value="addtocart">장바구니에 추가하기</button>
                                    </div>
                                </div>
                            </form>
                            <!-- form태그 끝 -->
                           
                        </div>
                    </div>
                </div>
                <!-- 상세내용 끝 -->
            </div>
        </div>
    </section>
    <!-- Close Content -->

	<jsp:include page="../common/foot.jsp" />
</body>
</html>