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
	      prevText: '?????? ???',
	      nextText: '?????? ???',
	      monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
	      monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
	      dayNames: ['???', '???', '???', '???', '???', '???', '???'],
	      dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
	      dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
	      showMonthAfterYear: true,
	      yearSuffix: '???',
	      maxDate: 'D + 90',
	      showButtonPanel: true,
	      closeText : "??????",
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
        if (location.href=='/PetsFinder/Petsitters/sitterlist?') {
        	location.href='/PetsFinder/Petsitters/sitterlist?p=0&'
	        no_pet.style.borderColor = '#75c9ba';
	        no_pet.style.color = '#75c9ba';
        } else {
       		location.href='/PetsFinder/Petsitters/sitterlist?'
	        no_pet.style.borderColor = 'rgb(223, 227, 234)';
	        no_pet.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check02() {
        var pick_up = document.getElementById('pick_up');
        if (pick_up.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/PetsFinder/Petsitters/sitterlist?pk=1&'
          pick_up.style.borderColor = '#75c9ba';
          pick_up.style.color = '#75c9ba';
        } else {
          location.href='/PetsFinder/Petsitters/sitterlist?'
          pick_up.style.borderColor = 'rgb(223, 227, 234)';
          pick_up.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check03(){
        var big = document.getElementById('big');
        if (big.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/PetsFinder/Petsitters/sitterlist?bg=1&'
          big.style.borderColor = '#75c9ba';
          big.style.color = '#75c9ba';
        } else {
          location.href='/PetsFinder/Petsitters/sitterlist?'
          big.style.borderColor = 'rgb(223, 227, 234)';
          big.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check04(){
        var space = document.getElementById('space');
        if (space.style.borderColor == 'rgb(223, 227, 234)') {
          location.href='/PetsFinder/Petsitters/sitterlist?sp=1&'
          space.style.borderColor = '#75c9ba';
          space.style.color = '#75c9ba';
        } else {
          location.href='/PetsFinder/Petsitters/sitterlist?'
          space.style.borderColor = 'rgb(223, 227, 234)';
          space.style.color = 'rgb(187, 193, 204)';
        }
      }
      function option_check05(){
        var old_care = document.getElementById('old_care');
        if (old_care.style.borderColor == 'rgb(223, 227, 234)') {
        	location.href='/PetsFinder/Petsitters/sitterlist?oc=1&'
          old_care.style.borderColor = '#75c9ba';
          old_care.style.color = '#75c9ba';
        } else {
          location.href='/PetsFinder/Petsitters/sitterlist?'
          old_care.style.borderColor = 'rgb(223, 227, 234)';
          old_care.style.color = 'rgb(187, 193, 204)';
        }
      }
      

    </script>
    <!-- main_menu -->
    <div style="display: flex; justify-content: center; flex-direction: column; padding-top: 180px; padding-bottom:85px; align-items: center; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 20px;">
      <div style="display: flex; justify-content: space-between; width: 1024px">
        <div style="margin-right: 48px;">
          ????????? ?????????????
          <div  style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top:27px; padding: 0 24px 0 17px">
            <div>
              <button type="button" style="border: 0; background: none"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
            <div>
              <input
                id=""
                type="text"
                placeholder="??? ????????? ??????????????? (???. ?????????)"
                style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px"
              />
            </div>
          </div>
        </div>
        <form action="./ListSearch">
        <input type="hidden" id="sD" name="sD"/>
        <input type="hidden" id="eD" name="eD"/>
        
        <div>
          ?????? ????????????????
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
                placeholder="????????? ??????"
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
                  placeholder="???????????? ??????"
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
          ???????????? ????????? ???????????????
        </p> 
        <div style="display: flex; justify-content: space-between; ">
          <div style="display: flex; justify-content: space-between; width: 712px;">
            <a  id="no_pet" style="width: 150px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204)">
              <p style="font-size: 15px; font-weight: 600;">???????????? ??????</p>
            </a>
            <a href="javascript:option_check02();" id="pick_up" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">?????? ??????</p>
            </a>
            <a href="javascript:option_check03();" id="big" style="width: 136px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">????????? ??????</p>
            </a>
            <a href="javascript:option_check04();" id="space" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">?????? ??????</p>
            </a>
            <a href="javascript:option_check05();" id="old_care" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
              <p style="font-size: 15px; font-weight: 600; ">?????? ??????</p>
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
                                                        ????????????</p>
                                                    <p
                                                        style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer;">
                                                        ?????????</p>
                                                    <p
                                                        style="font-size: 14px; color: rgb(57, 60, 71); cursor: pointer;">
                                                        ?????????</p><img
                                                        src="./sitterList/filter.png"
                                                        style="width: 15px; height: 15px;">
                                                </div>
                                            </div>
                                        </div>
											<!-- List?????? ?????? -->
											<c:forEach items="${lists }" var="row">
											<form action="<c:url value='/'/>Petsitters/sitterView.do" method="POST">
											
												<input type="hid den" value="${row.member_idx }" name="member_idx" />
		                                        <input type="hid den" value="${row.sit_idx }" name="sit_idx" />
												<div
													style="width: 1028px; height: 260px; border: 1px solid rgb(235, 235, 235); display: flex; border-radius: 8px; box-shadow: rgba(0, 0, 0, 0.07) 0px 0px 12px 0px; position: relative; align-items: center;">

													<div
														style="width: 390px; height: 250px; border-radius: 5px; margin-left: 5px; overflow: hidden; position: relative;">
														<div>
															<input type="image"
																					src="<c:url value='/' />Uploads/${row.sitphoto_photo }"
																					style="width: 390px; height: 250px; border-radius: 3px; object-fit: cover;" />
														</div>
															
													</div>
													<div
														style="padding: 30px 33px 0px 38px; height: 100%; display: flex; flex-grow: 1; flex-direction: column; justify-content: space-between; align-items: center;">
														<div
															style="width: 100%; border-bottom: 1px solid rgb(235, 235, 235); padding-bottom: 15px;">
															<p
																style="font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot;; font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);">
																${row.sit_addr }</p>
															<p> <a href="<c:url value='/'/>Petsitters/sitterView.do?member_idx=${row.member_idx }&sit_idx=${row.sit_idx }" style="font-size: 20px; font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot;; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 9.5px;">
																${row.sit_title }</a></p>
														</div>
														<div
															style="display: flex; justify-content: space-between; width: 100%; height: 100%; padding-top: 18px;">
															<div
																style="display: flex; flex-direction: column; justify-content: space-between;">
																<p
																	style="color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px;">
																	${row.sit_intro }</p>
																<div
																	style="display: flex; align-items: center; flex-direction: row; margin-bottom: 30px;">
																	<div
																		style="width: 64.63px; display: flex; justify-content: space-between;">
																		<div
																			style="display: flex; flex: 1 1 0%; justify-content: space-between;">

																		</div>
																	</div>
																	<p
																		style="font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot;; font-size: 12px; line-height: 18px; color: rgb(94, 99, 109); letter-spacing: -0.2px; margin-left: 8px;">
																		?????? ?????? ??? : ${row.sit_CLIENT }</p>
																</div>
															</div>
															<div
																style="display: flex; flex-direction: column; justify-content: flex-end; margin-bottom: 30px;">
																<div style="display: flex; align-items: center;">
																	<p
																		style="font-size: 17px; color: rgb(79, 82, 90); letter-spacing: 0.5px;">
																		???${row.s_fee }</p>
																	<div
																		style="width: 32px; height: 21px; border: 1px solid rgb(197, 201, 208); border-radius: 3px; display: flex; align-items: center; justify-content: center; margin-left: 10px;">
																		<p
																			style="font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot;; font-size: 11px; letter-spacing: -0.2px; color: rgb(79, 82, 90);">
																			1 ???</p>
																	</div>
																</div>
																<div
																	style="display: flex; margin-top: 10px; align-items: center;">

																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
											</c:forEach>
                                              
                                       
                         
                    </div>
                </div>
              
            </div>
        </div>
    </div>
    <style data-styled="active" data-styled-version="5.1.1"></style>
</body>

</html>