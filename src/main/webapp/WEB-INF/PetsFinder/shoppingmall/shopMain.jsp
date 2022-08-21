<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	


    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide mt-3" data-bs-ride="carousel" >
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container" style="border-bottom: #75c9ba dashed 2px; " >
                    <div class="row p-5" >
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="https://cdn.pixabay.com/photo/2018/05/29/10/31/dog-3438453_960_720.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1"style="color:#5C9C90"><b>PetsFinder Mall</b></h1>
                                <h3 class="h2">소중한 아이와의 인연,<br> PetsFinder에서  준비해보세요!</h3>
                                <p>
                                    저희 PetsFinder에서는<br> 처음 아이들을 입양하시는 분들을 위한 스타터 키트 등을 판매하고 있습니다.
                                    <br>판매로 발생하는 수익금의 일부는 <a rel="sponsored" style="text-decoration: none; color:#5C9C90;" >유기동물의 구조 및 관리에 쓰이고 있습니다.</a> 
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container"  style="border-bottom: #75c9ba dashed 2px; ">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last" >
                            <img class="img-fluid" src="https://cdn.pixabay.com/photo/2017/08/07/18/57/dog-2606759_960_720.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1 "style="color:#5C9C90"><b>PetsFinder Mall</b></h1>
                                <h3 class="h2">소중한 아이와의 인연,<br> PetsFinder에서  준비해보세요!</h3>
                                <p>
                                    저희 PetsFinder에서는<br> 처음 아이들을 입양하시는 분들을 위한 스타터 키트 등을 판매하고 있습니다.
                                    <br>판매로 발생하는 수익금의 일부는 <a rel="sponsored" style="text-decoration: none; color:#5C9C90;" >유기동물의 구조 및 관리에 쓰이고 있습니다.</a> 
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container"  style="border-bottom: #75c9ba dashed 2px; ">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="https://cdn.pixabay.com/photo/2016/11/07/14/41/dog-1805983_960_720.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1" style="color:#5C9C90"><b>PetsFinder Mall</b></h1>
                                <h3 class="h2">소중한 아이와의 인연,<br> PetsFinder에서  준비해보세요!</h3>
                                <p>
                                    저희 PetsFinder에서는<br> 처음 아이들을 입양하시는 분들을 위한 스타터 키트 등을 판매하고 있습니다.
                                    <br>판매로 발생하는 수익금의 일부는 <a rel="sponsored" style="text-decoration: none; color:#5C9C90;" >유기동물의 구조 및 관리에 쓰이고 있습니다.</a> 
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->
	
			
    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">첫 입양을 위한 <strong style="color:#75c9ba">Starter kit!!</strong></h1>
                <p>
                    PetsFinder에서는 유기견과 유기묘를 처음 입양하시는 분들을 위해<br>
                    저렴한 가격으로 필수용품 패키지를 제공하고 있습니다.
                </p>
            </div>
        </div>
        <div class="row" style="justify-content: center">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="https://cdn.pixabay.com/photo/2020/03/28/16/03/dog-4977599_960_720.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Doggie's</h2>
                <p class="text-center"><a class="btn"style="background-color:#75c9ba; color:white;">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="#"><img src="https://cdn.pixabay.com/photo/2015/11/16/22/14/cat-1046544_960_720.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Kittie's</h2>
                <p class="text-center"><a class="btn" style="background-color:#75c9ba; color:white;">Go Shop</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->

	<jsp:include page="../common/Shopside.jsp" />
	<jsp:include page="../common/foot.jsp" />
</body>
</html>