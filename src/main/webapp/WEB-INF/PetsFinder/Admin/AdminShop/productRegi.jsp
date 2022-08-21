<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>상품 등록</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>


<style>
* {
	font-family: 'BM JUA_TTF', sans-serif;
}
    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    textarea {	
    resize: none;
  }
.inputFile,
#Preview,
#Preview li{
    float:left
}
.inputFile{
    margin-bottom: 10px;
}
.addImgBtn{
    width: 80px !important;
    height: 80px !important;
    line-height: 71px !important;
    background-color: #fff !important;
    color: #b7b7b7 !important;
    border: 2px solid #b7b7b7;
    font-size: 35px !important;
    padding: 0 !important;
}

#Preview{
    margin-left: 20px;
    width: 650px;
}
#Preview li{
    margin-left: 10px;
    margin-bottom: 10px;
    position: relative;
    border: 1px solid #ececec;
    cursor:move
}
.delBtn{
    position: absolute;
    top: 0;
    right: 0;
    font-size: 13px;
    background-color: #000;
    color: #fff;
    width: 18px;
    height: 18px;
    line-height: 16px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
}
</style>

<script>
$(function(){
	//드래그 앤 드롭
	 /*  $(".sortable").sortable();   */
	
	  //이미지 등록
	  $("#AddImgs").change(function(e){
	      //div 내용 비워주기
	      $('#Preview').empty();

	      var files = e.target.files;
	      var arr = Array.prototype.slice.call(files);

	      //업로드 가능 파일인지 체크
	      for(var i=0; i<files.length; i++){
	          if(!checkExtension(files[i].name,files[i].size)){
	              return false;
	          }
	      }
	      preview(arr);

	      function checkExtension(fileName,fileSize){
	          var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	          var maxSize = 20971520;  //20MB

	          if(fileSize >= maxSize){
	              alert('이미지 크기가 초과되었습니다.');
	              $("#AddImgs").val("");  //파일 초기화
	              return false;
	          }

	          if(regex.test(fileName)){
	              alert('확장자명을 확인해주세요.');
	              $("#AddImgs").val("");  //파일 초기화
	              return false;
	          }
	          return true;
	      }

	      function preview(arr){
	          arr.forEach(function(f){
	              //파일명이 길면 파일명...으로 처리
	              
	              var fileName = f.name;
	              if(fileName.length > 10){
	                  fileName = fileName.substring(0,7)+"...";
	              }
	             

	              //div에 이미지 추가
	              var str = '<li style="list-style: none;" class="ui-state-default">';
	              //str += '<span>'+fileName+'</span><br>';
	              //이미지 파일 미리보기
	              if(f.type.match('image.*')){
	                  //파일을 읽기 위한 FileReader객체 생성
	                  var reader = new FileReader(); 
	                  reader.onload = function (e) { 
	                      //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
	                      str += '<img src="'+e.target.result+'" title="'+f.name+'" width=80 height=80>';
	                      str += '<span class="delBtn" onclick="delImg(this)">x</span>';
	                      str += '</li>';
	                      $(str).appendTo('#Preview');
	                  } 
	                  reader.readAsDataURL(f);
	              }else{
	                  //이미지 파일 아닐 경우 대체 이미지
	                  /*
	                  str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=60 height=60 />';
	                  $(str).appendTo('#Preview');
	                  */
	              }
	          })
	      }
	  })

	})
	  //이미지 삭제
	  function delImg(_this){
	      $(_this).closest('li').remove();
	      maxAppend --;
	      console.log($("#AddImgs").val());
	  }
</script>

</head>
<body class="sb-nav-fixed">
<jsp:include page="../common/topHeader.jsp"></jsp:include>
<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
	</div>
 <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">상품 등록</h4>
        <form method="post" action="<c:url value="/registPdt"/>" enctype="multipart/form-data">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">상품명</label>
              <input type="text" class="form-control" name="product_name" value="" required>
            </div>
          </div>

         <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">상품가</label>
              <input type="text" class="form-control" name="product_price" value="" required>
            </div>
            
          </div>
			 <div class="mb-3">
            <label for="address">수량</label>
            <input type="number" class="form-control" name="product_stock" required
            style="width:70px;">
          </div>
          <div class="mb-3">
            <label for="address">카테고리</label>
            <select name="product_category" class="form-control" style="width:100px;">
            	<option value="">선택</option>
            	<option value="ess">필수용품</option>
            	<option value="mdc">약</option>
            	<option value="gds">굿즈</option>
            </select>
          </div>
          <div class="mb-3">
            <label><span>상품 소개</span></label>
          </div>
            <textarea name="product_description" cols="72" rows="5"></textarea>
        <div class="filebox clearfix">
		    <div class="inputFile">
		        <label for="AddImgs" class="addImgBtn">+</label>
		        <input type="file" name="ofile" id="AddImgs" class="upload-hidden" multiple accept=".jpg, .png, .gif">
		    </div>
		    <ul id="Preview"></ul>
		</div>
		
		
          <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
        <!--  <input type="file" class="form-control" accept="image/*" onchange="setThumbnail(event)" name="ofile";  multiple> -->
     </div>
          <button type="submit" class="btn btn-danger btn-lg btn-block" >등록하기</button>
           <button type="button" class="btn btn-warning btn-lg btn-block" 
          	onclick="location.href='../AdminShop/shopRegi';">리스트보기</button>
        </form>
        
      </div>
    </div>
  </div>
<!-- footer -->
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>