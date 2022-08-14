<%@page import="petsfinder.shop.ProductDTO"%>
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
	<h1 style="margin-top:50px; margin-left:380px; color:#75c9ba;" >${category }</h1>
	<!-- 정렬보기 시작 -->
	<div  style="width: 100%; display: flex; flex-direction: row; padding-left:1250px;  padding-right:20px; margin-top: 50px; margin-left:auto;">
		<div style="display: flex; flex-direction:row ;">
				<input type="hidden" id="sortS" value="1">
				<input type="hidden" id="sortmS" value="0">
				<p 
					style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
					<a href="#" onclick="sortsell();" style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
						누적판매순</a>
				</p> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
				<input type="hidden" id="sortP" value="2">
				<input type="hidden" id="sortmP" value="0">
				<p style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
					<a id="sortmPK" href="#" onclick="sortPrice();" style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
						낮은가격순</a>
				</p> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
				<input type="hidden" id="sortR" value="3">
				<input type="hidden" id="sortmR" value="0">
				<p 
					style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
					<a href="#" onclick="sortRegDate();"
						style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
						최신등록순</a>
				</p>
		</div>
	</div>
	<!-- 정렬보기 끝 -->
	
	
	
	<c:forEach items="${lists }" var="row" varStatus="vs" >
        	 	<script>
		  var photos${row.product_idx} = "${row.photos}";
		  var photo${row.product_idx} = photos${row.product_idx}.split(',');
		  console.log(photo${row.product_idx}.length);
		  $(function () {
		      $('#photo${row.product_idx}').attr({ src: './Uploads/' + photo${row.product_idx}[0] });
		  });
		</script>
	</c:forEach>
		
		
					
    <!-- Start -->
    <section class="bg-light" style="height:90%">
        <div id="scrollB" class="container py-5" style="height:1200px;" >
            <div id="listDivP" class="ms-auto me-auto" style="width: 1024px; height:90%; margin-top: 50px; " >
        	<!-- 아이템 반복 -->
	          <c:forEach items="${lists }" var="row" varStatus="vs" >
	          	<c:if test="${vs.index%4==0 }">
	          		<div class="listDiv" style=" margin-right: 20px; padding-top:10px;"  >
	          	 </c:if>	
		        	<div style="float:left; padding-right:3px;">
		              <div style="width: 245px; height: 170px; border-radius: 3px;"  >
			            <a href="<c:url value='/'/>ShopView?product_idx=${row.product_idx}" id="photos" style="margin-right: 14px">
			                <img   id="photo${row.product_idx }" style="width: 245px; height: 170px; border-radius: 3px">
			            </a>
		              </div>
		              <div style=" margin-top: -15px; width: 245px; justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
			              <div style="display: flex; flex-direction: row;">
			                <div style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap; margin-top:15px; ">
			                ${row.product_name }
			              	</div>
			              </div>
			              <div style="margin-top:15px; justify-content: space-between; display: flex">
					          <p><fmt:formatNumber value="${row.product_price }" pattern="#,###" />원</p>
				              <a href="">
				                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 20px;height: 20px;">
				              </a>
			              </div>
			              <div>
			                <span style="font-size: 12px;">리뷰 </span>
			                <span style="color: #75c9ba;font-size: 12px;">${row.review_count }</span>
			              </div>
		             </div>
		            </div>
	          <c:if test="${vs.index%4==3 }"> 
	          	</div>
	          </c:if>
	          </c:forEach>
	        <!-- 아이템반복 끝 -->
	     	
       		</div>
	    </div>
    </section>
    <!-- End -->
	<jsp:include page="../common/Shopside.jsp" />
	<jsp:include page="../common/foot.jsp" />
	<script>
				 $(document).ready(function(){
				        var currentPosition = 150;
				        var topscrollx = 1100;
				        $(".quickmenu").stop().animate({"top":topscrollx+"px"});
				        $(window).scroll(function() {
				            var position = $(window).scrollTop();
				            if(position <= topscrollx) {
				                $(".quickmenu").stop().animate({"top":topscrollx+"px"});
				            }else {
				                $(".quickmenu").stop().animate({"top":position+currentPosition+"px"});
				            }
				        });
				      });
				</script>
				 <script type="text/javascript">
				    function sortPrice(){
						$.ajax({
							url : "./shopSortList",
							type : "POST",
							data : {
								"sort" : $('#sortP').val(),
								"sortm" : $('#sortmP').val(),
								"cate" : $('#cate').val(),
							},
						    dataType : 'json',
							success : function (lists) {
								console.log(lists.length);
								var content="";    
								var vs=0;  
								for(var i=0; i<lists.length; i++){ 
									if(vs%4 ==0) {
										content += "<div class='listDiv' style=' margin-right: 20px; padding-top:10px;'  >";
									}
								           
									content += "  <div style='float:left; padding-right:3px;'>";               
									content += "<div style='width: 245px; height: 170px; border-radius: 3px;'  >";               
									content += "<a href='<c:url value='/'/>ShopView?product_idx=" +lists[i].product_idx+"' id='photos' style='margin-right: 14px'>";               
									content += "<img   id='photo" +lists[i].product_idx +"' style='width: 245px; height: 170px; border-radius: 3px'>";
									content += "</a></div><div style=' margin-top: -15px; width: 245px; justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;'  >";
									content += "<div style='display: flex; flex-direction: row;'><div style='overflow: hidden;text-overflow: ellipsis;white-space: nowrap; margin-top:15px; '>";              
									content += lists[i].product_name;               
									content += "</div></div><div style='margin-top:15px; justify-content: space-between; display: flex'>";               
									content += "<p>"+ numberWithCommas(lists[i].product_price) +"원</p>";               
									content += "<a href=''><img src='./images/premium-icon-shopping-cart-4570068.png' style='width: 20px;height: 20px;'>";               
									content += "</a></div><div><span style='font-size: 12px;'>리뷰 </span>";               
									content += "<span style='color: #75c9ba;font-size: 12px;'>"+lists[i].review_count +"</span>";               
									content += "</div></div></div>";               
								
									
									if(vs%4==3) {
										content += "</div>";
									}
									vs++;           
								}
								//내용 삭제
								$('#listDivP').empty();
								//내용 추가
								$(content).appendTo("#listDivP");
								//정렬모드 value 변경 
								var val01 = $('#sortmP').val();
								var val02 = parseInt(val01) + 1;
								if(val02 ==3 ) {
									val02=0;
								}
								$('#sortmP').val(val02);
								//스크롤 이동
								var location = document.querySelector("#scrollB").offsetTop;
								window.scrollTo({top:location, behavior:'smooth'});
								//정렬순 이름 변경
								console.log(val01);
								if(val01 ==0) {
									var element = document.getElementById("sortmPK");
									element.innerText = "낮은가격순";
								}else if (val01 ==1) {
									var element = document.getElementById("sortmPK");
									element.innerText = "높은가격순";
								}else if (val01 ==2) {
									var element = document.getElementById("sortmPK");
									element.innerText = "가격순";
								}
							}, 
							
							error : function () {
								console.log("실패");
							},
						});
					};
					function numberWithCommas(x) {
					    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					}
				</script>
</body>
</html>
