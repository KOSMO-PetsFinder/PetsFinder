<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
                                    <!-- <h2 style="font-size: 50px; font-weight: 600; color: #555555">
										신고하기</h2> -->
                                </div>
                            </section>
                            <section style="background-color: #FAFAFB; margin-top: 102px">
                                <form name="petsitterFrm" action="./petsitterRegist" method="POST" enctype="multipart/form-data">
                                    <div style="width: 1000px; margin: 0px auto; padding-top: 95px">
                                        <h1 style=" color: #264a8f;">시터 마이페이지</h1>
                                        <!-- <p style="font-size: 27px; font-weight: 500; color: #555555">1.
                                            기본 정보</p> -->
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
                                                <script>
                                                	var tag = "";
                                                </script>
                                                <c:forEach items="${ tags }" var="t" varStatus="loop">
                                                <script>
                                                	tag += '# ${ t } ';
                                                </script>
                                                </c:forEach>
                                                <script>
                                                	$(function() {
                                                		$('#tag').val(tag)
                                                	})
                                                </script>
                                                <div
                                                    style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-right: 40px">
                                                    <p style=" font-weight: 600; color: #555555">
                                                        태그
                                                    </p>
                                                    <div style="margin-top: 15px">
                                                        <input class="form-control" type="text" name="typTag_type" id="tag"
                                                            style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                                                    </div>
                                                </div>
                                            </div>
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
                                                        <div style="margin-top: 15px">
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
                                                        	var service = "#check"
                                                        </script>
                                                        <c:forEach items="${ services }" var="s" varStatus="loop">
                                                       	<script>
                                                       		$(function() {
                                                       			$('#check${s.typsrv_idx}')
                                                       		})
                                                       	</script>
                                                        </c:forEach>
                                                        <div
                                                            style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                                                            <p style=" font-weight: 600; color: #555555">
                                                                이용가능 서비스 <span style="color: #71A2FF">*</span>
                                                            </p>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check1" name="option1"
                                                                        value="play" >
                                                                    <label class="form-check-label" for="check1" style="font-size:17px;">실내놀이(터그놀이, 노즈워크
                                                                        등)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check2" name="option2"
                                                                        value="walk" >
                                                                    <label class="form-check-label" for="check2" style="font-size:17px;">매일산책(산책 및 실외 배변
                                                                        가능)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check3" name="option3" value="emergency"
                                                                        >
                                                                    <label class="form-check-label" for="check3" style="font-size:17px;">응급처치(응급시 병원 이동
                                                                        가능)</label>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check4" name="option4"
                                                                        value="pickup" >
                                                                    <label class="form-check-label" for="check4" style="font-size:17px;">집앞 픽업(비용은 협의)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check5" name="option5"
                                                                        value="hair" >
                                                                    <label class="form-check-label" for="check5" style="font-size:17px;">모발관리(눈물 또는 빗질관리 가능)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check6" name="option6" value="pills"
                                                                        >
                                                                    <label class="form-check-label" for="check6" style="font-size:17px;">약물 복용(경구(입)복용 가능)</label>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; padding-bottom: 5px;">
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check7" name="option7"
                                                                        value="bath" >
                                                                    <label class="form-check-label" for="check7" style="font-size:17px;">목욕 가능(비용은 협의)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check8" name="option8"
                                                                        value="longcare" >
                                                                    <label class="form-check-label" for="check8" style="font-size:17px;">장기예약(14일 이상)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check9" name="option9" value="oldcare"
                                                                        >
                                                                    <label class="form-check-label" for="check9" style="font-size:17px;">노견케어(8년이상)</label>
                                                                </div>
                                                                <div class="form-check" style="margin-right: 10px;">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="check10" name="option10" value="puppycare"
                                                                        >
                                                                    <label class="form-check-label" for="check10" style="font-size:17px;">퍼피케어(1년미만의 퍼피)</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                                                            <p style=" font-weight: 600; color: #555555">
                                                                메인사진 <span style="color: #71A2FF">*</span>
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
                                                        <p style="font-size: 20px; padding-top: 16px; font-weight: 500; color: white" onclick="petsitterSubmit();">작성 완료
                                                        </p>
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