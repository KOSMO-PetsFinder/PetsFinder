<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- Bootstrap -->
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
	* {	font-family: SpoqaHanSans, 'BM JUA_TTF', sans-serif;	}
	a {	text-decoration: none;	}
	ul, li {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;box-sizing: border-box;padding:0;margin:0}
    p { margin-bottom: 0 }
   .quickmenu {position:absolute;width:110px;top:10%;margin-top:-50px;right:10px;background:#fff;margin-right: 150px;}
   .quickmenu ul {position:relative;float:left;width:100%;display:inline-block;*display:inline;border:1px solid #ddd;}
   .quickmenu ul li {float:left;width:100%;border-bottom:1px solid #ddd;text-align:center;display:inline-block;*display:inline;}
   .quickmenu ul li a {position:relative;float:left;width:100%;height:30px;line-height:30px;text-align:center;color:#999;font-size:9.5pt;}
   .quickmenu ul li a:hover {color:#75c9ba;}
   .quickmenu ul li:last-child {border-bottom:0;}
</style>
</head>
<body>
	<!-- 최근본 상품 시작 -->
    <div class="quickmenu">
        <div style="text-align: center; margin-top: 10px;margin-bottom: 10px;">
            최근본상품
            <span style="width: 100%; color:red ;">
                3
            </span>
        </div>
        <div>
            <img style="width: 100%;" 
             src="./images/강아지용 계단.jpg" alt="">
            <img style="width: 100%;" 
             src="./images/폭탄인형.jpg" alt="">
            <img style="width: 100%;" 
             src="./images/샴푸.jpg" alt="">

        </div>

        <div style="text-align: center; margin-top: 10px;margin-bottom: 10px;">
            
            1/1  <button class="btn" style="color:#75c9ba;">&lt;</button><button class="btn" style="color:#75c9ba;">&gt;</button>
        </div>

        <div >
            <ul>
                <li><a href="#">장바구니</a></li>
                <li><a href="#">등급별혜택</a></li>
                <li><a href="#">1:1문의</a></li>
            </ul>
        </div>
     </div>
	<script>
	 $(document).ready(function(){
	        var currentPosition = 200;
	        var topscrollx = 400;
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
	<!-- 최근본상품 끝 -->
</body>
</html>