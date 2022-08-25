<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원정보수정</title>
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css"/>
    <!-- UI Kit -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  </head>
  <style>
    body {
      font-family: "BM JUA_TTF";
      color: #75c9ba;
      margin-left: 20px;
    }
    .uk-inline {
      margin-bottom: 15px;
      margin-left: 10px;
    }
    .uk-inline > input {
      padding-right: 10px;
    }

  </style>
  <body>
    <!-- 주소 api -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      $(function() {
        $(".zipcode").click(()=>{
          new daum.Postcode({
              oncomplete: function(data) {
                  $('.zipcode').val(data.zonecode);
                  $('#address1').val(data.address);
              }
          }).open();
        });
      })
    </script>
    
    <div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 100px">
		<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
		<p style="margin-top:9px;"> 마이페이지 > 개인정보관리 > 회원정보 수정</p>
	</div>
    <div class="uk-container">
    <form action="./info_update" method="POST" enctype="multipart/form-data" style="margin-top: 50px" class="uk-grid-medium" uk-grid>
        <fieldset class="uk-fieldset" >
          <legend class="uk-legend" style="color: #75c9ba; font-size: 40px;">
            <strong>회원 정보 수정</strong>
          </legend>
          <hr style="border: #75c9ba 2px solid; margin-bottom: 30px" />
          <span class="uk-margin uk-form-width-medium">
            이름 :&nbsp;
            <div class="uk-inline uk-width-1-4@s" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input class="uk-input" type="text" value="${ m_info.member_name }" readonly />
            </div>
            <br />
            아이디 :&nbsp;
            <div class="uk-inline" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input
                class="uk-input"
                type="text"
                value="${ m_info.member_id }"
                readonly
              />
            </div>
          </span>
          <br />
          <span class="uk-margin uk-form-width-small">
            생년월일 :&nbsp;
            <div class="uk-inline uk-width-1-4@s" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input
                class="uk-input"
                type="text"
                value="${ m_info.member_birth }"
                readonly
              />
            </div>
            &nbsp;&nbsp; 포지션 :&nbsp;
            <div class="uk-inline uk-width-1-5@s" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input
                class="uk-input"
                type="text"
                value="${ m_info.member_type }"
                readonly
              />
            </div>
          </span>
          <br />
          <hr
            style="border: #75c9ba 1px solid; margin-bottom: 30px; opacity: 70%"
          />
          <span class="uk-margin uk-form-width-small">
            프로필 사진 :&nbsp;
            <div uk-form-custom="target: true">
	            <input name="ofile" type="file">
	            <input class="uk-input uk-form-width-medium" type="text" placeholder="Select file" disabled>
        	</div>
    	  </span>
          <hr
            style="border: #75c9ba 1px solid; margin-bottom: 15px; opacity: 70%"
          />
          <span class="uk-margin uk-form-width-medium">
            이메일 :&nbsp;
            <div class="uk-inline uk-width-1-5@s">
              <input class="uk-input" type="text" name="email1" style="margin-top: 15px;" value="${ email1 }"/>
            </div>
            &nbsp;@
            <div class="uk-inline">
              <input class="uk-input" type="text" name="email2" style="margin-top: 15px;" value="${ email2 }" readonly/>
            </div>
            &nbsp;
            <script>
              function select(f) {
                var com = f.email.value;
                if(!(com == '' || com == "직접입력")) {
                  f.email2.value = com;
                } else if (com == '') {
                  f.email2.readOnly = true;
                } else {
                  f.email2.readOnly = false;
                  f.email2.value = '';
                  f.email2.focus();
                }

              }
            </script>
            <div class="uk-inline uk-form-controls uk-width-1-4@s">
              <select class="uk-select"  name="email" style="margin-top: 15px;" onchange="select(this.form)">
                <option value="">선택</option>
                <option value="gmail.com">gmail.com</option>
                <option value="naver.com">naver.com</option>
                <option value="nate.com">nate.com</option>
                <option value="daum.net">hanmail.net</option>
                <option value="직접입력">직접입력</option>
              </select>
            </div>
            <br>
            연락처 : &nbsp;
            <span class="uk-inline uk-width-1-6@s" >
            	<select
                  id="mobile1"
                  name="mobile1"
                  class="uk-input"
                  style="margin-top: 15px;"
                >
                	<option value="">선택</option>
                	<option value="010" selected>010</option>
                	<option value="011">011</option>
                	<option value="016">016</option>
                	<option value="019">019</option>
                </select>
            </span>
            -
            <span class="uk-inline uk-width-1-6@s" >
              <input class="uk-input" type="text" name="mobile2" style="margin-top: 15px;" value="${ mobile2 }"/>
            </span>
            -
            <span class="uk-inline uk-width-1-6@s" >
              <input class="uk-input" type="text" name="mobile3" style="margin-top: 15px;" value="${ mobile3 }"/>
            </span>
          
          <hr style="border: #75c9ba 1px solid; margin-bottom: 30px; opacity: 70%"/>
          주소 :&nbsp;
          <div class="uk-inline uk-width-1-5@s">
            <input class="uk-input zipcode" type="text" name="zipcode" value="${ zipcode }" readonly/>
          </div>
          <br />
          <span style="margin-left: 49px;" class="uk-inline uk-width-1-3@s">
            <input class="uk-input" type="text" id="address1" name="address1" value="${ address1 }" readonly />
          </span>
          <span class="uk-inline uk-width-1-2@s">
            <input class="uk-input" type="text" id="address2" name="address2" value="${ address2 }" placeholder="상세주소" />
          </span>
        </span>
        <hr style="border: #75c9ba 2px solid; margin-bottom: 30px" />
		</fieldset>
		<div>
	        <img
	          	style="
		            width: 500px;
		            height: 650px;
		            margin-top: 71px;
		            margin-left: auto;
		            box-shadow: 8px 8px 3px #025077;
		            padding-left: 0;
		            opacity: 90%;
	          	"
	          src="./Uploads/${ photo }"
	          alt=""
	        />
		</div>
        <div class="uk-flex uk-flex-center" style="margin: auto; padding-bottom: 100px;">
          <button type="submit" class="uk-button uk-button-primary">수정하기</button>
          &nbsp;&nbsp;
          <button type="reset" class="uk-button uk-button-danger">다시쓰기</button>
        </div>
    </form>
   	  </div>
  </body>
</html>
