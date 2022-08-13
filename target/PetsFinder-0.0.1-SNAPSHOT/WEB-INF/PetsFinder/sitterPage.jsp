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
      <img src="./images/mypage.png" alt="" style="width:30px; padding-right: 5px"> 마이페이지 > 내가 쓴 글 보기 > 시터 페이지 생성 및 수정
    </div>
      <div class="uk-container">
    <form action="./info_update" method="POST" enctype="multipart/form-data" style="margin-top: 50px" class="uk-grid-medium" uk-grid>
        <fieldset class="uk-fieldset" >
          <legend class="uk-legend" style="color: #75c9ba; font-size: 40px;">
            <strong>시터 페이지 생성 및 수정</strong>
          </legend>
          <hr style="border: #75c9ba 2px solid; margin-bottom: 30px" />
          <span class="uk-margin uk-form-width-medium">
            제목 :&nbsp;
            <div class="uk-inline uk-width-1-4@s" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input class="uk-input" type="text" value="${ s_info.sit_title }" readonly />
            </div>
            <br />
            소개글 :&nbsp;
            <div class="uk-inline" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <style>
              	textarea {
					font-size: 1.2em; 
					width: 100%; 
					height: 300px; 
					border: 0; 
					font-family: 'BM JUA_TTF'; 
					overflow: hidden; 
					background:none; 
					resize:none;
					min-height: 18rem;
				    overflow-y: hidden;
				}
              </style>
              <textarea>${ s_info.sit_intro }</textarea>
            </div>
          </span>
          <br />
          <hr
            style="border: #75c9ba 1px solid; margin-bottom: 30px; opacity: 70%"
          />
          <span class="uk-margin uk-form-width-medium">
            소형 요금 :&nbsp;
            <div class="uk-inline uk-width-1-4@s" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input class="uk-input" type="text" value="${ s_info.s_fee }" />
            </div>
            <br />
            중형 요금 :&nbsp;
            <div class="uk-inline" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input class="uk-input" type="text" value="${ s_info.m_fee }"/>
            </div>
            <br />
            대형 요금 :&nbsp;
            <div class="uk-inline" name="uk-inline">
              <span class="uk-form-icon" uk-icon="icon: user"></span>
              <input class="uk-input" type="text" value="${ s_info.b_fee }"/>
            </div>
          </span>
          <hr style="border: #75c9ba 1px solid; margin-bottom: 30px; opacity: 70%"/>
          주소 :&nbsp;
          <div class="uk-inline uk-width-1-5@s">
            <input class="uk-input zipcode" type="text" name="zipcode" value="${ s_info.zipcode }" readonly/>
          </div>
          <br />
          <span style="margin-left: 49px;" class="uk-inline uk-width-1-3@s">
            <input class="uk-input" type="text" id="address1" name="address1" value="${ s_info.address1 }" readonly />
          </span>
          <span class="uk-inline uk-width-1-2@s">
            <input class="uk-input" type="text" id="address2" name="address2" value="${ s_info.address2 }" placeholder="상세주소" />
          </span>
        </span>
        <hr style="border: #75c9ba 2px solid; margin-bottom: 30px" />
		</fieldset>
		<div>
	        <img
	          	style="
		            width: 480px;
		            height: 650px;
		            margin-top: 71px;
		            margin-left: auto;
		            box-shadow: 8px 8px 3px #025077;
		            padding-left: 0;
		            opacity: 90%;
	          	"
	          src="./Uploads/${ s_info.photo }"
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
