<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	font-family: SpoqaHanSans, 'BM JUA_TTF', sans-serif;
}

p {
	margin-bottom: 0
}

a {
	text-decoration: none;
}
ul, li {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;box-sizing: border-box;padding:0;margin:0}
   
   .quickmenu {position:absolute;width:110px;top:10%;margin-top:-50px;right:10px;background:#fff;margin-right: 150px;}
   .quickmenu ul {position:relative;float:left;width:100%;display:inline-block;*display:inline;border:1px solid #ddd;}
   .quickmenu ul li {float:left;width:100%;border-bottom:1px solid #ddd;text-align:center;display:inline-block;*display:inline;}
   .quickmenu ul li a {position:relative;float:left;width:100%;height:30px;line-height:30px;text-align:center;color:#999;font-size:9.5pt;}
   .quickmenu ul li a:hover {color:#000;}
   .quickmenu ul li:last-child {border-bottom:0;}
</style>
</head>
<body>
<jsp:include page="../common/Header.jsp" />

	<!-- main_menu -->
	<div
		style="display: flex; justify-content: center; flex-direction: column; padding-top: 180px; padding-bottom: 85px; align-items: center; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 20px;">
		<img
			src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg"
			alt="">
	</div>


	<input type="hidden" id="cate" value="${cate }">


	<div id=""
		style="border-bottom: 1px solid #81899b; border-top: 1px solid #81899b; height: 90px; display: flex; align-items: center; justify-content: center; padding-right: 700px;">
		<div id="scrollB" style="display: flex; flex-direction: row;">

			<a href="./shop?cate=0"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					전체상품</p>
			</a> <a href="./shop?cate=1"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					사료</p>
			</a> </a> <a href="./shop?cate=2"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					약</p>
			</a> </a> <a href="./shop?cate=3"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					굿즈</p>
			</a>
		</div>
	</div>
	<!-- middle(소스 가져옴) : DB에서 가져와서 출력하도록 변경해야 함. -->
	<div
		style="width: 100%; display: flex; flex-direction: column; align-items: center; padding-top: 130px">
		<div
			style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">
			<div
				style="width: 1024px; display: flex; justify-content: space-between; align-items: center">
				<p
					style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">
					${category }</p>
				<div style="display: flex; flex-direction: row;">

					<a href="#" onclick="sortsell();"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<input type="hidden" id="sortS" value="1">
						<input type="hidden" id="sortmS" value="0">
						<p 
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							누적판매순</p>
					</a> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
					<a href="#" onclick="sortPrice();"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<input type="hidden" id="sortP" value="2">
						<input type="hidden" id="sortmP" value="0">
						<p id="sortmPK"
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							가격순</p>
					</a> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
					<a href="#" onclick="sortRegDate();"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<input type="hidden" id="sortR" value="3">
						<input type="hidden" id="sortmR" value="0">
						<p
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							최신등록순</p>
					</a>
				</div>
			</div>
			<!-- 첫번째 오래된 순 -->
			<div class="listDivP" id="listDivP">
			<c:forEach items="${lists }" var="row" varStatus="vs" >
			<c:if test="${vs.index%4==0 }">
			<div class="listDivC" id="listDivC"
				style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between;">
			</c:if>
			
			<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between;float: left;"  >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;justify-content: space-between;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                ${row.product_name }
              </div>
              <div style="display: flex;" align="right" >
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
              <fmt:formatNumber value="${row.product_price }" pattern="#,###" />원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">${row.review_count }</span>
              </div>
              </div>
          </div>
        </div>
			
			
			<c:if test="${vs.index%4==3 }">
			</div>
			</c:if>
			</c:forEach>
			<!-- 리스트 마지막 -->
			</div>
			</div>
			<br />
			<br />
			<div
				style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">

			</div>
				<div
					style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 180px">


				</div>
				<!-- <div style="width: 100%; height: 2488px;"></div> -->
				<!-- app02 -->
				<jsp:include page="../common/foot.jsp" />
				<div class="quickmenu">
			        <div style="text-align: center; margin-top: 10px;margin-bottom: 10px;">
			            최근본상품
			            <span style="width: 100%; color:red ;">
			                3
			            </span>
			        </div>
			        <div>
			            <img style="width: 100%;" 
			             src="https://view01.wemep.co.kr/wmp-deal/3/350/601123503/601123503_thumbnail.jpg?1638934741" alt="">
			            <img style="width: 100%;" 
			             src="https://view01.wemep.co.kr/wmp-deal/3/350/601123503/601123503_thumbnail.jpg?1638934741" alt="">
			            <img style="width: 100%;" 
			             src="https://view01.wemep.co.kr/wmp-deal/3/350/601123503/601123503_thumbnail.jpg?1638934741" alt="">
			
			        </div>
			
			        <div style="text-align: center; margin-top: 10px;margin-bottom: 10px;">
			            
			            1/1  <button><</button><button>></button>
			        </div>
			
			        <div >
			            <ul>
			                <li><a href="#">장바구니></a></li>
			                <li><a href="#">등급별혜택</a></li>
			                <li><a href="#">1:1문의</a></li>
			            </ul>
			        </div>
		      </div>
		      
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
										content += "<div style='width: 1024px; margin-top: 50px; display: flex; justify-content: space-between;'>";
									}
								           
									content += "<div style='width: 1024px; margin-top: 50px; display: flex; justify-content: space-between;float: left;'  ><div>";               
									content += "<a href='#'  style='margin-right: 14px'><div style='width: 245px; height: 170px; border-radius: 3px'>";               
									content += "<img src='https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg' style='width: 245px; height: 170px; border-radius: 3px'></div>";               
									content += "</a><div style=' margin-top: -15px; width: 245px; justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;'  >";
									content += "<div style='display: flex; flex-direction: row;justify-content: space-between;'>";
									content += "<div style='overflow: hidden; text-overflow: ellipsis; white-space: nowrap;  '>" +lists[i].product_name;              
									content += "</div><div style='display: flex;' align='right' ><a href='#'>";               
									content += "<img src='./images/premium-icon-shopping-cart-4570068.png' style='width: 25px;height: 25px;'></a></div></div><div>";
									content += numberWithCommas(lists[i].product_price)+"원</div><div>";
									content += "<span style='font-size: 9px;'>리뷰 </span>";
									content += "<span style='color: #75c9ba;font-size: 9px;'>" + lists[i].review_count  +"</span></div></div></div></div>";
								
									
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
