<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${ requestScope.idDup }" var="idDupleCheck"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <!-- ajax -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <!-- icon -->
  <script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
  <title>registration</title>
</head>
<body>
  <style>
    * {
      font-family: SpoqaHanSans,'BM JUA_TTF', sans-serif;
    }
    a {
      text-decoration: none;
    }
    p {
      margin-bottom: 0
    }
    input[type=password] {
    	font-family: '나눔고딕';
    }
    input[type=text] {
    	font-family: '나눔고딕';
    }
    .address {
    	width: 475px; height: 59px; border: 1px solid #cccccc; margin: 0 12px 0 0; padding: 1px 5px; outline: none;
    }
    .zipcode_btn {
    	border: 0; background-color: #75c9ba; color: white; width: 100px; height: 40px; border-radius: 5px; margin:5px 0; box-shadow: rgba(0, 0, 0, 0.35) 0px 2px 5px;
    }
    #zipcode {
    	width: 100px; height: 59px; border: 1px solid #cccccc; margin: 0 12px 0 0; padding: 1px 5px; outline: none;
    }
  </style>
  <script>
    function checkRegiForm(fm) {
      var id_check = document.getElementById('id_check01');
      var pw_check = document.getElementById('pw_check01');
      var name_check = document.getElementById('name_check');
      var email_check = document.getElementById('email_check');
      if(!fm.user_id.value) {
        id_check.innerHTML = "아이디를 입력하세요!"
        id_check.style.color = 'red'
        fm.user_id.focus();
        return false;
      } else {
        if (id_check.innerHTML != "사용 가능합니다") {
          alert("아이디를 확인하세요.");
          fm.user_id.focus();
          return false;
        } 
    	}
      if(!fm.pass1.value) {
        pw_check.style.color = 'red'
        pw_check.innerHTML = "비밀번호를 입력하세요!"
        fm.pass1.focus();
        return false;
      } else {
        if(pw_check.innerHTML != "사용 가능합니다") {
          alert("비밀번호를 확인하세요.");
          fm.pass1.focus();
          return false;
        }
      }
      if(!fm.name.value) {
        name_check.style.color = 'red'
        name_check.innerHTML = "이름을 입력하세요!"
        fm.name.focus();
        return false;
      }
      if(!fm.email.value) {
        email_check.style.color = 'red'
        email_check.innerHTML = "이메일을 입력하세요!"
        fm.email.focus();
        return false;
      } else {
    	  if(email_check.innerHTML == "이메일 형식을 지켜주세요") {
    		  alert("이메일을 확인하세요.");
    		  fm.email.focus();
    		  return false;
    	  }
      }
    }

    // 비밀번호 입력 시 유효성 검사
    function passCheck(form) {
      	if(form.pass1.value != null) {
	        var u_pass = form.pass1.value;
	        var check = document.getElementById("pw_check01");
	        
	        if(u_pass.length >= 8 && u_pass.length <= 16) {
		        var num = 0;
		        var upp_Alpha = 0;
		        var low_Alpha = 0;
		        var symbol = 0;
		        for(var i = 0; i < u_pass.length; i++) {
			        var ascii = u_pass.charCodeAt(i);
			        if(ascii >= 48 && ascii <= 57) num++;
			        if(ascii >= 65 && ascii <= 90) upp_Alpha++;
			        if(ascii >= 97 && ascii <= 122) low_Alpha++;
			        if((ascii >= 33 && ascii <= 47) || (ascii >= 58 && ascii <= 64)
			            || (ascii >= 91 && ascii <= 96)
			            || (ascii >= 123 && ascii <= 126)) symbol++;
		        }
		        if( num > 0 && upp_Alpha > 0 && low_Alpha > 0 && symbol > 0 ) {
		            check.innerHTML = "사용 가능합니다";
		            check.style.color = "skyblue";
		            form.pass2.focus();
		        } else {
			        check.innerHTML = "영문(대소문자)/숫자/특수문자가 모두 포함되어야 합니다.";
			        check.style.color = "red";
		        }
	        } else {
		        check.innerHTML = "8~16 자리로 입력하세요.";
		      	check.style.color = "red";
	        }
      	}
    }
    
    function emailCheck(form) {
    	var email_check = document.getElementById("email_check");
    	var email_val = form.email.value;
    	var symbol01 = 0;
    	var symbol02 = 0;
    	for (var i = 0; i < email_val.length; i++) {
			if(email_val[i] == '@') {
				symbol01++;
				console.log("symbol01 : " + symbol01);
			}
			if(email_val[i] == '.') {
				symbol02++;
				console.log("symbol02 : " + symbol02);
			}
    	}
    	
    	if(symbol01 != 1 || symbol02 != 1) {
    		email_check.innerHTML = "이메일 형식을 지켜주세요"
    		email_check.style.color = "red"
    	} else {
    		email_check.innerHTML = '';
    	}
    }
    
    // 비밀번호, 휴대폰 번호, 전화번호 입력시 잘못된 사항
    $(function () {
        $('#pass1').keyup(function () {
	        $('#pass2').val('');
	        $('#pw_check02').val('');
        });

        $('#pass2').keyup(function () {
	        if ($('#pass1').val() == $('#pass2').val()) {
        		$('#pw_check02').html('비밀번호 일치').attr('style', 'color: skyblue');
        		$('#name').focus();
	        } else {
		        $('#pw_check02').html('비밀번호 불일치').attr('style', 'color: red');
		        $('#pass2').focus();
	        }
        });
        
        $('input[name=mobile2]').keyup(function(){
        	if(isNaN($('input[name=mobile2]').val()) == true) {
        		alert("숫자만 입력하세요.");
        		$('input[name=mobile2]').val('');
        		$('input[name=mobile2]').focus();
        	}
        });
        
        $('input[name=mobile3]').keyup(function(){
        	if(isNaN($('input[name=mobile3]').val()) == true) {
        		alert("숫자만 입력하세요.");
        		$('input[name=mobile3]').val('');
        		$('input[name=mobile3]').focus();
        	}
        });
    });
  </script>
<script>
$(function(){
	
	$('#idDuple').click(function(){
		
		$.ajax({
			url : "./idDuple",
			type : "GET",
			cache: false,
			data : {
				"id" : $('#id').val(),
			},
			dataType : 'text',
			success : function(data) {
				
				if( data == "사용 가능합니다") {
					$('#id_check01').attr({'style': 'color: skyblue'})
					$('#id_check01').html(data)
				} else {
					$('#id_check01').attr({'style': 'color: red'})
					$('#id_check01').html(data)
				}
			},
				
			error : function(data){
				console.log("실패");
			}
		});
	});
});
</script>
<!-- Zipcode -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

$(function() {
  $("#zipcode").click(()=>{
    new daum.Postcode({
        oncomplete: function(data) {
            $('#zipcode').val(data.zonecode);
            $('#address1').val(data.address);
            $('#address2').focus();
        }
    }).open();
  });
})

</script>
<jsp:include page="./common/Header.jsp" />
<!-- registration -->
<form id="registFrm" name="registFrm" action="./Regist" method="POST" onsubmit="return checkRegiForm(this);">
  <div style="display: flex; flex-direction: column; align-items: center; ">
    <div style=" display: flex; justify-content: center; flex-direction: column; align-items: center; border: 1px solid gray; width:960px; height: 2200px; border-radius: 30px; margin-top: 180px; left: 40%; margin-bottom: 280px; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 20px;">
          <div>
            <img src="./images/main_logo.png" alt="로고" style="width: 250px;">
          </div>
          <!-- Id -->
          <div style="margin-top: 100px">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">아이디</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; margin-top: 10px; padding: 0 24px 0 17px">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
                <input
                  id="id"
                  name="user_id"
                  type="text"
                  placeholder="아이디를 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                />
              </div>
              <div>
                <button id="idDuple" type="button" style="width: 50px; height: 50px; border: 0; background: none;"><img src="./images/duplication.png" alt="" style="width: 40px; height: 40px;"></button>
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="id_check01" style="color: skyblue"></span></p>
              <p>
                <li>아이디는 <span style="color: red;">6자리에서 12자리</span>로 입력해주세요</li>
              </p>
              <p>
                <li><span style="color: red;">영문과 숫자만</span> 입력해주세요</li>
              </p>
            </div>
          </div>
          <!-- Password -->
          <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">비밀번호</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
                <input
                  id="pass1"
                  name="pass1"
                  type="password"
                  placeholder="비밀번호를 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  onblur="passCheck(this.form);"
                />
              </div>
              <div>
                <img src="./images/pw_icon_fail.png" alt="" style="width: 43px; height: 40px;">
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="pw_check01" style="color: skyblue"></span></p>
              <p>
                <li>비밀번호는 <span style="color: red;">8자리에서 16자리</span>로 입력해주세요</li>
              </p>
              <p>
                <li><span style="color: red;">영문(대소문자), 숫자, 문자의 조합</span>으로 입력해주세요</li>
              </p>
            </div>
          </div>
          <!-- Password Check-->
          <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">비밀번호 확인</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
                <input
                  id="pass2"
                  name="pass2"
                  type="password"
                  placeholder="비밀번호를 확인하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                />
              </div>
              <div>
                <img src="./images/pw_icon_fail.png" alt="" style="width: 43px; height: 40px;">
              </div>
            </div>
           	<div style="margin-top: 5px;">
            	<p><span id="pw_check02" style="color: skyblue"></span></p>
            </div>
          </div>
          <!-- name -->
          <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">이름</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
                <input
                  id="name"
                  name="name"
                  type="text"
                  placeholder="이름을 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                />
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="name_check" style="color: skyblue"></span></p>
            </div>
          </div>
	        <script>
	        function genF(g) {
	        	if(g.gen_F.style.backgroundColor == 'rgb(255, 255, 255)') {
	        		g.gen_F.style.backgroundColor = '#75c9ba'
	        		g.gen_F.style.color = '#ffffff'
	        		g.gen_M.style.backgroundColor = '#ffffff'
	        		g.gen_M.style.color = '#000000'
	        		g.gender.value = 'F'
	        	} else {
	        		g.gen_F.style.backgroundColor = '#ffffff'
	        		g.gen_F.style.color = '#000000'

	        	}
	        }
	        function genM(g) {
	        	if(g.gen_M.style.backgroundColor == 'rgb(255, 255, 255)') {
	        		g.gen_M.style.backgroundColor = '#75c9ba'
	        		g.gen_M.style.color = '#ffffff'
	        		g.gen_F.style.backgroundColor = '#ffffff'
	        		g.gen_F.style.color = '#000000'
	        		g.gender.value = 'M'
	        	} else {
	        		g.gen_M.style.backgroundColor = '#ffffff'
	        		g.gen_M.style.color = '#000000'

	        	}
	        }
	        </script>
          <!-- birthday & gender -->
          <div style="margin-top: 50px;">
          	<div style="display: flex">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">생년월일</p>
	            <p style="margin-left: 325px; font-size: 20px; font-weight: 600;">성별</p>
          	</div>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
              <div style="width: 360px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px;">
                <div>
	                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              	</div>
              	<script>
              	$(function() {
              		$('#birth').keyup(function() {
              			var birth = $(this).val();
              			console.log(birth);
              			if(birth.length == 4) {
              				$(this).val(birth + "-")
              			} else if (birth.length == 7) {
              				$(this).val(birth + "-")
              			}
              		})
              	})
              	</script>
                <input
                  id="birth"
                  name="birth"
                  type="text"
                  placeholder="생년월일을 입력하세요!"
                  maxlength="10"
                  style="width: 280px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                />
              </div>
	            <div style="display: flex; margin-left: 10px">
				    <div
					    style="display: flex; justify-content: center; align-items: center; border: 1px solid #cccccc; border-radius: 5px; height: 50px; width: 50px;">
					    <!-- 여성버튼 -->	
					    <input type="button" value="F" id="gen_F" name="gen_F" onclick="genF(this.form);" class="btn btn-default gen_btn"  style="background-color: #ffffff; position: absolute; font-size: 17px; color: #333333; height: 50px; width: 50px;">
				    </div>
				    <div style="width: 10px"></div>
				    <div
				        style="display: flex; justify-content: center; align-items: center; border: 1px solid #cccccc; border-radius: 5px; height: 50px; width: 50px;">
				        <!-- 남성버튼 -->
				        <input type="button" value="M" id="gen_M" name="gen_M" onclick="genM(this.form);" class="btn btn-default gen_btn"  style="background-color: #ffffff; position: absolute; font-size: 17px; color: #333333; height: 50px; width: 50px;">
				    </div>
				    <input type="hidden" name="gender"/>
	    		</div>
          	</div>
          	<!-- Address -->
	        <div style="margin-top: 30px;">
	          <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">주소</p>
	          <div style="width: 475px; display: flex; align-items: left; margin-top: 10px; flex-direction: column;">
	            <div style="display: flex ">
	              <input
	              	id="zipcode"
	                name="zipcode"
	                type="text"
	                value=""
	                readonly
	              />
	              <!-- <button class="zipcode_btn" type="button" onclick="zipcodeFind();">우편번호찾기</button> -->
	            </div>
	            <div style="display: flex; margin-top: 10px">
		            <input type="text" class="address" id="address1" name="address1" value="" readonly/>                
	            </div>
	            <div style="display: flex; margin-top: 10px">
	                <input type="text" class="address" id="address2" name="address2" value="" />
	            </div>
	          </div>
	        </div>
          <!-- email -->
          <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">이메일</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
                <input
                  id="email"
                  name="email"
                  type="text"
                  placeholder="이메일을 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  onblur="emailCheck(this.form);"
                />
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="email_check" style="color: skyblue"></span></p>
              <p style="color: #4D505A">
                예) petsfinder@petsfinder.com
              </p>
            </div>
          </div>
          <!-- mobile -->
          <div style="margin-top: 50px; ">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">휴대폰 번호</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
              <div>
                <select
                  id="mobile1"
                  name="mobile1"
                  style="width: 95px; height: 52px; border: 1px solid #cccccc; margin: 0px 12px 0 0; padding: 1px 2px; outline: none;"
                >
                	<option value="">선택</option>
                	<option value="010">010</option>
                	<option value="011">011</option>
                	<option value="016">016</option>
                	<option value="019">019</option>
                </select>
              </div>
              <div>
                <input
                  id="mobile2"
                  name="mobile2"
                  type="text"
                  style="width: 160px; height: 52px; border: 1px solid #cccccc; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  maxlength="4"
                />
              </div>
              <div>
                <input
                  id="mobile3"
                  name="mobile3"
                  type="text"
                  style="width: 160px; height: 52px; border: 1px solid #cccccc; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  maxlength="4"
                />
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="mobile_check" style="color: skyblue"></span></p>
            </div>
          </div>
          <!-- Login -->
          <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 50px; width: 450px">
            <div>
              <p style="font-size: 30px; font-weight: bold;">회원 가입</p>
            </div>
            <button type="submit" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 2px 5px; width: 60px; height: 60px; background-color: #75c9ba; border-radius: 30px; color: white; display: flex; align-items: center; justify-content: center; border: 0">
              <i class="fa-solid fa-arrow-right-long"></i>
            </button>
          </div>
          <!-- search -->
          <div style="display: flex; justify-content: space-between; width: 450px; margin-top: 50px">
            <a href="./Login" style="color: black;">로그인</a>
          </div>
        </div>
      </div>
</form>
</body>
</html>