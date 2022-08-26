<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="./full-page-scroll.css" />
<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
<!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css"/>
<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<title>Pets Finder</title>
	<style>
    * {
      font-family: 'BM JUA_TTF', SpoqaHanSans, sans-serif;
    }
    a {
      text-decoration: none;
    }
    p {
      margin-bottom: 0
    }
    /* 스크롤 움직이면 transform */
    .m1 {
        opacity: 0;
        transition: all 1s ease;
    }
    .m1-up {
        transform: translate(0, 100px);
    }
    .m1-down {
        transform: translate(0, -100px);
    }
    .m1-right {
        transform: translate(-100px, 0);
    }
    .mi-left {
    	transform: translate(100px, 0);
    }
    .show {
      opacity: 1;
      transform: none;
    }
    /*  
    Intro
    */
	.Intro {
		background-color: #fff;
		/* 
		#5BB4E3
		#598987
		#F2E6DF
		#FFEEB8
		#8c91ac
		*/
	}
	
	.section2 {
  		background-color: #2E78A6;
  		/*
  		#A2D7ED
  		*/
	}
	/*  
	sitter
	*/
	.sitter_main {
  		background-color: #6CAFD9;
		/* 
		#DCF2FF
  		#BACDD9
  		#90B494
  		#728EA6
  		#2F4673
  		*/
	}
	.sitter_main .sitter_menu {
		display: flex;
		justify-content: center; 
		width:100%; 
		flex-direction: column; 
		align-items: center; 
		padding-top: 70px; 
		padding-bottom: 100px;
	}
	.sitter_main .sitter_menu div.main_latter {
		display: flex; 
		flex-direction: column; 
		width: 310px; 
		height: 462px; 
		align-items: center; 
		box-shadow: rgba(0, 0, 0, 0.08) 2px 3px 32px; 
		padding-top: 5px;
		background-color: white;
		border-radius: 5px
	}
	.sitter_main .sitter_menu div.sitter_btn {
		display: flex;
		justify-content: space-between;
		
	}
	.sitter_menu div.sitter_btn .s_reserve {
		display: flex; 
		justify-content: center;
		align-items: center; 
		background-color: white; 
		color: #75c9ba; 
		margin: 10px 20px 80px 0; 
		border-radius: 26px; 
		width: 300px; 
		height: 60px; 
	}
	.sitter_menu div.sitter_btn .s_latter {
		display: flex; 
		justify-content: center;
		align-items: center; 
		background-color: white; 
		color: #75c9ba; 
		margin: 10px 0 80px 20px; 
		border-radius: 26px; 
		width: 300px; 
		height: 60px; 
	}
	/*  
	Information(shopping_mall, hospital, )
	*/
	.Information {
  		background-color: #9BD991;
  		/*
  		#D8BBA0
  		*/
  		text-align: center;
  		padding-top: 100px; 
		padding-bottom: 148px;
	}
	.Information .shopping {
		display: flex; 
		justify-content: center;
		align-items: center; 
		background-color: white; 
		color: #75c9ba; 
		margin: 40px 0 40px 20px; 
		border-radius: 26px; 
		width: 300px; 
		height: 60px; 
	}
	.hospital {
  		background-color: #D5F2E2;
  		/*
  		#D8BBA0
  		*/
  		text-align: center;
  		padding-top: 100px; 
		padding-bottom: 148px;
	}
	.hospital .btn {
		display: flex; 
		justify-content: center;
		align-items: center; 
		background-color: #75c9ba; 
		color: white; 
		margin: 40px 0 40px 20px; 
		border-radius: 26px; 
		width: 300px; 
		height: 60px; 
	}
	
	.section6 {
  		background-color: #fff;
	}
	
/* 	section div {
		font-family: 'BM JUA_TTF';
		font-style: normal;
		text-align: center;
		position: relative;
		top: 50%;
		transform: translateY(-50%);
	} */
	
	.pageName {
		font-size: 4em;
		font-style: normal;
		color: #fff;
	}
	</style>
	</head>
	<body>
 	<jsp:include page="./common/Header.jsp" />
 	<!-- Line -->
 	<!-- 
	<div style="border-bottom:1px solid gray; background: none; position:fixed; z-index: 99999; top: 70px; width: 100%"></div>
	<div style="border-bottom:1px solid gray; background: none; position:fixed; z-index: 99999; bottom: 64px; width: 100%"></div>
	<div style="border-right:1px solid gray; background: none; position:fixed; z-index: 99999; right: 100px; height: 100%"></div>
	 -->
	<div id="main" class="scroll-container">
	    <section class="Intro">
	     	<!-- 메인1페이지 하단 -->
			<style>
			.main_foot {
				display: flex;
				position:fixed; 
				z-index: 9999; 
				padding: 12.5px 0;
				justify-content: space-around;
				width: 100%;
				height: 64px;
				bottom: 0;
				background-color: #cccccc;
			}
			.main_foot .foot_menu {
				color: white;
				background: none;
				font-size: 1.5em;
			}
			.foot_menu {
				display: flex;
				flex-direction: column;
				justify-content: center
			}
			.main_foot .foot_menu a {
				color: white;
				
			}
			</style>
			<div class="main_foot">
				<div class="foot_menu" style="left: 50px;">
					<a href="<c:url value='/'/>notBoardlist" >
						공지사항
					</a>
				</div>
				<div class="foot_menu" style="left: 50px;"><a href="./board">질문과 답변</a></div>
				<div class="foot_menu" style="left: 500px;">유기동물에 대한 실시간 정보</div>
				<div class="foot_menu" style="right: 300px;"><a href="./notifyForm.do">신고</a></div>
			</div>
	    	<script>
	    	function endVideo() {
	    		$('.intro_vcr').css({display : 'none'});
	    		$('.intro_img').css({display : 'flex'});
	    	}
	    	</script>
	        <div class="container-fluid" style="padding: 70px 0 0 0">
 		        <div class="uk-cover-container uk-background-cover uk-height-larger intro_vcr" style="height: 800px">
		        	<video src="./images/Intro.mp4" autoplay loop="loop" muted playsinline uk-cover onpause="endVideo();"></video>
		        </div>
		        <div class="intro_img" style="display: none; position: absolute; width: 100%; height: 800px; left: 0; ">
		        	<div style="display: flex; flex-direction: column; align-items: left; margin-top: 60px; z-index: 99; margin-left: 100px">
				        <p style="display: flex; font-size: 45px; font-weight: bold;"><span style="color: #75c9ba;">Pet's Finder</span>에서</p>
				        <p style="display: flex; font-size: 45px; font-weight: bold;">평생을 함께할 반려를 찾아보세요!</p>
				       	<p style="display: flex; font-size: 45px; font-weight: bold;">당신을 기다리는 유기견 / 유기묘에게</p>
				        <p style="display: flex; font-size: 45px; font-weight: bold;">사랑을 나눠주세요!</p>
				    </div>
		        	<img src="./images/slide_04.jpg" alt="" style="position: absolute; width: 100%; height: 800px; margin: auto; inset: 0px; opacity: 0.8"/>
		        </div>
	        </div>
	    </section>
	    <section class="section2">
	    	<style>
	    	    /* service_menu */
			    .service_section {
			      width: 365.5px;
			    }
			    .service_section ul li{
			      display: inline-block;
			      list-style: none;
			      width: 64px;
			      padding-top: 15px;
			      margin: 10px;
			    }
			    .tabs {
			      font-size: 17px;
			      cursor: pointer;
			      padding-left: 0;
			    }
			    .select-service {
			      font-weight: bold;
			      color: #75c9ba;
			    }
			    .select-service span{
			      width: 64px;
			      border-bottom: 2px solid #75c9ba;
			      padding-bottom: 10px;
			    }
			    .tab_container {
			      display: flex;
			      justify-content: left;
			      margin-left: 30px;
			    }
			    .tab_content{
			      text-align: left;
			      font-size: 17px;
			      width: 365.5px;
			      margin-top: 28px;
			      line-height: 30px;
			      color: #4D5055;
			    }
			    img.service_image {
			      width: 420px;
			      height: 700px;
			    }
	    	</style>
	    	<script>
	        $(function () {
	            
	            /*auto switch */
	            var tabs = $('.tabs li');
	            var tabs1 = $('.tabs li');
	            var timerId = 0;  
	            var timerId1 = 0;  
	            
	            timerId = setInterval(function() {
	              var onTab = tabs.filter('.select-service');
	              var nextTab = onTab.index() < tabs.length-1 ? onTab.next() : tabs.first();
	              nextTab.click();
	            }, 5000);      
	              
	            $(".tab_container").mouseleave(function () {
	        
	              timerId = setInterval(function() {
	                var onTab = tabs.filter('.select-service');
	                var nextTab = onTab.index() < tabs.length-1 ? onTab.next() : tabs.first();
	                nextTab.click();
	              }, 3000);
	            });
	        
	            $(".tab_container").mouseenter(function () {
	              clearInterval(timerId);
	            });

	            $(".tab_image").mouseleave(function () {
	        
	              timerId1 = setInterval(function() {
	                var onTab1 = tabs1.filter('.select-service');
	                var nextTab1 = onTab1.index() < tabs1.length-1 ? onTab1.next() : tabs1.first();
	                nextTab1.click();
	              }, 3000);
	            });
	        
	            $(".tab_image").mouseenter(function () {
	              clearInterval(timerId1);
	            });
	            
	            /* tab 글귀 */
	            $(".tab_content").hide();
	            $(".tab_content:first").show();
	            /* tab 이미지 */
	            $(".service_image").hide();
	            $(".service_image:first").show();
	        
	            $("ul.tabs li").click(function () {

	              $("ul.tabs li").removeClass("select-service").css("color", "#81899B");
	              $(this).addClass("select-service").css("color", "#75c9ba");

	              $(".tab_content").hide()
	                var activeTab = $(this).attr("rel");
	              $("#" + activeTab).fadeIn()

	              $(".service_image").hide()
	                var activeTab = $(this).attr("rel1");
	              $("#" + activeTab).fadeIn()
	            });
          	});
	    	</script>
			<!-- service_menu -->
			<div class="container-fluid" style="height: 1020px; display: flex; align-items: center; justify-content: center;">
				<div style="width: 1440px; display: flex; justify-content: space-between; padding-left: 210px; padding-right: 152px;">
					<div style="display: flex; align-items: center; justify-content: space-between; flex-grow: 1;">
					  <!-- left -->
					  <div class="service_section" style="display: flex; flex-direction: column; align-items: center; align-self: center;">
					    <p style="font-size: 50px; line-height: 70px; font-weight: bold;">
						    지금 이 순간에도
						    <br />
						    많은 아이들이
						    <br>
						    가족을 찾고 있어요
					    </p>
					    <ul class="tabs">
						    <li class="select-service" rel="tab1" rel1="im1">
						        <span>아이보기</span>
						    </li>
						    <li rel="tab2" rel1="im2">
					        	<span>예약하기</span>
						    </li>
						    <li rel="tab3" rel1="im3">
					        	<span>후기보기</span>
						    </li>
						    <li rel="tab4" rel1="im4">
					        	<span>대화하기</span>
						    </li>
					    </ul>
					    <div class="tab_container">
						    <!-- #tab1 -->
						    <p id="tab1" class="tab_content">
						        입양을 기다리고 있는
						        <br>
						        많은 아이들을 만나볼 수 있어요!
						    </p>
						    <!-- #tab2 -->
						    <p id="tab2" class="tab_content">
						        마음이 가는 아이들과 
						        <br>
						        가족이 되어 보세요!
						    </p>
						    <!-- #tab3 -->
						    <p id="tab3" class="tab_content">
						        다양한 아이들이 가족을 만나
						        <br>
						        즐거워 하는 모습을 보며 힐링하세요!
						    </p>
						    <!-- #tab4 -->
						    <p id="tab4" class="tab_content">
						        언제든지 입양과 관련하여 궁금한 점이 있다면,
						        <br>
						        챗봇에서 1:1 채팅으로 상담사와 대화할 수 있어요!
						    </p>
					    </div>
				    </div>
				    <!-- right -->
				    <div class="tab_image">
					    <img id="im1" class="service_image" src="./images/service-image01.png" alt="">
					    <img id="im2" class="service_image" src="./images/service-image02.png" alt="">
					    <img id="im3" class="service_image" src="./images/service-image03.png" alt="">
					    <img id="im4" class="service_image" src="./images/service-image04.png" alt="">
				    </div>
				  </div>
				</div>
			</div>
	    </section>
		<section class="sitter_main">
			<!-- latter_menu -->
			<div class="container-fluid sitter_menu">
			    <p style="display: flex; text-align: center; font-size: 55px; font-weight: bold; color: white">
			    	Pet's Finder
				    <br>
				    펫시터
			    </p>
			    <div style="border-top: 2px solid white; width:500px; align-self: center; margin: 10px 0 30px 0"></div>
			    <div style="display: flex; justify-content: space-between; width: 994px; margin: 30px auto 30px; ">
				    <!-- No.1 -->
				    <div class="main_latter" >
				      <div>
				        <img src="./images/latter_img02.png" alt="" style="width: 298px; height: 168px; border-radius: 5px 5px 0 0; align-self: center;">
				      </div>
				      <div style="display: flex; justify-content: space-between; width: 242px; margin-top: 35px">
				        <p style="font-size: 20px; ">
				          <span style=" font-weight: bold; ">라떼</span>보호자님
				        </p>
				        <div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 53px;">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				        </div>
				      </div>
				      <div>
				        <p style="margin-top: 24px; width: 246px; height: 126px; font-size: 15px; line-height: 26px; color: rgb(77, 80, 85); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 5; -webkit-box-orient: vertical;">
				          저는 집이 캐나다라 이번 여름에 장기적으로 12살 모카를 맡길 곳을 찾다가 펫플래닛이라는걸 알게 되어 처음으로 Jimmy 펫시터님에게 맡겼어요. 교육을 제대로 받지 못한 모카라 많이 힘드셨을텐데 이번 2박 3일동안 많은 신경써주셔서 너무 감사했어요! 모카는 노령견에다 심장이 약해 약까지 복용하고 있는데 약먹는 시간마다 사진을 보내주시고 너무 마음이 놓였어요. 특히나 원래 호텔링에 맡기고 데리러 가면 아주 오랜 시간동안 우는데 이번엔 아예 그런게 없어서 살짝 당황스러웠네요? ㅋㅋㅋㅋ 시터님 너무 감사해요, 8월에도 잘 부탁드려요!!
				        </p>
				      </div>
				      <div style="width: 246px; height: 40px; margin-top: 10px">
				        <a href="" style="color: rgb(188, 188, 188); font-size: 15px; font-weight: bold; width: 80px; height: 40px; display: flex; align-items: center;">
				          전체보기 &gt;
				        </a>
				      </div>
				    </div>
				    <!-- No.2 -->
				    <div class="main_latter" >
				      <div>
				        <img src="./images/latter_img03.jpeg" alt="" style="width: 298px; height: 168px; border-radius: 5px 5px 0 0; align-self: center;">
				      </div>
				      <div style="display: flex; justify-content: space-between; width: 242px; margin-top: 35px">
				        <p style="font-size: 20px; ">
				          <span style=" font-weight: bold; ">콩이</span>보호자님
				        </p>
				        <div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 53px;">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				          <img width="9" height="9" src="./images/star_1.png">
				        </div>
				      </div>
				      <div>
				        <p style="margin-top: 24px; width: 246px; height: 126px; font-size: 15px; line-height: 26px; color: rgb(77, 80, 85); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 5; -webkit-box-orient: vertical;">
				          급하게 부탁드렸는데 우리 콩이 너무 예쁘게 잘 보살펴주셔서 감사합니다!!!!! 차에서 딱 내리자마자 공기도 너무 좋고 환경이 너무 좋아 하나가 좋아하겠다 싶었어요 ㅎㅎ 
					사료에도 맛있는 닭가슴살도 뿌려서 주시고 하나한텐 휴가가 아니었을까 싶습니다 ㅎ
					산책도 계속 시켜주시고 집에선 공놀이와 이쁨 듬뿍 주셔서 감사합니다! 일지보면 하나가 편~해 하는게 눈에 보여요 ㅎ 다음에 만나게 되도 좋아할것 같아요!
				        </p>
				      </div>
				      <div style="width: 246px; height: 40px; margin-top: 10px">
				        <a href="" style="color: rgb(188, 188, 188); font-size: 15px; font-weight: bold; width: 80px; height: 40px; display: flex; align-items: center;">
				          전체보기 &gt;
				        </a>
				      </div>
				    </div>
				    <!-- No.3 -->
				    <div class="main_latter" >
				        <div>
				        	<img src="./images/latter_img05.jpg" alt="" style="width: 298px; height: 168px; border-radius: 5px 5px 0 0; align-self: center;">
				        </div>
				        <div style="display: flex; justify-content: space-between; width: 242px; margin-top: 35px">
					        <p style="font-size: 20px; ">
				          		<span style=" font-weight: bold; ">달이</span>보호자님
					        </p>
					        <div style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; width: 53px;">
						        <img width="9" height="9" src="./images/star_1.png">
						        <img width="9" height="9" src="./images/star_1.png">
						        <img width="9" height="9" src="./images/star_1.png">
						        <img width="9" height="9" src="./images/star_1.png">
						        <img width="9" height="9" src="./images/star_1.png">
					        </div>
				        </div>
				        <div>
				        <p style="margin-top: 24px; width: 246px; height: 126px; font-size: 15px; line-height: 26px; color: rgb(77, 80, 85); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 5; -webkit-box-orient: vertical;">
				        	돌보기 만만치 않은 저희 달이를 가족처럼 돌봐주신 펫시터님과 가족분들께 진심으로 감사드립니다. 덕분에 부모님 모시고 마음놓고 여행다녀 올 수 있었어요. 
							종종 올려주시는 찰스 사진 보면서 마음 편하게 여행 다녀올수 있었습니다. 찰스 데리러 간날 만나뵜던 남편분과 따님을 보고, 허락만 하신다면 다음에 또 맡길일 있을때 주저없이 연락드리고 싶다는 생각도 들었어요.. 가족분들이 저희 찰스를 너무 예뻐하시는게 눈에 선합니다. 돌보기 쉽지 않으셨을텐데 3일간 너무 고생들하셨구요.. 다음에 또 연락드릴때에도 꼭 봐주세요~~~^^; 부탁드립니다... 감사합니다.!!!
				        </p>
				        </div>
				        <div style="width: 246px; height: 40px; margin-top: 10px">
					        <a href="" style="color: rgb(188, 188, 188); font-size: 15px; font-weight: bold; width: 80px; height: 40px; display: flex; align-items: center;">
					        	전체보기 &gt;
					        </a>
				        </div>
				    </div>
			    </div>
				<div class="sitter_btn">
					<a class="s_reserve" href="<c:url value='/'/>Petsitters/petsitters" >
						<p style="font-size: 18px; margin-bottom: 0; font-weight: bold;"> 예약하기</p>
					</a>
					<a class="s_latter" href="<c:url value='/'/>Petsitters/sitterreview" >
						<p style="font-size: 18px; margin-bottom: 0; font-weight: bold;"> + 후기 더보기</p>
					</a>
				</div>
			</div>
		</section>
		<section class="hospital">
			<div class="container-fluid" >
				<div style="display: flex; flex-direction: column; ">
                 	<p style="color: #75c9ba; font-size: 55px; font-weight: 600; ">
                   		우리 동네 동물 병원 및 약국을<br />
                   		한눈에 볼 수 있어요.
                 	</p>
                 	<div style="border-top: 2px solid white; width:500px; align-self: center; margin: 10px 0 80px 0"></div>
             	</div>
	             <!-- ** Wonjae ** 메인페이지 지도 -->
              	<div style="display: flex; justify-content: center;">
                 	<div style="display: flex; flex-direction: column;">
                     	<p style="color: black; font-size: 40px; text-align: center; ">
	                        입양한 반려동물이 아프다면?<br />
	                        유기견, 유기묘만을 위한<br />
	                        <strong style="color: #75c9ba">PetsFinder</strong>의<br />
	                        <strong style="color: #75c9ba">제휴 동물병원과 약국</strong>을<br>
	                        이용해보세요!
                     	</p>
                     	<div style="display: flex; justify-content: center">
	                     	<a class="btn" href="<c:url value='/'/>" >
								<p style="font-size: 18px; margin-bottom: 0; font-weight: bold;">병원 및 약국</p>
							</a>
                     	</div>
                 	</div>
	                <div id="map" style="width: 500px; height: 500px; margin-left: 40px"></div>
	                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2&libraries=services,clusterer,drawing"></script>
	                <script>
                	$(function () {
                    
	                    var latitude = "";
	                    var longitude = "";
	                    var loc = "";
	                    function search (lat, lon) {
	                      		// 장소 검색 객체를 생성합니다
	                    		var ps = new kakao.maps.services.Places(); 
	                     
	                    		// 주소-좌표 변환 객체를 생성합니다
	                    		var geocoder = new kakao.maps.services.Geocoder();
	                       
	                    		// 키워드로 장소를 검색합니다
	                    		ps.keywordSearch('동물병원', placesSearchCB, {
	                        	location : new kakao.maps.LatLng(lat, lon)
	                    		});
	                    }
	                    /* 현재 위치 경로 받아오기(위도, 경도) */
	                    
	                    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	               	 	if (navigator.geolocation) {
	                      
	                      	// GeoLocation을 이용해서 접속 위치를 얻어옵니다
	                      	navigator.geolocation.getCurrentPosition(function(position) {
	                          
                        		var lat = position.coords.latitude; // 위도
	                       		var lon = position.coords.longitude; // 경도
	                          
                        		var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                        		// 마커와 인포윈도우를 표시합니다
                       			console.log("위도", lat, "경도", lon, "마커", locPosition)
	                         	latitude = lat;
		                        longitude = lon;
		                        loc = locPosition;
		                        search(latitude, longitude);
	                        
	                        	// 지도에 표시할 원을 생성합니다
		                        var circle = new kakao.maps.Circle({
		                            center : new kakao.maps.LatLng(lat, lon, locPosition),  // 원의 중심좌표 입니다 
		                            radius: 500, // 미터 단위의 원의 반지름입니다 
		                            strokeWeight: 3, // 선의 두께입니다 
		                            strokeColor: '#6c2119', // 선의 색깔입니다
		                            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		                            strokeStyle: 'dashed', // 선의 스타일 입니다
		                            fillColor: '#75c9ba', // 채우기 색깔입니다
		                            fillOpacity: 0.5  // 채우기 불투명도 입니다   
		                        }); 
		
		                        // 지도에 원을 표시합니다 
		                        circle.setMap(map); 
	                        });
		                } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		                    
		                    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
		                        message = 'geolocation을 사용할수 없어요..'
		                        
		                    displayMarker1(locPosition, message);
		                }
	                    
		                // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		                var infowindow = new kakao.maps.InfoWindow({zIndex:1});   
	                    
	                  	/* 지도 생성 */
	                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	                        mapOption = { 
	                            center: new kakao.maps.LatLng(37.4730836, 126.8788276), // 지도의 중심좌표
	                            level: 4 // 지도의 확대 레벨
	                        };
	                    // 지도를 표시할 div와 지도 옵션으로  지도를 생성합니다
	                    var map = new kakao.maps.Map(mapContainer, mapOption); 
	   
	                    /* 장소 검색 */
	                    
	                   	// 지도에 마커를 표시하는 함수입니다
		                function displayMarker(place) {
		                    
		                    // 마커를 생성하고 지도에 표시합니다
		                    var marker = new kakao.maps.Marker({
		                        map: map,
		                        position: new kakao.maps.LatLng(place.y, place.x) 
		                    });
		                
		                    // 마커에 클릭이벤트를 등록합니다
		                    kakao.maps.event.addListener(marker, 'click', function() {
		                        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		                        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		                        infowindow.open(map, marker);
		                    });
		                    
		                }
	                   
	                  
		                // 키워드 검색 완료 시 호출되는 콜백함수 입니다
		                function placesSearchCB (data, status, pagination) {
		                    if (status === kakao.maps.services.Status.OK) {
		                
		                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		                        // LatLngBounds 객체에 좌표를 추가합니다
		                        var bounds = new kakao.maps.LatLngBounds();
		                
		                        for (var i=0; i<data.length; i++) {
		                            displayMarker(data[i]);    
		                            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		                        }       
		                        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		                        map.setBounds(bounds);
		                    } 
		                }
	                  
              			/* 지도 컨트롤러 */
		                // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		                var mapTypeControl = new kakao.maps.MapTypeControl();
		
		                // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		                // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		                map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		                // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		                var zoomControl = new kakao.maps.ZoomControl();
		                map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
                	})
              	</script>
	        	</div>
 		    </div>
		</section>
	    <section class="Information">
		    <div class="container-fluid" >
				<div style="display: flex; flex-direction: column; ">
			        <p style="color: white; font-size: 55px; font-weight: 600; ">
			          	입양의 첫 시작,<br />
				            무엇부터 챙겨야 할 지<br />
				            잘 모르겠다면!!<br />
			        </p>
			        <div style="border-top: 2px solid white; width:500px; align-self: center; margin: 10px 0 80px 0"></div>
		    	</div>
		        <div style="display: flex; justify-content: center; flex-direction: column;">
			        <div style="display: flex; flex-direction: column;">
			            <p style="color: black; font-size: 40px; text-align: center; ">
				            <strong style="color: white">Pet's Finder</strong>에서<br />
				            <strong style="color: white">웰컴 첫 입양키트</strong>를 받아보세요!
			            </p>
			            <div style="display: flex; justify-content: center;">
				            <a class="shopping" href="<c:url value='/'/>Shop" >
								<p style="font-size: 18px; margin-bottom: 0; font-weight: bold;">쇼핑몰 바로가기</p>
							</a>
			            </div>
			        </div>
		        </div>
			</div>
	    </section>
	    <!-- 
	    <section class="section6">
		    <div>
		      <span class="pageName">Page #6</span>
	    	</div>
	    </section>
	     -->
	</div>
	<script src="./full-page-scroll.js"></script>
	<script type="text/javascript">
	  new fullScroll({
	    displayDots: true,
	    dotsPosition: 'left',
	    animateTime: 0.7,
	    animateFunction: 'ease',
	  });
	</script>
</body>
</html>
