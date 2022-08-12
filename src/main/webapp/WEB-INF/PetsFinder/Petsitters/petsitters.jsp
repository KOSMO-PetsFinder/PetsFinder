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
	<!-- <link rel="stylesheet" href="../jquery/jquery-ui.css">
	<script src="../jquery/jquery-ui.js"></script> -->
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
	      showButtonPanel: false,
	      closeText : "닫기",
	    });
        $('#startDate').datepicker({
        	minDate: 'D',
        	/* beforeShowDay: noReserve, */
        	onSelect : function(dateText){
        		$('#endDate').datepicker("option", "minDate", dateText);
        		$('#endDate').val('');
	       		$('#endDate').datepicker("toggle");
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
        	location.href='./petsitters/sitterlist?p=0&'
	        no_pet.style.borderColor = '#75c9ba';
	        no_pet.style.color = '#75c9ba';
        } else {
	        no_pet.style.borderColor = 'rgb(223, 227, 234)';
	        no_pet.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check02() {
        var pick_up = document.getElementById('pick_up');
        if (pick_up.style.borderColor == 'rgb(223, 227, 234)') {
          pick_up.style.borderColor = '#75c9ba';
          pick_up.style.color = '#75c9ba';
        } else {
          pick_up.style.borderColor = 'rgb(223, 227, 234)';
          pick_up.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check03(){
        var big = document.getElementById('big');
        if (big.style.borderColor == 'rgb(223, 227, 234)') {
          big.style.borderColor = '#75c9ba';
          big.style.color = '#75c9ba';
        } else {
          big.style.borderColor = 'rgb(223, 227, 234)';
          big.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check04(){
        var space = document.getElementById('space');
        if (space.style.borderColor == 'rgb(223, 227, 234)') {
          space.style.borderColor = '#75c9ba';
          space.style.color = '#75c9ba';
        } else {
          space.style.borderColor = 'rgb(223, 227, 234)';
          space.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check05(){
        var old_care = document.getElementById('old_care');
        if (old_care.style.borderColor == 'rgb(223, 227, 234)') {
          old_care.style.borderColor = '#75c9ba';
          old_care.style.color = '#75c9ba';
        } else {
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
            <img id="cal_img" style="border: 0; background-color: white; width: 30px; height: 30px" src="<c:url value='/' />images/calendar.png"/>
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
    <c:if test="${ param.sD eq '' or param.sD eq null }">
    <!-- middle(소스 가져옴) : DB에서 가져와서 출력하도록 변경해야 함. -->
    <div style="width: 100%; display: flex; flex-direction: column; align-items: center; padding-top: 130px">
      <div style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">
        <div style="width: 1024px; display: flex; justify-content: space-between; align-items: center">
            <p style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">모든 펫시터를 만나보세요</p>
            <a href="<c:url value='/' />Petsitters/sitterlist" style="
              border: 1px solid #81899b;
              border-radius: 5px;
              width: 94px;
              height: 34px;
              display: flex;
              align-items: center;
              justify-content: center;
            ">
	            <p style="font-size: 15px; color: #81899b; display: flex; align-items: center">
	              전체 보기<img src="<c:url value='/' />images/arrow_right_gray.png" style="width: 7px; height: 11px; margin-left: 6px">
	            </p>
            </a>
        </div>
       <!-- 첫번째 오래된 순 -->
       <form action="<c:url value='/'/>Petsitters/sitterView.do" method="POST">
        <div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between" >
       <c:forEach items="${lists }" var="row" >
	       <input type="hidden" value="${row.member_idx }" name="member_idx" />
		   <input type="hidden" value="${row.sit_idx }" name="sit_idx" />
            <a href="<c:url value='/'/>Petsitters/sitterView.do?member_idx=${row.member_idx }&sit_idx=${row.sit_idx }" target="_blank" style="margin-right: 14px">
            <div>
              <div style="width: 245px; height: 170px; border-radius: 3px">

                <img src="<c:url value='/' />Uploads/${row.sitphoto_photo }" style="width: 245px; height: 170px; border-radius: 3px">
              
              </div>
              <p style="font-size: 13px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px">
                주소 : ${row.sit_addr }
              </p>
              <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px">
                제목 : ${row.sit_title }
              </p>
              <div style="display: flex; margin-top: 10px; width: 80px; justify-content: space-between; align-items: center">
                <div style="width: 60px; display: flex; justify-content: space-between">
                  <div style="display: flex; flex: 1; justify-content: space-between">
                    <img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px">
                  </div>
                </div>
                <p style="font-size: 11px; color: #5e636d; letter-spacing: -0.2px; margin-left: 4px">(<!-- -->100<!-- -->)</p>
              </div>
            </div>
            </a>
            </c:forEach>
         </div>
        </form>   
      <br/><br/>
      <div style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">
        <div style="width: 1024px; display: flex; justify-content: space-between; align-items: center">
          <p style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">프로 펫시터를 만나보세요</p>
          <a href="<c:url value='/' />Petsitters/sitterlist" style="
              border: 1px solid #81899b;
              border-radius: 5px;
              width: 94px;
              height: 34px;
              display: flex;
              align-items: center;
              justify-content: center;
            "><p style="font-size: 15px; color: #81899b; display: flex; align-items: center">
              전체 보기<img src="<c:url value='/' />images/arrow_right_gray.png" style="width: 7px; height: 11px; margin-left: 6px"></p></a>
        </div>
        <!--2번쨰 인기순(sit_client 순) -->
        <form action="<c:url value='/'/>Petsitters/sitterView.do" method="POST">
        <div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between">
        <c:forEach items="${lists2 }" var="row">
          <a href="<c:url value='/'/>Petsitters/sitterView.do?member_idx=${row.member_idx }&sit_idx=${row.sit_idx }" target="_blank" style="margin-right: 14px"><div>
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="<c:url value='/' />Uploads/${row.sitphoto_photo }" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
              <p style="font-size: 13px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px">
                주소 : ${row.sit_addr }
              </p>
              <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px">
                제목 : ${row.sit_title }
              </p>
              <div style="display: flex; margin-top: 10px; width: 80px; justify-content: space-between; align-items: center">
                <div style="width: 60px; display: flex; justify-content: space-between">
                  <div style="display: flex; flex: 1; justify-content: space-between">
                    <img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px">
                  </div>
                </div>
                <p style="font-size: 11px; color: #5e636d; letter-spacing: -0.2px; margin-left: 4px">(<!-- -->100<!-- -->)</p>
              </div>
            </div></a>
            </c:forEach>
            </div>
           
        </form>      
      <br/><br/>
      <div style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 180px">
        <div style="width: 1024px; display: flex; justify-content: space-between; align-items: center">
          <p style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">신규 펫시터 10% 할인!</p>
          <a href="<c:url value='/' />Petsitters/sitterlist" style="
              border: 1px solid #81899b;
              border-radius: 5px;
              width: 94px;
              height: 34px;
              display: flex;
              align-items: center;
              justify-content: center;
            "><p style="font-size: 15px; color: #81899b; display: flex; align-items: center">
              전체 보기<img src="<c:url value='/' />images/arrow_right_gray.png" style="width: 7px; height: 11px; margin-left: 6px"></p></a>
        </div>
        </div>
        <!-- 3번째 최신순 -->
        <form action="<c:url value='/'/>Petsitters/sitterView.do" method="POST">
        <div style="width: 1024px; margin-top: 50px; display: flex">
       <c:forEach items="${lists1 }" var="row">
          <a href="<c:url value='/'/>Petsitters/sitterView.do?member_idx=${row.member_idx }&sit_idx=${row.sit_idx }" target="_blank" style="margin-right: 14px"><div>
              <div style="width: 245px; height: 170px; border-radius: 3px">
                <img src="<c:url value='/' />Uploads/${row.sitphoto_photo }" style="width: 245px; height: 170px; border-radius: 3px">
              </div>
              <p style="font-size: 13px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px">
                주소 : ${row.sit_addr }
              </p>
              <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px">
                제목 : ${row.sit_title }
              </p>
              <div style="display: flex; margin-top: 10px; width: 80px; justify-content: space-between; align-items: center">
                <div style="width: 60px; display: flex; justify-content: space-between">
                  <div style="display: flex; flex: 1; justify-content: space-between">
                    <img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px">
                  </div>
                </div>
                <p style="font-size: 11px; color: #5e636d; letter-spacing: -0.2px; margin-left: 4px">(<!-- -->1<!-- -->)</p>
              </div>
            </div></a>
        </c:forEach>
	      </div>
         </form>      
            
        </c:if>
      	<c:if test="${ param.sD ne '' and param.sD ne null and empty P_List }">
      	<div style="margin-top: 180px; margin-bottom: 165px; display: flex; align-items: center; justify-content: center; flex-direction: column;">
   			<p style="font-weight: 600; font-size: 22px; color: rgb(57, 60, 71); letter-spacing: -0.2px; text-align: center;">검색 조건에 맞는 펫시터가 없습니다</p>
   			<p style="font-size: 17px; color: rgb(94, 99, 109); margin-top: 38px; letter-spacing: -0.2px; text-align: center;">날짜 또는 원하시는 조건을 변경하여 다시 검색해보세요</p>
   			<a href="../petsitters" style="display: flex; align-items: center; justify-content: center; width: 242px; height: 59px; border-radius: 30px; border: 1px solid rgb(113, 162, 255); margin-top: 50px;">
    			<p style="color: rgb(113, 162, 255); font-size: 15px; font-weight: 600;">
    				다시 검색하기
    			</p>
   			</a>
     	</div>
      	</c:if>
     	<div style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 180px">
     		<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: space-between">
	      	<c:if test="${ not empty P_List }">
	        	<c:forEach items="${ P_List }" var="pl" varStatus="loop">
			    <a href="" target="_blank" style="margin-right: 14px">
			     	<div>
				        <div style="width: 245px; height: 170px; border-radius: 3px">
				       		<img src="https://d1cd60iwvuzqnn.cloudfront.net/page/fd37e21adee1436c8b9341758eafe5d5.jpg" style="width: 245px; height: 170px; border-radius: 3px">
				        </div>
				        <p style="font-size: 13px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px">
				        	${ pl.name }
				        </p>
				        <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px">
			         		${ pl.email }
				        </p>
				        <div style="display: flex; margin-top: 10px; width: 80px; justify-content: space-between; align-items: center">
					        <div style="width: 60px; display: flex; justify-content: space-between">
						        <div style="display: flex; flex: 1; justify-content: space-between">
		        					<img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px"><img src="<c:url value='/' />images/star_1.png" style="width: 10px; height: 10px">
						        </div>
				         	</div>
				        	<p style="font-size: 11px; color: #5e636d; letter-spacing: -0.2px; margin-left: 4px">(<!-- -->100<!-- -->)</p>
				        </div>
			        </div>
		      	</a>
	        	</c:forEach>
	        </c:if>
        	</div>
        </div>
    </div>
<!-- <div style="width: 100%; height: 2488px;"></div> -->
  <!-- app02 -->
  <div class="container-fluid" style="height: 430px; display: flex; align-items: flex-end; justify-content: center; background-color: #75c9ba;">
    <div style="width: 1440px; display: flex; justify-content: space-between; padding-left: 210px; padding-right: 152px;">
      <div style="display: flex; align-items: center; justify-content: space-between; flex-grow: 1;">
        <!-- left -->
        <div style="display: flex; flex-direction: column; align-items: center; align-self: center;">
          <p style="font-size: 38px; line-height: 55px; font-weight: bold; color: white;">
            모바일 앱 다운받고
            <br>
            우리 동네 펫시터 찾기
          </p>
          <div style="display: flex; margin-bottom: 70px; margin-top: 38px;">
            <a href="https://play.google.com/store/apps/details?id=co.petpeople.petplanet">
              <div style="display: flex; align-items: center; justify-content: center; border: 1px solid white; width: 152px; height: 52px; border-radius: 7px; margin-right: 20px;">
                <p style="font-size: 15px; font-weight: 600; color: white; letter-spacing: 0.2px;">Google Play</p>
              </div>
            </a>
            <a href="https://apps.apple.com/us/app/%ED%8E%AB%ED%94%8C%EB%9E%98%EB%8B%9B/id1343097834?amp%3Bls=1&amp%3Bmt=8&l=ko">
              <div style="display: flex; align-items: center; justify-content: center; border: 1px solid white; width: 152px; height: 52px; border-radius: 7px;">
                <p style="font-size: 15px; font-weight: 600; color: white; letter-spacing: 0.2px;">App Store</p>
              </div>
            </a>
          </div>
        </div>
        <!-- right -->
        <div>
          <img src="<c:url value='/' />images/app-section2.png" alt="" style="width: 435px; height: 350px;">
        </div>
      </div>
    </div>
  </div>
    <jsp:include page="../common/foot.jsp" />
  </body>
</html>
