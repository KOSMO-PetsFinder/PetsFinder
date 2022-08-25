<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
           onSelect : function(dateText) {
              $('#startDate').datepicker("option", "maxDate", dateText);
              $('#cal_img').datepicker("option", "maxDate", dateText);
              $('#eD').val(dateText);
              location.href="<c:url value='/' />Petsitters/sitterlist?sD=" + $('#sD').val() + "&eD=" + $('#eD').val();
           },
        });
        
        $('#cal_img').datepicker({
           minDate : 'd',
           onSelect : function(dateText) {
              $('#startDate').datepicker("setDate", dateText);
           }
        });
        
    });
    	/* option */
        
    function option_check01() {
     	var path = window.location.href;
     	console.log(path)
        var no_pet = document.getElementById('no_pet');
        if (no_pet.style.borderColor == 'rgb(223, 227, 234)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'np=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?np=1'
        	} else {
        		location.href += '&np=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?np=1') != -1 ) {
        		console.log(path.indexOf('np=1&'))
	            var front = path.substr(0, path.indexOf('np=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('np=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?np=1') {
	        		console.log(path.indexOf('np=1'))
		            var front = path.substr(0, path.indexOf('np=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('np=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	        	}
        	} else {
	            console.log(path.indexOf('&np=1'))
	            var front = path.substr(0, path.indexOf('&np=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&np=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    function option_check02() {
   	  	var path = window.location.href;
        var pick_up = document.getElementById('pick_up');
        if (pick_up.style.borderColor == 'rgb(223, 227, 234)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'pu=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?pu=1'
        	} else {
        		location.href += '&pu=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?pu=1') != -1 ) {
        		console.log(path.indexOf('pu=1&'))
	            var front = path.substr(0, path.indexOf('pu=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('pu=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?pu=1') {
	        		console.log(path.indexOf('pu=1'))
		            var front = path.substr(0, path.indexOf('pu=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('pu=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	        	}
        	} else {
	        	console.log(path.indexOf('&pu=1'))
	            var front = path.substr(0, path.indexOf('&pu=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&pu=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    function option_check03(){
   	  	var path = window.location.href;
        var big = document.getElementById('big');
        if (big.style.borderColor == 'rgb(223, 227, 234)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'b=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?b=1'
        	} else {
        		location.href += '&b=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?b=1') != -1 ) {
        		console.log(path.indexOf('b=1&'))
	            var front = path.substr(0, path.indexOf('b=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('b=1&') + 4, path.length)
	            console.log(back)
	            location.href = front + back
	        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?b=1') {
	        		console.log(path.indexOf('b=1'))
		            var front = path.substr(0, path.indexOf('b=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('b=1') + 3, path.length)
		            console.log(back)
		            location.href = front + back
	        	}
        	} else {
	        	console.log(path.indexOf('&b=1'))
	            var front = path.substr(0, path.indexOf('&b=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&b=1') + 4, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    function option_check04(){
   	  	var path = window.location.href;
   	  	var playground = document.getElementById('playground');
        if (playground.style.borderColor == 'rgb(223, 227, 234)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'pg=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?pg=1'
        	} else {
        		location.href += '&pg=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?pg=1') != -1 ) {
        		console.log(path.indexOf('pg=1&'))
	            var front = path.substr(0, path.indexOf('pg=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('pg=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?pg=1') {
	        		console.log(path.indexOf('pg=1'))
		            var front = path.substr(0, path.indexOf('pg=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('pg=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	        	}
        	} else {
	        	console.log(path.indexOf('&pg=1'))
	            var front = path.substr(0, path.indexOf('&pg=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&pg=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    function option_check05(){
   	  	var path = window.location.href;
        var old_care = document.getElementById('old_care');
        if (old_care.style.borderColor == 'rgb(223, 227, 234)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'oc=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?oc=1'
        	} else {
        		location.href += '&oc=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?oc=1') != -1 ) {
        		console.log(path.indexOf('oc=1&'))
	            var front = path.substr(0, path.indexOf('oc=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('oc=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?oc=1') {
	        		console.log(path.indexOf('oc=1'))
		            var front = path.substr(0, path.indexOf('oc=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('oc=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	        	}
        	} else {
	        	console.log(path.indexOf('&oc=1'))
	            var front = path.substr(0, path.indexOf('&oc=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&oc=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    
    function priceArray() {
    	var path = window.location.href;
        var price = document.getElementById('price');
        if (price.style.color == 'rgb(170, 170, 170)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'pr=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?pr=1'
        	} else {
        		location.href += '&pr=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?pr=1') != -1 ) {
        		console.log(path.indexOf('pr=1&'))
	            var front = path.substr(0, path.indexOf('pr=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('pr=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	            if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?pr=1') {
	            	console.log(path.indexOf('pr=1'))
		            var front = path.substr(0, path.indexOf('pr=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('pr=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	            }
        	} else {
	        	console.log(path.indexOf('&pr=1'))
	            var front = path.substr(0, path.indexOf('&pr=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&pr=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    
    function starArray() {
    	var path = window.location.href;
        var price = document.getElementById('star');
        if (price.style.color == 'rgb(170, 170, 170)') {
        	if(path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?') {
		        location.href += 'st=1'
        	} else if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist') {
        		location.href += '?st=1'
        	} else {
        		location.href += '&st=1'
        	}
        } else {
        	if(path.indexOf('http://localhost:8088/PetsFinder/Petsitters/sitterlist?st=1') != -1 ) {
        		console.log(path.indexOf('st=1&'))
	            var front = path.substr(0, path.indexOf('st=1&'))
	            console.log(front)
	            var back = path.substring(path.indexOf('st=1&') + 5, path.length)
	            console.log(back)
	            location.href = front + back
	            if (path == 'http://localhost:8088/PetsFinder/Petsitters/sitterlist?st=1') {
	            	console.log(path.indexOf('st=1'))
		            var front = path.substr(0, path.indexOf('st=1'))
		            console.log(front)
		            var back = path.substring(path.indexOf('st=1') + 4, path.length)
		            console.log(back)
		            location.href = front + back
	            }
        	} else {
	        	console.log(path.indexOf('&st=1'))
	            var front = path.substr(0, path.indexOf('&st=1'))
	            console.log(front)
	            var back = path.substring(path.indexOf('&st=1') + 5, path.length)
	            console.log(back)
	            location.href = front + back
        	}
        }
    }
    
    window.onload = function() {
        	
	    if ('${ param.np }' == 1) {
	    	$('#no_pet').css({borderColor : '#75c9ba', color : '#75c9ba'})
	    }
	    if ('${ param.pu }' == 1) {
	    	$('#pick_up').css({borderColor : '#75c9ba', color : '#75c9ba'})
	    }
	    if ('${ param.b }' == 1) {
	    	$('#big').css({borderColor : '#75c9ba', color : '#75c9ba'})
	    }
	    if ('${ param.pg }' == 1) {
	    	$('#playground').css({borderColor : '#75c9ba', color : '#75c9ba'})
	    }
	    if ('${ param.oc }' == 1) {
	    	$('#old_care').css({borderColor : '#75c9ba', color : '#75c9ba'})
	    }
	    if ('${ param.pr }' == 1) {
	    	$('#price').css({color : '#75c9ba'})
	    }
	    if ('${ param.st }' == 1) {
	    	$('#star').css({color : '#75c9ba'})
	    }
	}

    </script>
    
    <script>
	
   
    function moreList1(){
        $.ajax({
        	url : "./sitterlist",
        	type : "POST",
        	data : {
	            "nowPage" : $('#nowPage').val(),
	            "sD" : '${ param.sD }',
	            "eD" : '${ param.eD }',
	            "np" : '${ param.np }',
	            "pu" : '${ param.pu }',
	            "b" : '${ param.b }',
	            "pg" : '${ param.pg }',
	            "oc" : '${ param.oc }',
	            "pr" : '${ param.pr }',
	            "st" : '${ param.st }',
	            "count" : $('#typtagCount').val(),
         	},
       		dataType : 'json',
         	success : function (lists) {
	           var content="";    
	           for(var i=0; i<lists.length; i++){ 
	                            
	              /* content += "<a href='./sitterView.do?sit_idx="+lists[i].sit_idx+"' target='_blank' style='margin-right: 14px'>";    */      
	                    
	              content += "<form action='<c:url value='/'/>Petsitters/sitterView.do' method='POST'>"
	
	              content += "<input type='hidden' value="+lists[i].member_idx+" name='member_idx' />";
	              content += "<input type='hidden' value="+lists[i].sit_idx+" name='sit_idx' />";
	              content += "<div style='width: 1028px; height: 260px; border: 1px solid rgb(235, 235, 235); display: flex; border-radius: 8px; box-shadow: rgba(0, 0, 0, 0.07) 0px 0px 12px 0px; position: relative; align-items: center;'>";
	
	              content += "<div style='width: 390px; height: 250px; border-radius: 5px; margin-left: 5px; overflow: hidden; position: relative;'>";
	              content += "<div><input type='image' src='<c:url value='/' />Uploads/"+lists[i].sitphoto_photo+"' style='width: 390px; height: 250px; border-radius: 3px; object-fit: cover;' /></div>";
	
	              content += "</div>";
	              content += "<div style='padding: 30px 33px 0px 38px; height: 100%; display: flex; flex-grow: 1; flex-direction: column; justify-content: space-between; align-items: center;'>";
	              content += "<div style='width: 100%; border-bottom: 1px solid rgb(235, 235, 235); padding-bottom: 15px;'>";
	              content += "<p style='font-family: &amp; amp; amp; amp; quot; Noto Sans KR&amp;amp; amp; amp; quot;; font-size: 14px; letter-spacing: -0.1px; color: rgb(94, 99, 109);'>"+lists[i].sit_addr+"</p>";
	              content += "<p><a href='<c:url value='/'/>Petsitters/sitterView.do?member_idx="+lists[i].member_idx+"&sit_idx="+lists[i].sit_idx+"' style='font-size: 20px; font-family: &amp; amp; amp; amp; quot; Noto Sans KR&amp;amp; amp; amp; quot;; letter-spacing: -0.2px; color: rgb(56, 60, 72); margin-top: 9.5px;'> "+lists[i].sit_title+"</a></p>";
	              content += "</div>";
	              content += "<div style='display: flex; justify-content: space-between; width: 100%; height: 100%; padding-top: 18px;'>";
	              content += "<div style='display: flex; flex-direction: column; justify-content: space-between;'>";
	              content += "<p style='color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px; max-height:55px; overflow:hidden;'>"+lists[i].sit_intro+"</p>";
	              content += "<div style='display: flex; align-items: center; flex-direction: row; margin-bottom: 30px;'>";
	              content += "<div style='width: 64.63px; display: flex; justify-content: space-between;'>";
	              content += "<div style='display: flex; flex: 1 1 0%; justify-content: space-between;'></div>";
	              content += "</div>";
	              content += "<p style='font-family: &amp; amp; amp; amp; quot; Noto Sans KR&amp;amp; amp; amp; quot;; font-size: 12px; line-height: 18px; color: rgb(94, 99, 109); letter-spacing: -0.2px; margin-left: 8px;'>이용 고객 수 : "+lists[i].sit_CLIENT+"</p>";
	              content += "</div>";
	              content += "</div>";
	              content += "<div style='display: flex; flex-direction: column; justify-content: flex-end; margin-bottom: 30px;'>";
	              content += "<div style='display: flex; align-items: center;'>";
	              content += "<p style='font-size: 17px; color: rgb(79, 82, 90); letter-spacing: 0.5px;'>" + lists[i].s_fee + "</p>";
	              content += "<div style='width: 32px; height: 21px; border: 1px solid rgb(197, 201, 208); border-radius: 3px; display: flex; align-items: center; justify-content: center; margin-left: 10px;'>";
	              content += "<p style='font-family: &amp; amp; amp; amp; quot; Noto Sans KR&amp;amp; amp; amp; quot;; font-size: 11px; letter-spacing: -0.2px; color: rgb(79, 82, 90);'>1 박</p>";
	              content += "</div>";
	              content += "</div></div></div>";
	              content += "<div style='display: flex; margin-top: 10px; align-items: center;'>";
	              content += "</div>";
	              content += "</form></div>";
	              content += "</div>";
	           	}
		        $(content).appendTo("#table_sitter");
		        //nowPage처리 
		        var val01 = $('#nowPage').val();
		        var val02 = parseInt(val01) + 1;
		        $('#nowPage').val(val02);
		        
		        console.log($('#total').val())
		        if ($('#nowPage').val() * 4 >= $('#total').val()) {
		        	moreBtn.style.display = 'none'
		        }
	        },
         
         error : function () {
            console.log("실패");
         },
      });
   };
   </script>
    
    <!-- main_menu -->
    <input type="hidden" id="nowPage" value="${ nowPage }" name="nowPage" />
    <input type="hidden" id="total" value="${ total }" name="total" />
    <input type="hidden" id="typtag" value="${ search.typtag }" name="typtag"/>
    <input type="hidden" id="typtagCount" value="${ search.count }" name="typtagCount"/>    
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
            <a href="javascript:option_check04();" id="playground" style="width: 122px; height: 55px; display: flex; align-items: center; justify-content: center; border: 1.5px solid rgb(223, 227, 234); border-radius: 28px; box-shadow: rgba(0, 0, 0, 0.03) 0px 2px 3px 0px; color: rgb(187, 193, 204);">
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
                                              style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer; " id="">
                                              가까운순</p>
                                          <p
                                              style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer;" id="star" onclick="starArray();">
                                              인기순</p>
                                          <p
                                              style="font-size: 14px; color: rgb(170, 170, 170); cursor: pointer;" id="price" onclick="priceArray();">
                                              가격순</p><img
                                              src="../images/filter.png"
                                              style="width: 15px; height: 15px;">
                                      </div>
                                  </div>
                              </div>
                                 <div id="table_sitter">
                       <!-- List출력 부분 -->
                       <c:forEach items="${lists }" var="row">
                       <form action="<c:url value='/'/>Petsitters/sitterView.do" method="POST">
                       
                          	<input type="hidden" value="${row.member_idx }" name="member_idx" />
                            <input type="hidden" value="${row.sit_idx }" name="sit_idx" />
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
                                         style="color: rgb(56, 60, 72); font-size: 13px; letter-spacing: -0.3px; max-width: 400px; max-height: 55px; overflow:hidden;">
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
                                            이용 고객 수 : ${row.sit_CLIENT }</p>
                                      </div>
                                   </div>
                                   <div
                                      style="display: flex; flex-direction: column; justify-content: flex-end; margin-bottom: 30px;">
                                      <div style="display: flex; align-items: center;">
                                         <p
                                            style="font-size: 17px; color: rgb(79, 82, 90); letter-spacing: 0.5px;">
                                            <fmt:formatNumber value="${row.s_fee}" pattern="#,###" /></p>
                                         <div
                                            style="width: 32px; height: 21px; border: 1px solid rgb(197, 201, 208); border-radius: 3px; display: flex; align-items: center; justify-content: center; margin-left: 10px;">
                                            <p
                                               style="font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot;; font-size: 11px; letter-spacing: -0.2px; color: rgb(79, 82, 90);">
                                               1 박</p>
                                         </div>
                                      </div>
                                      <div
                                         style="display: flex; margin-top: 10px; align-items: center;">

                                      </div>
                                      <br />
                                      
                                      <!-- 문법 -->
                                      
                                   </div>
                                </div>
                             </div>
                          </div>
                       </form>
                       </c:forEach>
                     </div>   
                       <div style="text-align: center;">
                          <div id="moreBtn" class="adoptPlus_btn" style="display: block;">
                                <a class="ad_plus" href="javascript:moreList1();">
                                   <p style="font-size: 18px; color: #75c9ba; margin-bottom: 30px; margin-top: 30px; font-weight: bold;">
                                      + 더보기</p>
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