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
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  <title>registration</title>
  
<script>
$().ready(function () {
    $("#confirmStart").click(function () {
        Swal.fire({
            title: '등록 하시겠습니까?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '등록',
            cancelButtonText: '취소'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                    '등록이 완료되었습니다.',
                    'success'
                ).then(() => {
                	checkValidate(this.form)
                })
            }
        })
    });
});

function checkValidate(f) {
	
   	if(f.pet_name.value==""){
   		alert("이름을 입력하세요!");
   		f.pet_name.focus();
   		return false;
   	}
   	if(f.pet_kind.value==""){
   		alert("품종을 입력하세요!"); 
   		f.pet_kind.focus();
   		return false;
   	}
   	if(f.pet_age.value==""){
   		alert("나이를 입력하세요!"); 
   		f.pet_age.focus();
   		return false;
   	} 
   	if(f.pet_gender.value==""){
   		alert("성별을 입력하세요!"); 
   		f.pet_gender.focus();
   		return false;
   	} 
   	if(f.pet_char.value==""){
   		alert("특징을 입력하세요!"); 
   		f.pet_char.focus();
   		return false;
   	}
   	if(f.pet_species.value==""){
   		alert("종을 입력하세요!"); 
   		f.pet_species.focus();
   		return false;
   	}
   	if(f.pet_neut.value==""){
   		alert("중성화 여부를 입력하세요!"); 
   		f.pet_neut.focus();
   		return false;
   	} else {
		document.petRegiFrm.submit();
	}
	
}
</script>
</head>
<body>
  <style>
    * {
      font-family: 'BM JUA_TTF', sans-serif;
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
    
   .box-file-input label{
  display:inline-block;
  background:#23a3a7;
  color:#fff;
  padding:0px 15px;
  line-height:35px;
  cursor:pointer;
}

.box-file-input label:after{
  content:"파일등록";
}

.box-file-input .file-input{
  display:none;
}

.box-file-input .filename{
  display:inline-block;
  padding-left:10px;
}
  </style>
 
 <script>
 $(document).on("change", ".file-input", function(){
	   
	    $filename = $(this).val();

	    if($filename == "")
	      $filename = "사진을 선택해주세요.";

	    $(".filename").text($filename);

	  })
 </script>
<script>

<jsp:include page="./common/Header.jsp" />

<!-- registration -->
<form id="" name="petRegiFrm" action="./Petaction" enctype="multipart/form-data" method="post">
<div style="display: flex; flex-direction: column; align-items: center; ">
    <div style=" display: flex; justify-content: center; flex-direction: column; align-items: center; border: 1px solid gray; width:960px; height: 2200px; border-radius: 30px; margin-top: 180px; left: 40%; margin-bottom: 280px; box-shadow: rgba(0, 0, 0, 0.65) 0px 2px 20px;">
    	<input type="hidden" name="member_idx" value="${sessionScope.idx  }" />
    	<input type="hidden" name="abani_idx" value="${e.abani_idx }" />
          <div>
            <img src="./images/main_logo.png" alt="로고" style="width: 250px;">
          </div>
          <!-- 펫 이름 -->
          <div style="margin-top: 100px">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 이름</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; margin-top: 10px; padding: 0 24px 0 17px">
              <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
              </div>
              <div>
                <input
                  id=""
                  value=""
                  name="pet_name"
                  type="text"
                  placeholder="반려동물 이름을 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                />
              </div>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="id_check01" style="color: skyblue"></span></p>
             
            </div>
          </div>
          <!-- 품종 -->
          <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">품종</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px; margin-top: 10px;">
             <div>
                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
              </div>
              <div>
              </div>
              <c:if test="${not empty e.abani_idx  }">
              <div>
                <input
                  id=""
                  name="pet_kind"
                  type="text"
                  value="${ e.abani_kind }"
                  readonly="readonly"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  onblur="passCheck(this.form);"
                />
              </div>
              </c:if>
               <c:if test="${empty e.abani_idx  }">
              <div>
                <input
                  id=""
                  name="pet_kind"
                  type="text"
                  value=""
                  placeholder="품종을 입력하세요!"
                  style="width: 350px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
                  onblur="passCheck(this.form);"
                />
              </div>
              </c:if>
            </div>
            <div style="margin-top: 5px;">
              <p><span id="pw_check01" style="color: skyblue"></span></p>
            </div>
          </div>
        <!-- Age -->
        <div style="margin-top: 50px;">
          	<div style="display: flex">
	            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">펫 나이</p>
          	</div>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
              	<div style="width: 300px; height: 59px; display: flex; align-items: center; border: 1px solid #cccccc; padding: 0 24px 0 17px;">
	                <div>
		                <img src="./images/id_icon01.png" alt="" style="width: 35px; height: 30px;">
	              	</div>
              		<c:if test="${not empty e.abani_idx  }">
	               	<input
	                  id=""
	                  name="pet_age"
	                  type="text"
	                  readonly="readonly"
	                  value="${e.abani_age }"
	                  maxlength="10"
	                  style="width: 140px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
	                />
                	</c:if>
                	<c:if test="${empty e.abani_idx  }">
	                <input
	                  id=""
	                  name="pet_age"
	                  type="text"
	                  value=""
	                  maxlength="10"
	                  style="width: 140px; height: 52px; border: 0; margin: 0px 12px; padding: 1px 2px; outline: none;"
	                />
                	</c:if>
              	</div>
        	</div>  
      	</div>
       
        <div style="margin-top: 30px;">
        	<div>
		       	<!-- gender -->
	       		<div style="display:flex;">
		        	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">성별</p>
		        </div>
                <script>
                function genderVal(b) {
	                var a = $(b).val(); 
	                if(a == '남성') {
                   		$('#pet_gender').val('M')
                   		$('#M').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'})
                   		$('#F').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'})
	                } else if (a == '여성') {
                   		$('#pet_gender').val('F')
                   		$('#M').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'})
                   		$('#F').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'})
	                }
                }
                window.onload = function () {
                	if (${ e.abani_gender ne null } == true) {
	                	if(${ e.abani_gender eq 'M' }) {
	                		$('#M').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'}, {disabled : 'true'})
	                   		$('#F').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'}, {disabled : 'true'})
	                	} else if (${ e.abani_gender  eq 'F' }) {
	                		$('#M').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'}, {disabled : 'true'})
	                   		$('#F').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'}, {disabled : 'true'})
	                	}
                	}
                	if (${ e.abani_neut ne null } == true) {
	                	if(${ e.abani_neut eq 0 }) {
	                		$('#0').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'})
	                   		$('#1').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'})
	                	} else if (${ e.abani_neut eq 1 }) {
	                		$('#0').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'})
	                   		$('#1').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'})
	                	}
                	}
                }
               </script>
               <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
	               <input type="hidden" id="pet_gender" name="pet_gender" value="${ e.abani_gender }">
	               <div style="display: flex; margin-top: 15px">
	                    <!-- 여성버튼 -->   
	                    <input onclick="genderVal(this);" type="button" id="F" value="여성" class="btn btn-default"  style="width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px">
	                    <!-- 남성버튼 -->   
	                    <input onclick="genderVal(this);" type="button" id="M" value="남성" class="btn btn-default"  style="width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; ">
	                </div>
		            <div style="margin-top: 5px;">
		            	<p><span id="abani_gender_check" style="color: skyblue"></span></p>
		            </div>
		        </div>
            </div>
        	<div>
		       	<!-- gender -->
	       		<div style="display:flex; margin-top : 30px">
		        	<p style="margin-left: 10px; font-size: 20px; font-weight: 600;">중성화</p>
		        </div>
                <script>
                function neutVal(b) {
	                var a = $(b).val();
	                if(a == 'X') {
                   		$('#pet_neut').val(0)
                   		$('#0').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'})
                   		$('#1').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'})
	                } else if (a == 'O') {
                   		$('#pet_neut').val(1)
                   		$('#0').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'})
                   		$('#1').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'})
	                }
                }
               </script>
               <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
	               <input type="hidden" id="pet_neut" name="pet_neut" value="${ e.abani_neut }">
	               <div style="display: flex; margin-top: 15px">
	                    <!-- O -->   
	                    <input onclick="neutVal(this);" type="button" id="1" value="O" class="btn btn-default"  style="width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px">
	                    <!-- X -->   
	                    <input onclick="neutVal(this);" type="button" id="0" value="X" class="btn btn-default"  style="width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; ">
	                </div>
		            <div style="margin-top: 5px;">
		            	<p><span id="abani_neut_check" style="color: skyblue"></span></p>
		            </div>
		        </div>
            </div>
        </div>
        <!-- 종 -->
        <div style="margin-top: 50px; ">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">종</p>
            <div style="width: 475px; height: 59px; display: flex; align-items: center; border: 0; margin-top: 10px;">
              	<div>
	                <select
	                  id=""
	                  name="pet_species"
	                  style="width: 95px; height: 52px; border: 1px solid #cccccc; margin: 0px 12px 0 0; padding: 1px 2px; outline: none;"
	                >
	                	<option value="">선택</option>
	                	<option value="dog">개</option>
	                	<option value="cat">고양이</option>
	                </select>
             	</div>
            </div>
            <div style="margin-top: 5px;">
            	<p><span id="mobile_check" style="color: skyblue"></span></p>
            </div>
        </div>
        <div style="margin-top: 50px;">
            <p style="margin-left: 10px; font-size: 20px; font-weight: 600;">특징</p>
       	 	<textarea style="width:490px; height:200px; margin-top: 20px;" name="pet_char" id="" cols="30" rows="10" placeholder="특징을 입력하세요!"></textarea>
	       	<div style="margin-top: 5px;">
	        	<p><span id="pw_check02" style="color: skyblue"></span></p>
	        </div>
        </div>
        <!-- 펫 사진 -->
        <div style="margin-top: 50px;">
            <p style="margin-right:425px; font-size: 20px; font-weight: 600;">사진 등록</p>
			<div class="box-file-input" style="margin-top: 10px;">
				<label>
					<input type="file" name="ofile" class="file-input" >
				</label>
				<span class="filename">사진을 등록해주세요.</span>			
			</div>
       	</div>
        <!-- 펫 등록 -->
        <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 50px; width: 450px">
	        <div>
         		<p style="font-size: 30px; font-weight: bold;">펫 등록</p>
	        </div>
	        <button id="confirmStart" type="button" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 2px 5px; width: 60px; height: 60px; background-color: #75c9ba; border-radius: 30px; color: white; display: flex; align-items: center; justify-content: center; border: 0">
          		<i class="fa-solid fa-arrow-right-long"></i>
	        </button>
        </div>
      
    </div>
</div>
</form>
</body>
</html>