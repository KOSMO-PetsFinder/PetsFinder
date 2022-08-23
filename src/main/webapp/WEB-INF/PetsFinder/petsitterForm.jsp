<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta charSet="utf-8" />
    <title>Pets Finder</title>
    <style>
        * {
            font-family: 'BM JUA_TTF';
        }

        p {
            font-size: 19px;
        }
    </style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>

<body>
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS" height="0" width="0"
            style="display: none; visibility: hidden;"></iframe>
    </noscript>
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
                                </div>
                            </section>
                            <section style="background-color: #FAFAFB; margin-top: 102px">
                                <form name="petsitterFrm" action="./petsitterRegist" method="POST" enctype="multipart/form-data">
                                	<input type="hidden" name="sit_idx" value="${ s_info.sit_idx }"/>
                                    <div style="width: 1000px; margin: 0px auto; padding-top: 95px">
                                        <h1 style=" color: #264a8f;">시터 마이페이지</h1>
                                        <div
                                            style="background-color: white; border: 1px solid #EBEBEB; border-radius: 12px; padding: 80px; padding-bottom: 20px; margin-top: 46px">
                                            <div style="display: flex; align-items: center">
                                                <div
                                                    style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
                                                    <p style=" font-weight: 600; color: #555555">
                                                        한줄 소개 <span style="color: #71A2FF">*</span>
                                                    </p>
                                                    <div style="margin-top: 15px">
                                                        <input class="form-control" type="text" value="${ s_info.sit_title }" name="sit_title"
                                                            style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                                    </div>
                                                </div>
                                            </div>
                                            <script>
                                            	var tag = "";
                                            <c:forEach items="${ sit_tags }" var="t" varStatus="loop">
                                            	tag += '${ t }, ';
                                            </c:forEach>
                                            	$(function() {
                                            		$('#tag').val(tag)
                                            	})
                                            </script>
										 	<script src="https://unpkg.com/@yaireo/tagify"></script>
										    <!-- 폴리필 (구버젼 브라우저 지원) -->
										    <script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
										    <style>
										    
										    	.tagify{    
												  width: 100%;
												  max-width: 700px;
												}
										    	.tagify--outside{
											        --tag-bg: #75c9ba;
													--tag-hover: #ce0078;
													--tag-text-color: #fff;
													--tags-border-color: silver;
													--tag-text-color--edit: #111;
													--tag-remove-bg: var(--tag-hover);
													--tag-pad: 0.6em 1em;
													--tag-inset-shadow-size: 1.3em;
													--tag-remove-btn-bg--hover: black;
													display: inline-block;
													min-width: 0;
													border: none;
											    }
											 
											    .tagify--outside .tagify__input{
											      order: -1;
											      flex: 100%;
											      border: 1px solid #cccccc;
											      margin-bottom: 1em;
											      transition: .1s;
											    }
											 
											    .tagify--outside .tagify__input:hover{ border-color:var(--tagify-dd-color-primary); }
											    .tagify--outside.tagify--focus .tagify__input{
											      transition:0s;
											      border-color: var(--tagify-dd-color-primary);
											    }
										    	:root {
										    		--tagify-dd-color-primary: #75c9ba;
										    		--tagify-dd-bg-color: white;
										    		--tagify-dd-item-pad: .3em .5em;
										    	}
												.tagify--outside .tagify__tag {
												  margin-top: 0;
												}
												.tagify--outside .tagify__tag > div {
												  border-radius: 25px;
												  width: 120px;
												}
												.tagify--outside .tagify__tag__removeBtn {
												  opacity: 0;
												  transform: translateX(-6px) scale(0.5);
												  margin-left: -3ch;
												  transition: 0.12s;
												}
												.tagify--outside .tagify__tag:hover .tagify__tag__removeBtn {
												  transform: none;
												  opacity: 1;
												  margin-left: -1ch;
												}
												
										    </style>
                                            <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px; margin-top: 54px">
                                                <p style=" font-weight: 600; color: #555555">
                                                    태그
                                                </p>
                                               	<input name='tags-outside' class='tagify--outside' id="tag" placeholder='태그를 입력하세요'>
                                            </div>
											<script>
											
									      	var input = document.querySelector('.tagify--outside');
											var tagify = new Tagify(input, {
										    	whitelist : [
									        	<c:forEach items="${ tags }" var="t" varStatus="loop">
									        		'${ t }',
									        	</c:forEach>
									        	],
									      		userInput: false,
									      		dropdown: {
									      		    position: "input",
									      		    enabled : 0 // always opens dropdown when input gets focus
									      		},
										    })
											
										    </script>                                                
                                            
                                            <div style="display: flex; align-items: center; margin-top: 54px">
                                                <div
                                                    style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0">
                                                    <p style=" font-weight: 600; color: #555555">
                                                        소개글 <span style="color: #71A2FF">*</span>
                                                    </p>
                                                    <div style="margin-top: 15px">
                                                        <textarea class="form-control" name="sit_intro" id="sit_intro"
                                                            style="width: 100%; height: 230px; border: 1px solid #EBEBEB; border-radius: 5px; padding: 10px 20px 0 20px">${s_info.sit_intro }</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                                                <p style=" font-weight: 600; color: #555555">
                                                    이용요금 <span style="color: #71A2FF">*</span>
                                                </p>
                                                <div style="margin-top: 15px">
                                                    <p style=" font-size: 17px; font-weight: 600; color: #555555"> - 소형견
                                                        (7키로 미만)</p>
                                                    <div style="display: flex;">
                                                        <input class="form-control" type="text" value="${ s_info.s_fee }" name="s_fee"
                                                            placeholder="1박 케어"
                                                            style="width: 20%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                                    </div>
                                                    <div style="margin-top: 15px">
                                                        <p style=" font-size: 17px; font-weight: 600; color: #555555"> -
                                                            중형견 (7~14.9키로)</p>
                                                        <div style="display: flex;">
                                                            <input class="form-control" type="text" value="${ s_info.m_fee }" name="m_fee"
                                                                placeholder="1박 케어"
                                                                style="width: 20%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                                        </div>
                                                        <div style="margin-top: 45px">
                                                            <p
                                                                style=" font-size: 17px; font-weight: 600; color: #555555">
                                                                - 대형견 (15키로 이상)</p>
                                                            <div style="display: flex;">
                                                                <input class="form-control" type="text" value="${ s_info.b_fee }" name="b_fee"
                                                                    placeholder="1박 케어"
                                                                    style="width: 20%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                                            </div>
                                                            <!-- </div> -->
                                                        </div>
                                                        <script>
                                                        $(function () {
                                                        <c:forEach items="${ services }" var="s" varStatus="loop">
                                                        	var service = "check"
                                                       		service += ${ s }
                                                       		var se = document.getElementById(service)
                                                       		console.log(se.value)
                                                       		if(${s} == se.value) {
                                                       			se.setAttribute('checked', true)
                                                       		}
                                                        </c:forEach>
                                                        })
                                                       	</script>
                                                        <div
                                                            style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                                                            <p style=" font-weight: 600; color: #555555">
                                                                이용가능 서비스 <span style="color: #71A2FF">*</span>
                                                            </p>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check1" name="option1"
                                                                        value="1" >
                                                                    <label class="form-check-label" for="check1" style="font-size:17px;">실내 놀이(터그놀이, 노즈워크
                                                                        등)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check2" name="option2"
                                                                        value="2" >
                                                                    <label class="form-check-label" for="check2" style="font-size:17px;">매일 산책(산책 및 실외 배변
                                                                        가능)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check3" name="option3" value="3"
                                                                        >
                                                                    <label class="form-check-label" for="check3" style="font-size:17px;">응급처치(응급시 병원 이동
                                                                        가능)</label>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check4" name="option4"
                                                                        value="4" >
                                                                    <label class="form-check-label" for="check4" style="font-size:17px;">집앞 픽업(비용은 펫시터와 협의)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check5" name="option5"
                                                                        value="5" >
                                                                    <label class="form-check-label" for="check5" style="font-size:17px;">모발 관리(눈물 또는 빗질 관리 가능)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check6" name="option6" value="6"
                                                                        >
                                                                    <label class="form-check-label" for="check6" style="font-size:17px;">약물 복용(경구(입)약물 복용 가능)</label>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check7" name="option7"
                                                                        value="7" >
                                                                    <label class="form-check-label" for="check7" style="font-size:17px;">목욕 가능(비용은 펫시터와 협의)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check8" name="option8"
                                                                        value="8" >
                                                                    <label class="form-check-label" for="check8" style="font-size:17px;">장기 예약(14일 이상 돌봄 가능)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check9" name="option9" value="9"
                                                                        >
                                                                    <label class="form-check-label" for="check9" style="font-size:17px;">노견 케어(8년 이상 노견 돌봄 가능)</label>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                           		<div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check10" name="option10" value="10"
                                                                        >
                                                                    <label class="form-check-label" for="check10" style="font-size:17px;">퍼피 케어(1년 미만 퍼피 돌봄 가능)</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                                                            <p style=" font-weight: 600; color: #555555">
                                                                메인사진 (첫번째로 첨부한 사진이 메인 사진으로 등록됩니다.) <span style="color: #71A2FF">*</span>
                                                            </p>
                                                            <input class="form-control" type="file" name="ofile" multiple>
                                                        </div>
                                                    </div>
                                                </div>
                                 				<script type="text/javascript">
													function petsitterSubmit() {
														document.petsitterFrm.submit();
													}
												</script>
                                                <div
                                                    style="margin-top: 80px; display: flex; align-items: center; justify-content: center">
                                                    <div
                                                        style="width: 250px; height: 60px; background-color: #264a8f; border-radius: 5px; display: flex; justify-content: center; cursor: pointer">
                                                        <p style="font-size: 20px; padding-top: 16px; font-weight: 500; color: white" onclick="petsitterSubmit();">작성 완료</p>
                                                    </div>
                                                </div>
											</div>
										</div>
									</div>
                                </form>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>
</body>

</html>