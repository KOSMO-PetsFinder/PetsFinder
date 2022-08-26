<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 입양 신청 폼  -->
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("utf-8");String abani_idx = request.getParameter("abani_idx");%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f23556bd57117a96842def422603994"></script>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>    
<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<title>펫시터 교육과 지원을 통해 전문가로 성장하세요 | 펫플래닛</title>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body> 
<jsp:include page="../common/Header.jsp" />
<noscript>
<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
height="0" width="0" style="display: none; visibility: hidden;"></iframe>
</noscript>
<!-- alert 창 꾸미기 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript">
$(function () {
	
	$('#checkFrm').click(function () {
		
		Swal.fire({
		    title: '정말로 입양 하시겠습니까?',
		    icon: 'warning',
		    showCancelButton: true,
		    confirmButtonColor: '#75c9ba',
		    cancelButtonColor: '#d33',
		    confirmButtonText: '승인',
		    cancelButtonText: '취소',
		}).then((result) => {
		    if (result.isConfirmed) {
		        Swal.fire(
		            '승인이 완료되었습니다.',
		        ).then(() => {
		        	checkAppForm(this.form)
		        })
			} else {
				return false;
			}
	    })
	}) 
	function checkAppForm(fm) {
	               	
	    if(fm.adpapl_fNum.value=="") {
           adpapl_fNum_check.style.color = 'red'
           adpapl_fNum_check.innerHTML = "가족 구성원을 선택하세요!"
           return false;
	    }
	    else if(fm.ADPAPL_job.value=="") {
	        ADPAPL_job_check.style.color = 'red'
	        ADPAPL_job_check.innerHTML = "가족 구성원 직업 여부를 선택하세요!"
	    	   adpapl_fNum_check.innerHTML = ""
	        return false;
	    }
	    else if(fm.ADPAPL_exp.value=="") {
	           ADPAPL_exp_check.style.color = 'red'
	           ADPAPL_exp_check.innerHTML = "반려동물을 반려한(키운) 경험 여부를 선택하세요!"
	           return false;
	   	} else {
	   		document.adoptionFrm.submit();
	   	}
	}
})
        
</script>

<form action="../AbandonedAnimal/AdoptApplicationForm.do" id="adoptionFrm" name="adoptionFrm" method="post" style="margin-top:100px">
<input type="hidden" name="abani_idx" value="<%=abani_idx%>">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 35px">
<img src="./images/mypage.png" alt="" style="width:30px; padding-right: 5px"> 마이페이지 > 입양신청관리 > 입양신청
</div>
<div id="__next">
<div>
<div>
<div class="wrapper">
<header id="hd">
</header>
<div id="applyform-container">
<div class="desktop hidden-s">
<section style="width: 100%;">
<div style="width: 1000px; margin: 0px auto;">
        <h2 style="font-size: 50px; font-weight: 600; color: #555555">
                입양신청서 작성하기</h2>
</div>
</section>
<section style="background-color: #FAFAFB; margin-top: 102px">
	<!-- 1. 기본정보 -->
	<div style="width: 1000px; margin: 0px auto; padding-top: 95px">
        <p style="font-size: 27px; font-weight: 600; color: #555555">1.기본 정보</p>
        <div style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
            <div style="display: flex; align-items: center">
            	<!-- 지원자 성명 -->
                <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
                    <p style="font-size: 17px; font-weight: 600; color: #555555">지원자 성명 <span style="color: #71A2FF">*</span>
                    </p>
                    <div style="margin-top: 15px">
                            <input type="text"  name="ADPAPL_name" value="${ adpApp.member_name }" readOnly
                                    style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                    </div>
                    <div style="margin-top: 5px;">
                    <p><span id="ADPAPL_name_check" style="color: skyblue"></span></p>
                    </div>
                </div>
                <!-- 성별 -->
                <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
                    <p style="font-size: 17px; font-weight: 600; color: #555555">성별<span style="color: #71A2FF">*</span>
                    </p>
                    <script>
                    function genderVal(b) {
                       var a = $(b).val();
                       if(a == '남성') {
                          $('#ADPAPL_gender').val('M')
                          $('#M').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'})
                          $('#F').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'})
                       } else if (a == '여성') {
                          $('#ADPAPL_gender').val('F')
                          $('#M').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'})
                          $('#F').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'})
                       }
                    }
                    $(function () {
                    	if($('#ADPAPL_gender').val() == 'M') {
                    		$('#M').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px;'}, {disabled: 'disabled'})
                            $('#F').attr({style : 'width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px'}, {disabled: 'disabled'})
                    	} else if ($('#ADPAPL_gender').val() == 'F') {
                    		$('#M').attr({style : 'width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px;'}, {disabled: 'disabled'})
                            $('#F').attr({style : 'border : 2px solid #75c9ba; width: 190px; background: none; height: 50px; border-radius: 5px; margin-right: 10px'}, {disabled: 'disabled'})
                    	}
                    })
                	</script>
                	<input type="hidden" id="ADPAPL_gender" name="ADPAPL_gender" value="${ adpApp.member_gender }">
	                <div style="display: flex; margin-top: 15px">
                            <!-- 여성버튼 -->	
                            <input onclick="genderVal(this);" type="button" id="F" value="여성" class="btn btn-default"  style="width: 190px ; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; margin-right: 10px">
                            <!-- 남성버튼 -->	
                            <input onclick="genderVal(this);" type="button" id="M" value="남성" class="btn btn-default"  style="width: 190px; background: none; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; ">
                    </div>
	                <div style="margin-top: 5px;">
	                <p><span id="ADPAPL_gender_check" style="color: skyblue"></span></p>
	                </div>
                </div>
            </div>
            
            <div style="display: flex; align-items: center; margin-top: 54px">
            	<!-- 생년월일 -->
                <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
                    <p style="font-size: 17px; font-weight: 600; color: #555555"> 생년월일 <span style="color: #71A2FF">*</span>
                    </p>
                    <p style="margin-top: 10px; font-size: 13px; color: #999999">
                        27세 이상 /
                        <!-- -->
                        96
                        <!-- -->
                        년생 부터 지원이 가능합니다.
                    </p>
                    <div style="margin-top: 15px">
                        <input type="text" name="ADPAPL_birth" value="${ adpApp.member_birth }" readOnly maxLength="8" style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                    </div>
                    <p><span id="ADPAPL_birth_check" style="color: skyblue"></span></p>
                </div>
                <!-- 연락처 -->
                <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
                    <p style="font-size: 17px; font-weight: 600; color: #555555"> 연락처 <span style="color: #71A2FF">*</span>
                    </p>
                    <p style="margin-top: 10px">입력한 휴대폰 번호로 합격 여부를 알려드립니다.</p>
                    <div style="margin-top: 15px">
                            <input type="text" name="ADPAPL_tel" value="${ adpApp.member_phone }" readOnly maxLength="12" style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                    </div>
                    <p><span id="ADPAPL_tel_check" style="color: skyblue"></span></p>
                </div>
            </div>
            
            <!-- 거주지 주소 -->
            <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                <p style="font-size: 17px; font-weight: 600; color: #555555">거주지 주소 <span style="color: #71A2FF">*</span>
                </p>
                <div style="margin-top: 15px">
                    <input type="text" name="ADPAPL_addr" value="${ adpApp.member_addr }" readOnly style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                </div>
                <p><span id="ADPAPL_addr_check" style="color: skyblue"></span></p>
            </div>
            
            <!-- 가족구성원 -->
            <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                <p style="font-size: 17px; font-weight: 600; color: #555555">가족 구성원 <span style="color: #71A2FF">*</span>
                <p><span id="adpapl_fNum_check" style="color: skyblue"></span></p>
                </p>
                <div style="margin-top: 31px; display: flex; align-items: center">
                    <div style="width: 270px; display: flex; align-items: center" class="form-check" >
                        <div style="display: flex; align-items: center">
                            <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="adpapl_fNum" value="1" type="radio" id="solo">
                            <label class="form-check-label" for="solo" style="font-size: 17px; margin-left: 10px;">1인 가구</label>
                        </div>
                    </div>
                            
                    <div style="width: 270px; display: flex; align-items: center" class="form-check">
                        <div style="display: flex; align-items: center">
                            <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="adpapl_fNum" value="2" type="radio" id="couple">
                            <label class="form-check-label" for="couple" style="font-size: 17px; margin-left: 10px;">2인 가구</label>
                        </div>
                    </div>
                    <div style="width: 270px; display: flex; align-items: center" class="form-check">
                        <div style="display: flex; align-items: center">
                            <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="adpapl_fNum" value="3" type="radio" id="plusbaby">
                            <label class="form-check-label" for="plusbaby" style="font-size: 17px; margin-left: 10px;">3인 가구</label>
                        </div>
                    </div>
                </div>
                <!-- 다음줄 -->
                <div style="margin-top: 15px; display: flex; align-items: center">
                    <div style="width: 270px; display: flex; align-items: center" class="form-check">
                        <div style="display: flex; align-items: center">
                            <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="adpapl_fNum" value="4" type="radio" id="plusbaby2">
                            <label class="form-check-label" for="plusbaby2" style="font-size: 17px; margin-left: 10px;">4인 가구</label>
                        </div>
                    </div>

                    <div style="width: 270px; display: flex; align-items: center" class="form-check">
                        <div style="display: flex; align-items: center">
                            <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="adpapl_fNum" value="5" type="radio" id="bigfamily">
                            <label class="form-check-label" for="bigfamily" style="font-size: 17px; margin-left: 10px;">5인 가구 이상</label>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <!-- 가족구성원 직업 여부 -->
            <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                <p style="font-size: 17px; font-weight: 600; color: #555555">
                        본인을 포함한 가족구성원 직업 여부 <span style="color: #71A2FF">*</span>
                </p>
                <p><span id="ADPAPL_job_check" style="color: skyblue"></span></p>
                <div style="margin-top: 31px; display: flex; align-items: center;">
                    <div style="width: 270px">
                        <div style="display: flex; align-items: center" class="form-check">
                            <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                                    <input class="form-check-input" name="ADPAPL_job" value="1" type="radio" name="smokingStatus" id="smoker">
                            <label class="form-check-label" for="smoker" style="font-size: 17px; margin-left: 10px" >
                                    네, 직업이 있어요.
                            </label>
                        </div>
                    </div>
                    <div style="width: 270px">
                        <div style="display: flex; align-items: center" class="form-check">
                            <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                            <input class="form-check-input" name="ADPAPL_job" value="1" type="radio" name="smokingStatus" id="nonsmoker">
                            <label class="form-check-label" for="nonsmoker" style="font-size: 17px; margin-left: 10px ">
                                    아니오, 직업이 없습니다.
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<section style="background-color: #FAFAFB">
<div style="width: 1000px; margin: 0px auto; padding-top: 84px" >
    <p style="font-size: 27px; font-weight: 600; color: #555555">2.반려 경험/경력</p>
    <div style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
        <p style="font-size: 17px; font-weight: 600; color: #555555; text-align: left; margin-left: 25px">
                반려동물을 반려한(키운) 경험 여부 <span style="color: #71A2FF">*</span>
        </p>
        <p style="margin-top: 10px; text-align: left; margin-left: 25px">
                성인되기 전 가족과 키우던 경험은 제외하여 정확하게 기재 바랍니다.<br />햄스터 등 다른
                반려동물은 제외, 고양이, 강아지 반려기간만 체크해 주세요.
        </p>
        <div style="margin-top: 34px; display: flex; align-items: left">
            <div style="width: 270px">
                <!-- 1.10년이상 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_exp" value="1" type="radio" id="yes">
                    <label class="form-check-label" for="yes" style="font-size: 17px; margin-left: 5px">
                    있다 </label>
                </div>
            </div>
            <div style="width: 270px">
                <!-- 2.5년이상-10년미만 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_exp" value="0" type="radio" id="no">
                    <label class="form-check-label" for="no" style="font-size: 17px; margin-left: 5px">
                    없다
                    </label>
                </div>
            </div>
            <p><span id="ADPAPL_exp_check" style="color: skyblue"></span></p>
        </div>
        <br>
        <br>
        <p style="font-size: 17px; font-weight: 600; color: #555555; text-align: left; margin-left: 25px">
                반려동물을 반려한(키운) 총 기간
        </p>
        <p style="margin-top: 10px; text-align: left; margin-left: 25px">
                발려동물을 반려한(키운) 경험이 있는 사람만 기재 바랍니다. <br />
                성인되기 전 가족과 키우던 기간은 제외하여 정확하게 기재 바랍니다.<br />햄스터 등 다른
                반려동물은 제외, 고양이, 강아지 반려기간만 체크해 주세요.
        </p>
        <div style="margin-top: 34px; display: flex; align-items: center">
            <div style="width: 270px">
                <!-- 1.10년이상 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_havepet" value="10년 이상" type="radio" id="10y">
                    <label class="form-check-label" for="10y" style="font-size: 17px; margin-left: 5px">
                    10년 이상
                    </label>
                </div>
                    
            </div>
            <div style="width: 270px">
                <!-- 2.5년이상-10년미만 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_havepet" value="5년 이상 - 10년 미만" type="radio" id="5to10y">
                    <label class="form-check-label" for="5to10y" style="font-size: 17px; margin-left: 5px">
                    5년 이상 - 10년 미만
                    </label>
                </div>
                    
            </div>
            <div style="width: 270px">
                <!-- 3.1년이상-5년미만 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_havepet" value="1년 이상 - 5년 미만" type="radio" id="1to5y">
                    <label class="form-check-label" for="1to5y" style="font-size: 17px; margin-left: 5px">
                    1년 이상 - 5년 미만
                    </label>
                </div>
            </div>
        </div>
        <div style="margin-top: 15px; display: flex; align-items: center">
            <div style="width: 270px">
                <!-- 4.1년미만 -->
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_havepet" value="1년 미만" type="radio" id="1y">
                    <label class="form-check-label" for="1y" style="font-size: 17px; margin-left: 5px">
                    1년 미만
                    </label>
                </div>
            </div>
            <div style="width: 270px">
                <div style="display: flex; align-items: center" class="form-check">
                    <div style="background-image: url(/static/images/applyform/radio_unchecked.png); width: 21px; height: 21px; background-size: contain; margin-right: 12px"></div>
                    <input class="form-check-input" name="ADPAPL_havepet" value="반려 경험 없음" type="radio" id="noExperience">
                    <label class="form-check-label" for="noExperience" style="font-size: 17px; margin-left: 5px">
                    반려 경험 없음
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<!-- 3. 정보제공동의 및 확인 -->
<section style="background-color: #FAFAFB; padding-bottom: 208px">
<div style="width: 1000px; margin: 0px auto; padding-top: 84px">
    <p style="font-size: 27px; font-weight: 600; color: #555555">3. 정보제공동의 및 확인</p>
    <div style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; margin-top: 46px">
        <p style="font-size: 17px; font-weight: 600; color: #555555"> 동의 사항 <span style="color: #71A2FF">*</span>
        </p>
        <div style="margin-top: 26px">
            <!-- 개인정보 수집동의 -->
            <div style="display: flex; align-items: center; margin-top: 55px" class="form-check;">
                <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault" style="font-size: 17px; color: #555555; margin-left: 5px">
                개인정보 수집/이용에 동의합니다
                </label>
            </div>
        </div>
        <div style="margin-top: 26px">
            <!-- 본인작성 사실 확인 -->
            <div style="display: flex; align-items: center" class="form-check">
                <div style="background-image: url(/static/images/applyform/unchecked.png); width: 21px; height: 21px; min-width: 21px; background-size: contain; margin-right: 12px"></div>
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                <label class="form-check-label" for="flexCheckDefault1" style="font-size: 17px; color: #555555; margin-left: 5px">
                지원서에 기재된 내용은
                        모두 본인이 작성하였으며, 사실과 다름 없음을 확인했습니다
                </label>
            </div>
            <p style="font-size: 15px; color: #999999; margin-left: 32px; margin-top: 10px">*
            사실과 다를 경우, 합격이 취소될 수 있습니다.</p>
        </div>
	</div>
    <div style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
       	<div style="width: 270px; height: 70px; background-color: #71A2FF; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer; vertical-align: middle; margin-right: 12px">
       	<p style="font-size: 20px; font-weight: 600; color: white; " >
       	<button id="checkFrm" style="background-color: #71A2FF;font-size: 20px; font-weight: 600; color: white;border: none;" type="button" >최종 제출</button></p>
       	</div>
		<div style="width: 270px; height: 70px; background-color: #FFA500; border-radius: 5px; display: flex; justify-content: center; align-items: center; cursor: pointer; vertical-align: middle; margin-right: 12px">
		<button type="button" style="background-color: #FFA500; font-size: 20px; font-weight: 600; color: white;border: none;" class="home" onclick="location.href='/PetsFinder'">신청 취소<br/>(메인페이지로 돌아가기)</button >
		</div>
   	</div>
</div>
</section>
</div>
</div>
</div>
</div>
</form>
<jsp:include page="../common/foot.jsp" />
</body>
</html>