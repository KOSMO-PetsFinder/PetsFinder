<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 유기동물 리스트 -->
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
      div.adoptPlus_btn {
        display: flex;
        justify-content: space-between;
        margin-top: 50px
      }
      .ad_plus {
        display: flex; 
        justify-content: center;
        align-items: center; 
        background-color: #75c9ba; 
        color: white; 
        margin: 10px 20px 40px 0; 
        border-radius: 26px; 
        width: 300px; 
        height: 60px; 
      }
    </style>
    </head>
  	<body>
  	<jsp:include page="../common/Header.jsp" />
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
        	//minDate: 'D',
        	onSelect : function(dateText){
        		$('#endDate').datepicker("option", "minDate", dateText);
        		$('#endDate').val('');
        		$("#endDate").datepicker( "option", "disabled", false );
	       		$('#endDate').datepicker("toggle");
        	},
        	onClose : function(dateText) {
        		$('#sD').val(dateText);
        	}
        });
        
        $('#endDate').datepicker({
        	minDate: 'D',
        	numberOfMonths: [1,2],
        	onSelect : function(dateText) {
        		$('#startDate').datepicker("option", "maxDate", dateText);
        		$('#cal_img').datepicker("option", "maxDate", dateText);
        		$('#eD').val(dateText);
        		location.href="<c:url value='/' />AbandonedAnimal/abanAniList.do?sD=" + $('#sD').val() + "&eD=" + $('#eD').val();
        	},
        });
        
        $('#cal_img').datepicker({
        	minDate : 'd',
        	onSelect : function(dateText) {
        		$('#startDate').datepicker("setDate", dateText);
        	}
        });

    });
    </script>
    <!-- ajax시작 -->
    <script type="text/javascript">
    function moreList(){
		$.ajax({
			url : "./abAniList",
			type : "POST",
			data : {
				"nowPage" : ${nowPage },
				"sD" : $('#startDate').val(),
				"eD" : $('#endDate').val(),
				"species" : $('#paramSpecies').val(),
				"gender" : $('#paramGender').val(),
			},
		    dataType : 'json',
			success : function (lists) {
				console.log(lists.length);
				var content="";    
				var vs=0;        
				for(var i=0; i<lists.length; i++){ 
					
					//날짜 계산
					var strDate1 = lists[i].abani_regdate;
					var arr1 = strDate1.split('월');
					var arr2 = arr1[1].split(',');
					var dat1 = new Date(arr2[1].trim(),arr1[0]-1, arr2[0].trim());
					var strDate2 = new Date();
					var aa = dat1.getTime() /(1000*60*60*24);
					var bb = strDate2.getTime() /(1000*60*60*24);
					
					if(vs%4 ==0) {
						content += "<div style='width: 1024px; margin-top: 50px; display: flex; justify-content: flex-start'>";
					}               
					content += "<a href='./adoptView.do?abani_idx="+lists[i].abani_idx+"' target='_blank' style='margin-right: 14px; width: 245px;'>"               
					
					+ "<div><div style='display: inline-block; margin-left:auto;  float: right; margin-bottom: 10px'>"
					+ "구조된지 " + Math.floor((bb-aa)) + "일 경과";
					if(lists[i].abani_stat=='adopt') {
						content += "<span class='badge bg-success' style='font-size: 15px;'>입양완료</span>";	
					}
					else if(lists[i].abani_stat=='prtct') {
						content += "<span class='badge bg-danger' style='font-size: 15px;'>보호중</span>";
					}
					content +="</div><br/>"
					
					
					content += "<div style='width: 245px; height: 170px; border-radius: 3px'><img src='<c:url value='/' />Uploads/" + lists[i].abani_photo + "' alt='아이 사진' style='width: 245px; height: 170px; border-radius: 3px'></div><p style='font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px'>";
					if(lists[i].abani_species=='cat') {
						content += "고양이";
					}
					else {
						content += "강아지";
					}
						content += "- " +lists[i].abani_kind + "</p><p style='font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px'>"
									+ lists[i].abani_age +"</p><p style='margin-top: 10px;'>"
									+ lists[i].abani_char + "</p></div></a>";
					if(vs%4==3) {
						content += "</div>";
					}
					vs++;           
				}
				
				if(lists.length<12){
					moreBtn.style.display = 'none';   
				}
				$(content).appendTo("#table_abani");
				//nowPage처리 
				var val01 = $('#nowPage').val();
				var val02 = parseInt(val01) + 1;
				$('#nowPage').val(val02);
			}, 
			
			error : function () {
				console.log("실패");
			},
		});
	};
	</script>
    <!-- main_menu -->
    <!-- main_menu -->
    <div style="display: flex; justify-content: center; flex-direction: column; padding-top: 180px; padding-bottom:85px; align-items: center; box-shadow: rgba(0, 0, 0, 0.05) 0px 2px 20px;">
      <div style="display: flex; justify-content: space-between; width: 1024px">
        <div style="margin-right: 48px;">
          종류 및 성별
          <form action="">
            <div  style="width: 300px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top:27px; padding: 0 24px 0 17px">
              <div>
                <button type="submit" style="border: 0; background: none"><i class="fa-solid fa-magnifying-glass"></i></button>
              </div>
              <div>
                <select
                  id="species"
                  name="species"
                  style="width: 100px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px"
                >
                  <option value="">선택</option>
                  <option value="dog">강아지</option>
                  <option value="cat">고양이</option>
                </select>
              </div>
              <div>
                <select
                  id="gender"
                  name="gender"
                  style="width: 100px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px"
                >
                  <option value="" >선택</option>
                  <option value="F">암컷</option>
                  <option value="M">수컷</option>
                </select>
              </div>
            </div>
          </form>
        </div>
        <!-- 받은 값들 -->
        <input type="hidden" id="paramGender" value="${parameterDTO.gender }" >
        <input type="hidden" id="paramSpecies" value="${parameterDTO.species }" >
        <input type="hidden" id="nowPage" value="1" >
        <form action="./ListSearch">
        <input type="hidden" id="sD" name="sD"/>
        <input type="hidden" id="eD" name="eD"/>
        
        <div>
          등록일
          <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 27px;">
            <!-- DatePicker -->
            <input disabled="disabled" id="cal_img" type="image" style="border: 0; background-color: white; width: 30px; height: 30px" src="<c:url value='/' />images/calendar.png"/>
              <!-- <img src="/image/calendar.png" style="width: 30px; height: 30px" /> -->
            <div style="display: flex; align-items: center">
              <input
                value="${parameterDTO.sD }"
                type="text"
                id="startDate"
                name="startDate"
                class="datepicker_input"
                placeholder="시작 날짜"
                autocomplete="off"
                aria-describedby="DateInput__screen-reader-message-startDate"
                style="border: 0; outline: 0; width: 150px; height: 46px; padding: 11px 11px 9px; margin: 0 0 0 20px"
              />
              <div style="width: 30px; padding-left: 15px">
                <img width="15" height="10" src="<c:url value='/' />images/arrow-calendar.png" />
              </div>
              <div>
                <input
                  value="${parameterDTO.eD }"
                  disabled="disabled"
                  type="text"
                  id="endDate"
                  name="endDate"
                  class="datepicker_input"
                  placeholder="종료 날짜"
                  autocomplete="off"
                  aria-describedby="DateInput__screen-reader-message-endDate"
                  style="border: 0; outline: 0; width: 150px; height: 46px; padding: 11px 11px 9px; margin: 0 0 0 20px;background-color: white;"
                />
              </div>
            </div>
          </div>
        </div>
        </form>
      </div>
    <!-- middle(소스 가져옴) : DB에서 가져와서 출력하도록 변경해야 함. -->
    <div style="width: 100%; display: flex; flex-direction: column; align-items: center; padding-top: 130px">
      <div  style="width: 100%; display: flex; flex-direction: column; align-items: center; margin-bottom: 120px">
        <div style="width: 1024px; display: flex; justify-content: space-between; align-items: center">
          <p style="font-size: 23px; color: #393c47; letter-spacing: -0.2px; font-weight: 600">모든 아이들을 만나보세요</p>
        </div>
        <div id="table_abani">
        <!-- 첫 번째 줄 -->
        <c:set var="i" value="0" />
		<c:set var="j" value="4" />
        <c:forEach items="${lists }" var="row" >
          	<c:if test="${i%j == 0 }">
			<div style="width: 1024px; margin-top: 50px; display: flex; justify-content: flex-start;">
			</c:if>	
				<a href="./adoptView.do?abani_idx=${row.abani_idx }" target="_blank" style="margin-right: 14px; width: 245px;">
	            <div>
		            <div style="display: inline-block; margin-left:auto;  float: right; margin-bottom: 10px">
			            <!-- 날짜 계산 -->
						<fmt:formatDate var="sDate" value="${row.abani_regdate }" pattern="yyyyMMdd" />
						<fmt:parseDate var="pDate" value="${sDate }" pattern="yyyyMMdd" />
						<fmt:parseNumber value="${pDate.time / (1000*60*60*24)}" integerOnly="true" var="isDate" scope="request" />
						<%long currentMilliseconds = new Date().getTime();
						String nDate = String.valueOf(currentMilliseconds /(1000*60*60*24) +1); %>
						<fmt:parseNumber value="<%=nDate %>" integerOnly="true" var="nowDate" scope="request" />
						<!-- 등록일로부터 10일이 지나면 nowDate - isDate >=10  -->
						구조된지 ${nowDate - isDate }일 경과
	                  <c:if test="${row.abani_stat eq 'adopt'  }">
	                  <span class="badge bg-success" style="font-size: 15px;">입양완료</span>
	                  </c:if>
	                  <c:if test="${row.abani_stat eq 'prtct'  }">
	                  <span class="badge bg-danger" style="font-size: 15px;">보호중</span>
	                  </c:if>
	               </div>
	               <br/>
	              <div style="width: 245px; height: 170px; border-radius: 3px">
	                <img src="<c:url value="/" />Uploads/${ row.abani_photo }" alt="아이 사진" style="width: 245px; height: 170px; border-radius: 3px">
	              </div>
	              <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 20px">
	              <c:choose> 
				  	<c:when test="${row.abani_species eq 'cat'}"> 
						고양이
					</c:when> 
					<c:otherwise> 
						강아지
					</c:otherwise> 
				  </c:choose>  
	                 - ${row.abani_kind } 
	              </p>
	              <p style="font-size: 16px; letter-spacing: -0.2px; line-height: 20px; color: #383c48; margin-top: 5px">
	                ${row.abani_age }
	              </p>
	              <p style="margin-top: 10px;">
                    	${row.abani_char }
	              </p>
	            </div>
		        </a>
         	<c:if test="${i%j == j-1 }">
			</div>
			</c:if>	
			<c:set var="i" value="${i+1 }" />
        </c:forEach>
        </div>
        <br />
        <div id="moreBtn" class="adoptPlus_btn">
        <!-- 문법 -->
        <c:if test="${moreStop eq 0 }">
	          <a class="ad_plus" href="javascript:moreList();"  >
	            <p style="font-size: 18px; margin-bottom: 0; font-weight: bold; color: white"> + 더보기</p>
	          </a>
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
            사지말고 입양하세요!
          </p>
        </div>
        
        <!-- 테스트용 버튼 -->
		<%-- <a href="<c:url value='/' />AbandonedAnimal/abandonedAnimalRegistration.do">유기동물 등록 ^^</a> --%>       

        <!-- 테스트용 버튼 -->

        <!-- right -->
        <div>
          <!-- 입양 관련 이미지 -->
          <img src="<c:url value='/' />images/사지말고.png" alt="" style="width: 435px; height: 350px; padding-bottom: 20px;">
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
