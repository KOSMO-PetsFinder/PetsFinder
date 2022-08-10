<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
	<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/' />css/calendar.css">
    <title>Petsitters</title>
    <style>
      * {
        font-family: SpoqaHanSans,'BM JUA_TTF', sans-serif;
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
  	<script>
  	var noReservation = [];
  	</script>
    <c:if test="${ not empty re_list }">
 		<c:forEach items="${ re_list }" var="rl" varStatus="loop">
    <div>
    	<input type="hidden" id="${ loop.count }" value=${ rl.id }/>
    	<input type="hidden" id="${ rl.id }start${ loop.count }" value=${ rl.rs_date }/>
    	<input type="hidden" id="${ rl.id }end${ loop.count }" value=${ rl.re_date }/>
    </div>
    <script>
   	var sD_${ loop.count } = $('#${ rl.id }start${ loop.count }').val();
   	var eD_${ loop.count } = $('#${ rl.id }end${ loop.count }').val();
   	console.log(${loop.count})
   	console.log(sD_${ loop.count });
   	console.log(eD_${ loop.count });
   	for (var d = new Date(sD_${ loop.count }); d <= new Date(eD_${ loop.count }); d.setDate(d.getDate() + 1)) {
        noReservation.push($.datepicker.formatDate('yyyy-mm-dd', d));
    }
	function noReserve(date) {
    	
	   	var dateString = jQuery.datepicker.formatDate('yyyy-mm-dd', date);
        return [noReservation.indexOf(dateString) == -1];
    }
 	</script>
    	</c:forEach>
    </c:if>
    <script>
    
    $(function() {
	    $.datepicker.setDefaults({
	      dateFormat: 'yy-mm-dd',
	      prevText: '이전 달',
	      nextText: '다음 달',
	      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	      showMonthAfterYear: true,
	      yearSuffix: '년',
	      maxDate: 'D + 90',
	      showButtonPanel: true,
	      closeText : "닫기",
	    });
        $('#startDate').datepicker({
        	minDate: 'D',
        	/* beforeShowDay: noReserve, */
        	onSelect : function(dateText){
        		$('#endDate').datepicker("option", "minDate", dateText);
        		$('#endDate').val('');
	       		$('#endDate').datepicker("show");
        	},
        	onClose : function(dateText) {
        		$('#sD').val(dateText);
        	}
        });
        
        $('#endDate').datepicker({
        	minDate: 'D',
        	numberOfMonths: [1,2],
        	/* beforeShowDay: noReserve, */
        	onSelect : function(dateText) {
        		$('#startDate').datepicker("option", "maxDate", dateText);
        		$('#cal_img').datepicker("option", "maxDate", dateText);
        		$('#eD').val(dateText);
        		location.href="<c:url value='/' />petsitters/list?sD=" + $('#sD').val() + "&eD=" + $('#eD').val();
        	},
        });
        
        $('#cal_img').datepicker({
        	minDate : 'd',
        	onSelect : function(dateText) {
        		$('#startDate').datepicker("setDate", dateText);
        		/* 
        		$('#startDate').datepicker("option", "disabled", false);
        		 */
        	}
        });

    });
      /* option */
      function option_check01() {
        var no_pet = document.getElementById('no_pet');
        if (no_pet.style.borderColor == 'rgb(223, 227, 234)') {
        	location.href='/Petsitters/sitterlist?p=0&'
	        no_pet.style.borderColor = '#75c9ba';
	        no_pet.style.color = '#75c9ba';
        } else {
       		location.href='/Petsitters/sitterlist?'
	        no_pet.style.borderColor = 'rgb(223, 227, 234)';
	        no_pet.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check02() {
        var pick_up = document.getElementById('pick_up');
        if (pick_up.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/Petsitters/sitterlist?pk=1&'
          pick_up.style.borderColor = '#75c9ba';
          pick_up.style.color = '#75c9ba';
        } else {
          location.href='/Petsitters/sitterlist?'
          pick_up.style.borderColor = 'rgb(223, 227, 234)';
          pick_up.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check03(){
        var big = document.getElementById('big');
        if (big.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/Petsitters/sitterlist?bg=1&'
          big.style.borderColor = '#75c9ba';
          big.style.color = '#75c9ba';
        } else {
          location.href='/Petsitters/sitterlist?'
          big.style.borderColor = 'rgb(223, 227, 234)';
          big.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check04(){
        var space = document.getElementById('space');
        if (space.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/Petsitters/sitterlist?sp=1&'
          space.style.borderColor = '#75c9ba';
          space.style.color = '#75c9ba';
        } else {
          location.href='/Petsitters/sitterlist?'
          space.style.borderColor = 'rgb(223, 227, 234)';
          space.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check05(){
        var old_care = document.getElementById('old_care');
        if (old_care.style.borderColor == 'rgb(223, 227, 234)') {
        	location.href='/Petsitters/sitterlist?oc=1&'
          old_care.style.borderColor = '#75c9ba';
          old_care.style.color = '#75c9ba';
        } else {
          location.href='/Petsitters/sitterlist?'
          old_care.style.borderColor = 'rgb(223, 227, 234)';
          old_care.style.color = 'rgb(187, 193, 204)';
        }
      }
      

    </script>
    <!-- main_menu -->
    <div style="display: flex; justify-content: center; flex-direction: column; padding-top: 180px; padding-bottom:85px; align-items: center; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 20px;">
      <div style="display: flex; justify-content: space-between; width: 1024px">
        <div style="margin-right: 48px;">
          어디에 사시나요?
          <div  style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top:27px; padding: 0 24px 0 17px">
            <div>
              <button type="button" style="border: 0; background: none"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
            <div>
              <input
                id=""
                type="text"
                placeholder="동 이름을 검색하세요 (예. 논현동)"
                style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px"
              />
            </div>
          </div>
        </div>
        <form action="./ListSearch">
        <input type="hidden" id="sD" name="sD"/>
        <input type="hidden" id="eD" name="eD"/>
        
        <div>
          언제 맡기시나요?
          <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 27px;">
            <!-- DatePicker -->
            <input id="cal_img" type="image" style="border: 0; background-color: white; width: 30px; height: 30px" src="<c:url value='/' />images/calendar.png"/>
              <!-- <img src="/image/calendar.png" style="width: 30px; height: 30px" /> -->
            <div style="display: flex; align-items: center">
              <input
                type="text"
                id="startDate"
                name="startDate"
                class="datepicker_input"
                placeholder="체크인 날짜"
                autocomplete="off"
                aria-describedby="DateInput__screen-reader-message-startDate"
                style="border: 0; outline: 0; width: 150px; height: 46px; padding: 11px 11px 9px; margin: 0 0 0 20px"
              />
              <div style="width: 30px; padding-left: 15px">
                <img width="15" height="10" src="<c:url value='/' />images/arrow-calendar.png" />
              </div>
              <div>
                <input
                  type="text"
                  id="endDate"
                  name="endDate"
                  class="datepicker_input"
                  placeholder="체크아웃 날짜"
                  autocomplete="off"
                  aria-describedby="DateInput__screen-reader-message-endDate"
                  style="border: 0; outline: 0; width: 150px; height: 46px; padding: 11px 11px 9px; margin: 0 0 0 20px"
                />
              </div>
            </div>
          </div>
        </div>
        </form>
      </div>
      <div style="display: flex; flex-direction: column; width:1024px; margin-top: 70px;">
        <p style="margin-bottom: 27px;">
          원하시는 조건을 선택하세요
        </p> 
        <div style="display: flex; justify-content: space-between; ">
          <div style="display: flex; justify-content: space-between; width: 712px;">
            <a href="javascript:option_check01();" id="no_pet" style="width: 150px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204)">
              <p style="font-size: 15px; font-weight: 600;">반려동물 없음</p>
            </a>
            <a href="javascript:option_check02();" id="pick_up" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">픽업 가능</p>
            </a>
            <a href="javascript:option_check03();" id="big" style="width: 136px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">대형견 가능</p>
            </a>
            <a href="javascript:option_check04();" id="space" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">마당 있음</p>
            </a>
            <a href="javascript:option_check05();" id="old_care" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">노견 케어</p>
            </a>
          </div>
        </div>
      </div>
    </div>
                                <div>
                                    <div id="page-list-desktop"
                                        style="width: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center; margin-top: 120px;">
                                        <div
                                            style="display: flex; justify-content: space-between; align-items: center; width: 1024px; margin-bottom: 29px;">
                                            <p style="font-size: 14px; color: rgb(57, 60, 71); width: 1024px;"></p>
                                            <div style="display: flex; justify-content: flex-end;">
                                                <div
                                                    style="display: flex; justify-content: space-between; width: 203px; align-items: center;">
                                                    <p
                                                        style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer;">
                                                        가까운순</p>
                                                    <p
                                                        style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer;">
                                                        인기순</p>
                                                    <p
                                                        style="font-size: 14px; color: rgb(57, 60, 71); cursor: pointer;">
                                                        가격순</p><img
                                                        src="./sitterList/filter.png"
                                                        style="width: 15px; height: 15px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div style="display: flex; margin-top: 55px;">
                                            <div
                                                style="width: 1028px; height: 260px; border: 1px solid rgb(235, 235, 235); display: flex; border-radius: 8px; box-shadow: rgba(0, 0, 0, 0.07) 0px 0px 12px 0px; position: relative; align-items: center;">
                                                <div
                                                    style="position: absolute; width: 70px; height: 70px; border-radius: 35px; background-color: rgb(94, 99, 109); top: 20px; left: 20px; display: flex; align-items: center; justify-content: center; flex-direction: column; z-index: 10;">
                                                    <p
                                                        style="font-size: 18px; color: white; font-weight: 600; line-height: 24px;">
                                                        10%</p>
                                                    <p
                                                        style="font-size: 13px; color: white; font-weight: 600; line-height: 17px;">
                                                        할인</p>
                                                </div>
                                                <div
                                                    style="width: 390px; height: 250px; border-radius: 5px; margin-left: 5px; overflow: hidden; position: relative;">
                                                    <div>
                                                        <div class="slick-slider slick-initialized" dir="ltr">
                                                            <div class="slick-list">
                                                                <div class="slick-track"
                                                                    style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                                                    <div data-index="-1" tabindex="-1"
                                                                        class="slick-slide slick-cloned"
                                                                        aria-hidden="true" style="width: 0px;"></div>
                                                                    <div data-index="0"
                                                                        class="slick-slide slick-active slick-current"
                                                                        tabindex="-1" aria-hidden="false"
                                                                        style="outline: none; width: 0px;">
                                                                        <div><img
                                                                                src="./sitterList/8c995eb9f1e4468d81e0404cf1db93cb.jpeg"
                                                                                alt="사랑과 안락함이 넘치는💕"
                                                                                style="width: 390px; height: 250px; border-radius: 3px; object-fit: cover;"><a
                                                                                href="https://petplanet.co/petsitters/details/qlg5kj"
                                                                                target="_blank" tabindex="-1"
                                                                                style="width: 100%; display: inline-block;">
                                                                                <div
                                                                                    style="width: 390px; height: 50px; display: flex; position: absolute; bottom: 5px; justify-content: center; background-image: linear-gradient(to top, rgba(51, 51, 51, 0.2), rgba(128, 128, 128, 0)); z-index: 20;">
                                                                                </div>
                                                                            </a></div>
                                                                    </div>
                                                                    <div data-index="1" class="slick-slide"
                                                                        tabindex="-1" aria-hidden="true"
                                                                        style="outline: none; width: 0px;"></div>
                                                                    <div data-index="2" class="slick-slide"
                                                                        tabindex="-1" aria-hidden="true"
                                                                        style="outline: none; width: 0px;"></div>
                                                                    <div data-index="3" class="slick-slide"
                                                                        tabindex="-1" aria-hidden="true"
                                                                        style="outline: none; width: 0px;"></div>
                                                                    <div data-index="4" class="slick-slide"
                                                                        tabindex="-1" aria-hidden="true"
                                                                        style="outline: none; width: 0px;"></div>
                                                                    <div data-index="5" class="slick-slide"
                                                                        tabindex="-1" aria-hidden="true"
                                                                        style="outline: none; width: 0px;"></div>
                                                                    <div data-index="6" tabindex="-1"
                                                                        class="slick-slide slick-cloned"
                                                                        aria-hidden="true" style="width: 0px;">
                                                                        <div><a href="https://petplanet.co/petsitters/details/qlg5kj"
                                                                                target="_blank" tabindex="-1"
                                                                                style="width: 100%; display: inline-block;"><img
                                                                                    src="./sitterList/8c995eb9f1e4468d81e0404cf1db93cb.jpeg"
                                                                                    alt="사랑과 안락함이 넘치는💕"
                                                                                    style="width: 390px; height: 250px; border-radius: 3px; object-fit: cover;">
                                                                                <div
                                                                                    style="width: 390px; height: 50px; display: flex; position: absolute; bottom: 5px; justify-content: center; background-image: linear-gradient(to top, rgba(51, 51, 51, 0.2), rgba(128, 128, 128, 0)); z-index: 20;">
                                                                                </div>
                                                                            </a></div>
                                                                    </div>
                                                                  
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div><img width="100%" height="59px"
                                                                src="./sitterList/gradient.png"
                                                                style="object-fit: cover; position: absolute; bottom: 0px; left: 0px; right: 0px;">
                                                        </div>
                                                        <div
                                                            style="display: flex; flex-direction: row; justify-content: center; align-items: flex-end; position: absolute; z-index: 999; bottom: 0px; left: 0px; right: 0px; height: 59px;">
                                                            <div
                                                                style="display: flex; flex-direction: row; align-items: center; justify-content: center; margin-bottom: 12px;">
                                                                <div
                                                                    style="width: 8px; height: 8px; border-radius: 50%; background-color: white; margin-left: 4px; margin-right: 4px;">
                                                                </div>
                                                                <div
                                                                    style="width: 6px; height: 6px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px;">
                                                                </div>
                                                                <div
                                                                    style="width: 6px; height: 6px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px;">
                                                                </div>
                                                                <div
                                                                    style="width: 4px; height: 4px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px;">
                                                                </div>
                                                                <div
                                                                    style="width: 2px; height: 2px; border-radius: 50%; background-color: rgba(255, 255, 255, 0.7); margin-left: 4px; margin-right: 4px;">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            style="position: absolute; left: 0px; top: 0px; bottom: 0px; width: 50px; display: flex; align-items: center; justify-content: center; z-index: 10; cursor: pointer; background-image: linear-gradient(to right, rgba(51, 51, 51, 0.3), rgba(128, 128, 128, 0));">
                                                            <div
                                                                style="width: 40px; height: 40px; z-index: 10; display: flex; align-items: center; justify-content: center;">
                                                                <img src="./sitterList/arrow_white_left.png"
                                                                    style="width: 10px; height: 20px;"></div>
                                                        </div>
                                                        <div
                                                            style="position: absolute; right: 0px; top: 0px; bottom: 0px; width: 50px; display: flex; align-items: center; justify-content: center; z-index: 10; cursor: pointer; background-image: linear-gradient(to left, rgba(51, 51, 51, 0.3), rgba(128, 128, 128, 0));">
                                                            <div
                                                                style="width: 40px; height: 40px; z-index: 10; display: flex; align-items: center; justify-content: center;">
                                                                <img src="./sitterList/arrow_white_right.png"
                                                                    style="width: 10px; height: 20px;"></div>
                                                        </div>
                                                    </div>
                                                </div><a href="https://petplanet.co/petsitters/details/qlg5kj"
                                                    target="_blank"
                                                    style="padding: 30px 33px 0px 38px; height: 100%; display: flex; flex-grow: 1; flex-direction: column; justify-content: space-between; align-items: center;">
                                                    <div
                                                        style="width: 100%; border-bottom: 1px solid rgb(235, 235, 235); padding-bottom: 15px;">
                                                        <p
                                                            style="font-family: &quot;Noto Sans KR&quot;; font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);">
                                                            서울 강남구 압구정동</p>
                                                        <p
                                                            style="font-size: 20px; font-family: &quot;Noto Sans KR&quot;; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 9.5px;">
                                                            사랑과 안락함이 넘치는💕</p>
                                                    </div>
                                                    <div
                                                        style="display: flex; justify-content: space-between; width: 100%; height: 100%; padding-top: 18px;">
                                                        <div
                                                            style="display: flex; flex-direction: column; justify-content: space-between;">
                                                            <p
                                                                style="color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px;">
                                                                아파트 · 2인 이하 가구 · 반려동물 없어요</p>
                                                            <div
                                                                style="display: flex; align-items: center; flex-direction: row; margin-bottom: 30px;">
                                                                <div
                                                                    style="width: 64.63px; display: flex; justify-content: space-between;">
                                                                    <div
                                                                        style="display: flex; flex: 1 1 0%; justify-content: space-between;">
                                                                        <img src="./sitterList/star_1.png"
                                                                            style="width: 11px; height: 11px;"><img
                                                                            src="./sitterList/star_1.png"
                                                                            style="width: 11px; height: 11px;"><img
                                                                            src="./sitterList/star_1.png"
                                                                            style="width: 11px; height: 11px;"><img
                                                                            src="./sitterList/star_1.png"
                                                                            style="width: 11px; height: 11px;"><img
                                                                            src="./sitterList/star_1.png"
                                                                            style="width: 11px; height: 11px;"></div>
                                                                </div>
                                                                <p
                                                                    style="font-family: &quot;Noto Sans KR&quot;; font-size: 12px; line-height: 18px; color: rgb(94, 99, 109); letter-spacing: -0.2px; margin-left: 8px;">
                                                                    후기 2개</p>
                                                            </div>
                                                        </div>
                                                      
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        
                                              
                                       
                         
                    </div>
                </div>
              
            </div>
        </div>
    </div>
    <style data-styled="active" data-styled-version="5.1.1"></style>
</body>

</html>