<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
    />
    <meta charset="utf-8" />
    <title>Pets Finder</title>
    <style>
      * {
        font-family: "BM JUA_TTF";
      }

      p {
        font-size: 19px;
      }
    </style>
    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
  </head>
<!-- 
유기동물 발생장소 
유기동물 접수일 date 
유기동물 중성화 여부(0/1) 
유기동물 상태 입양/보호(adopt,prtct) 
유기동물 사진 
유기동물 나이 
유기동물 예방접종 유무(0/1) 
유기동물 특징 
-->
<script>
 /*  function checkForm(fm) {
    var abani_species = document.abandonedAnimalFrm.abani_species;
    if(!abani_species) {
   	  abani_species_check.style.color = 'red'
   	  abani_species_check.innerHTML = "제목을 입력하세요!"
      fm.abani_species.focus();
      return false;
    }  
  } */
</script>
  <body>
    <noscript>
      <iframe
        src="https://www.googletagmanager.com/ns.html?id=GTM-PDQCPDS"
        height="0"
        width="0"
        style="display: none; visibility: hidden"
      ></iframe>
    </noscript>
    <div id="__next">
      <div>
        <div>
          <div class="wrapper">
            <header id="hd"></header>
            <div id="applyform-container">
              <div class="desktop hidden-s">
                <section style="width: 100%">
                  <div style="width: 1000px; margin: 0px auto">
                    <!-- <h2 style="font-size: 50px; font-weight: 600; color: #555555">
										신고하기</h2> -->
                  </div>
                </section>
                <section style="background-color: #fafafb; margin-top: 102px">
                  <form
                    id="abandonedAnimalFrm"
                    name="abandonedAnimalFrm"
                    action="./abandonedAnimalRegistration.do"
                    method="POST"
                    onsubmit="return checkForm();"
                  >
                    <div
                      style="width: 1000px; margin: 0px auto; padding-top: 95px"
                    >
                      <h1 style="color: #264a8f">유기동물 등록</h1>
                      <!-- <p style="font-size: 27px; font-weight: 500; color: #555555">1.
                                            기본 정보</p> -->
                      <div
                        style="
                          background-color: white;
                          border: 1px solid #ebebeb;
                          border-radius: 12px;
                          padding: 80px;
                          padding-bottom: 20px;
                          margin-top: 46px;
                        "
                      >
                        <div style="display: flex; align-items: center">
                          <div
                            style="
                              display: flex;
                              flex-direction: column;
                              flex-grow: 1;
                              flex-basis: 0;
                              margin-right: 40px;
                            "
                          >
                            <p style="font-weight: 600; color: #555555">
                              종 / 품종 <span style="color: #71a2ff">*</span>
                            </p>
                            <div style="margin-top: 15px">
                              <select name="abani_species" id="abani_species">
                                <option value="">종</option>
                                <option value="cat">고양이</option>
                                <option value="dog">강아지</option>
                              </select>
                              <input type="text" name="abani_kind" id="abani_kind">
                            </div>
                          </div>

                          <div
                            style="
                              display: flex;
                              flex-direction: column;
                              flex-grow: 1;
                              flex-basis: 0;
                              margin-right: 40px;
                            "
                          >
                            <p style="font-weight: 600; color: #555555">성별</p>
                            <script>
                              function selectFemale() {
                                      $('input[name=abani_gender1]').attr('value',"F");
                              }
                              function selectMale() {
                                      $('input[name=abani_gender1]').attr('value',"M");
                              }
                      </script>
                      <div style="display: flex; margin-top: 15px">
                              <div
                                      style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                      <!-- 여성버튼 -->	
                                      <input onclick="selectFemale();" id="female" type="button" value="암컷" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                              </div>
                              <div style="width: 10px"></div>
                              <div
                                      style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                      <!-- 남성버튼 -->
                                      <input onclick="selectMale();" type="button" id="male" value="수컷" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                              </div>
                              <input type="hidden" id="abani_gender1" name="abani_gender1" value="">
                      </div>
                      <div style="margin-top: 5px;">
                      <p><span id="ADPAPL_gender_check" style="color: skyblue"></span></p>
                      </div>
                          </div>
                        </div>
                        <div style="display: flex; align-items: center">
                          <div
                          style="
                            display: flex;
                            flex-direction: column;
                            flex-grow: 1;
                            flex-basis: 0;
                            margin-right: 40px;
                          "
                        >
                          <p style="font-weight: 600; color: #555555">중성화 여부</p>
                          <script>
                            function selectNeut1() {
                                    $('input[name=abani_neut]').attr('value',1);
                            }
                            function selectNeut0() {
                                    $('input[name=abani_neut]').attr('value',0);
                            }
                    </script>
                    <div style="display: flex; margin-top: 15px">
                            <div
                                    style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                    <input onclick="selectNeut1();" type="button" value="중성화O" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                            </div>
                            <div style="width: 10px"></div>
                            <div
                                    style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                    <input onclick="selectNeut0();" type="button" value="중성화X" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                            </div>
                            <input type="hidden" id="abani_neut" name="abani_neut" value="">
                    </div>
                    <div style="margin-top: 5px;">
                    <p><span id="ADPAPL_gender_check" style="color: skyblue"></span></p>
                    </div>
                        </div>
                        <div
                        style="
                          display: flex;
                          flex-direction: column;
                          flex-grow: 1;
                          flex-basis: 0;
                          margin-right: 40px;
                        "
                      >
                        <p style="font-weight: 600; color: #555555">예방접종 여부</p>
                        <script>
                          function selectVaccin1() {
                                  $('input[name=abani_vaccin]').attr('value',"1");
                          }
                          function selectVaccin0() {
                                  $('input[name=abani_vaccin]').attr('value',"0");
                          }
                  </script>
                  <div style="display: flex; margin-top: 15px">
                          <div
                                  style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                  <input onclick="selectVaccin1();" type="button" value="예방접종O" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                          </div>
                          <div style="width: 10px"></div>
                          <div
                                  style="display: flex; justify-content: center; align-items: center; border: 1px solid #EBEBEB; border-radius: 5px; flex-grow: 1; flex-basis: 0; height: 50px">
                                  <input onclick="selectVaccin0();" type="button" value="예방접종X" class="btn btn-default"  style="position: absolute; font-size: 17px; color: #333333;  width: 190px;">
                          </div>
                          <input type="hidden" id="abani_vaccin" name="abani_vaccin" value="">
                  </div>
                  <div style="margin-top: 5px;">
                  <p><span id="ADPAPL_gender_check" style="color: skyblue"></span></p>
                  </div>
                      </div>
                      </div>
                        <div style="display: flex; align-items: center">
                        <div
                      style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                      <p style="font-size: 17px; font-weight: 600; color: #555555">
                              발생 장소 <span style="color: #71A2FF">*</span>
                      </p>
                      <div style="margin-top: 15px">
                              <input type="text" id="abani_loc" name="abani_loc" value="" placeholder="예) 서울시 강남구 논현동"
                                      style="width: 100%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                      </div>
                      <p><span id="abani_loc_check" style="color: skyblue"></span></p>
                        </div>
                        <div
                      style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px;margin-left: 10px;">
                      <p style="font-size: 17px; font-weight: 600; color: #555555">
                              접수일 <span style="color: #71A2FF">*</span>
                      </p>
                      <div style="margin-top: 15px">
                              <input type="text" id="abani_regdate" name="abani_regdate" value="" placeholder="예) 2021-01-01"
                                      style="width: 60%; height: 50px; border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px" />
                      </div>
                      <p><span id="abani_regdate_check" style="color: skyblue"></span></p>
                        </div>
                      </div>

                      <div style="display: flex; align-items: center">
                      <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px">
                        <p style="font-size: 17px; font-weight: 600; color: #555555">
                          사진 
                        </p>
                        <input class="form-control" type="text" id="abani_photo" name="abani_photo">
                      </div>
                      <div style="display: flex; flex-direction: column; flex-grow: 1; flex-basis: 0; margin-top: 54px; margin-left: 10px;;">
                        <p style="font-size: 17px; font-weight: 600; color: #555555">
                          나이 
                        </p>
                        <input class="form-control" type="input" id="abani_age" name="abani_age" style="width: 60%;">
                      </div>
                      </div>


                        <div
                        style="
                        display: flex;
                        align-items: center;
                        margin-top: 54px;
                        "
                        >
                        <div
                            style="
                              display: flex;
                              flex-direction: column;
                              flex-grow: 1;
                              flex-basis: 0;
                            "
                          >
                            <p style="font-weight: 600; color: #555555">
                              특징 <span style="color: #71a2ff">*</span>
                            </p>
                            <div style="margin-top: 15px">
                              <textarea
                                class="form-control"
                                name="abani_char"
                                id="abani_char"
                                style="
                                  width: 100%;
                                  height: 230px;
                                  border: 1px solid #ebebeb;
                                  border-radius: 5px;
                                  padding: 10px 20px 0 20px;
                                "
                              ></textarea
                              >
                            </div>
                          </div>
                        </div>
                          <div
                            style="
                              margin-top: 80px;
                              display: flex;
                              align-items: center;
                              justify-content: center;
                            "
                          >
                            <div
                              style="
                                width: 250px;
                                height: 60px;
                                background-color: #264a8f;
                                border-radius: 5px;
                                display: flex;
                                justify-content: center;
                                cursor: pointer;
                              "
                            >
                            <script type="text/javascript">
								function checkForm() {
									document.abandonedAnimalFrm.submit();
								}
							</script>
                              <p
                                style="
                                  font-size: 20px;
                                  padding-top: 16px;
                                  font-weight: 500;
                                  color: white;
                                "
                                onclick="checkForm();"
                              >
                                작성 완료
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
