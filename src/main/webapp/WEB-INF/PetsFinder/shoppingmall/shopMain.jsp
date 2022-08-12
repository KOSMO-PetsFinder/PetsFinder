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
	font-family: SpoqaHanSans, 'BM JUA_TTF', sans-serif;
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

	<!-- main_menu -->
	<div
		style="display: flex; justify-content: center; flex-direction: column; padding-top: 180px; padding-bottom: 85px; align-items: center; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 20px;">
		<img
			src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg"
			alt="">
	</div>





	<div
		style="border-bottom: 1px solid #81899b; border-top: 1px solid #81899b; height: 90px; display: flex; align-items: center; justify-content: center; padding-right: 700px;">
		<div style="display: flex; flex-direction: row;">

			<a href="#"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					전체상품</p>
			</a> <a href="#"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					사료</p>
			</a> </a> <a href="#"
				style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
				<p
					style="font-size: 15px; color: black; display: flex; align-items: center; padding-bottom: 6px; padding-right: 30px;">
					약</p>
			</a> </a> <a href="#"
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
					style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">전체상품/
					사료/ 약/ 굿즈</p>
				<div style="display: flex; flex-direction: row;">

					<a href="#"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<p
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							누적판매순</p>
					</a> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
					<a href="#"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<p
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							낮은가격순</p>
					</a> &nbsp;<span style="font-size: 15px; color: #81899b;">|</span>&nbsp;
					<a href="#"
						style="border: 0; border-radius: 5px; height: 34px; display: flex; align-items: center; justify-content: center;">
						<p
							style="font-size: 15px; color: #81899b; display: flex; align-items: center; padding-bottom: 6px;">
							최신등록순</p>
					</a>
				</div>
			</div>
			<!-- 첫번째 오래된 순 -->
			<div
				style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between">


				<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
				<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
				<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
				<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>



			</div>
			<div
				style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between">

<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
        <div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
        <div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>
        <div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
          <div>
            <a href="#"  style="margin-right: 14px">
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
            </a>
              <div style=" margin-top: -15px; width: 245px; 
              justify-content: space-between; align-items: center;padding-left: 5px;padding-right: 5px;"  >
              <div style="display: flex; flex-direction: row;">
                <div style="overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;  ">
                바잇미 폭탄 라텍스 장난감 (삑삑)
              </div>
              <div>
              <a href="#">
                <img src="./images/premium-icon-shopping-cart-4570068.png" style="width: 25px;height: 25px;">
              </a>
              </div>
            </div>
              <div>
                5,000원
              </div>
              <div>
                <span style="font-size: 9px;">리뷰 </span>
                <span style="color: #75c9ba;font-size: 9px;">4115</span>
              </div>
              </div>
          </div>
        </div>



			</div>
			<br />
			<br />
			<div
				style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">


				<div
					style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 180px">


				</div>
				<!-- <div style="width: 100%; height: 2488px;"></div> -->
				<!-- app02 -->
				<jsp:include page="../common/foot.jsp" />
</body>
</html>
