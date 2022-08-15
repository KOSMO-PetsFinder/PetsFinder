<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    a {
        text-decoration: none;
    }
    .ad_plus {
        display: flex; 
        justify-content: center;
        align-items: center; 
        background-color: #75c9ba; 
        color: white; 
        margin: 10px 20px 40px 0; 
        border-radius: 26px; 
        width: 300px; 
        height: 60px; 
      }
</style>
<body>
    <div style="display: flex;justify-content: space-around;">
        <div style="display: flex;flex-direction: row;justify-content: space-between; width: 1200px;align-items: center;margin-top: 500px; ">
            <div>
                <h1>주문/결제</h1>
            </div>
            <div>
                <h3>장바구니 > 주문/결제 > 완료</h3>
            </div>        
        </div>
    </div>
    <hr>
    <div style="display: flex;justify-content: space-around;">
        <table>
            <colgroup>
                <col width="500">
                <col width="130">
                <col width="120">
                <col width="90">
                <col width="110">
            </colgroup>
            <thead style="background-color: rgb(192, 245, 238);height: 60px;">
                <tr >
                    <th>상품정보</th>
                    <th>판매자</th>
                    <th>배송비</th>
                    <th>수량</th>
                    <th>할인</th>
                    <th>상품금액(할인포함)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div style="display: flex;flex-direction: row;justify-content: center; margin-top: 30px;margin-bottom: 30px;">
                            <a href="#">
                               <img style="border-radius: 100%;" width="100px;" height="100px;" src="../images/${productDTO.photo[0] }" alt="">    
                            </a>
                            <div style="display: flex;flex-direction:column;justify-content: center; padding-left: 40px;">
                                <div style="color: gray;font-size: 16px;">[펫스파인더]${productDTO.product_category }</div>
                                <div style="font-size: 20px;">${productDTO.product_name }</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                            <a style="color: gray;" href="#">
                                PetsFinder
                            </a>   
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                                2,500원
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                                ${buyOrCartDTO.product_quanity }
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                                (-) 1,000원
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;flex-direction: column;align-items: center;">
                                <div style="">
                                    <del>${buyOrCartDTO.amount }</del>
                                </div>
                                <div>9,000원</div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        
    </div>
    <hr>
    <div style="display: flex;justify-content: space-around;">
        <div style="display: flex;flex-direction: row;justify-content: space-between; width: 1200px;align-items: center;">
            <div style="width: 70%;">
                <!-- 배송지 정보 -->
                <div>
                    <h2>
                        배송지 정보
                    </h2>
                    <div style="display: flex; margin-top: 20px;">
                        <div style="width: 110px;font-size: 20px;font-weight: bold;">
                            배송지 선택
                        </div>
                        <div style="margin-left: 30px;">
                            <input type="radio" name="shipaddr" id="shipaddr">기본배송지
                            <input type="radio" name="shipaddr" id="shipaddr">신규배송지
                            <button>배송지 목록</button>
                        </div>
                    </div>
                    <div style="display: flex; margin-top: 20px;">
                        <div style="width: 110px;font-size: 20px;font-weight: bold;">
                            수령인
                        </div>
                        <div style="margin-left: 30px;">
                            <input type="text">
                        </div>
                    </div>
                    <div style="display: flex; margin-top: 20px;">
                        <div style="width: 110px;font-size: 20px;font-weight: bold;">
                            연락처
                        </div>
                        <div style="margin-left: 30px;">
                            <input type="text" size="3">-
                            <input type="text" size="3">-
                            <input type="text" size="3">
                        </div>
                    </div>
                    <div style="display: flex; margin-top: 20px;">
                        <div style="width: 110px;font-size: 20px;font-weight: bold;">
                            배송지 주소
                        </div>
                        <div style="margin-left: 30px;">
                            <input type="text" size="3"> <button>우편번호</button>
                            <div style="margin-top: 10px;">
                                <input type="text" size="30">
                                <input type="text" size="30">
                            </div>
                        </div>
                    </div>
                    <div style="display: flex; margin-top: 20px;">
                        <div style="width: 110px;font-size: 20px;font-weight: bold;">
                            배송지
                        </div>
                        <div style="margin-left: 30px;">
                            서울특별시 금천구 가산디지털2로 123 월드메르디앙벤처센터II 4층 413호 
                        </div>
                    </div>
                </div>
            </div>
        <!-- 주문자 정보, 결제 상세 -->
        <div style="width: 30%; background-color: rgb(236, 228, 228); height: 100%;padding-left: 15px;">
            <div style="font-size: 30px; font-weight: bold; margin-bottom: 10px; padding-top: 30px;">주문자 정보</div>
            <div style="margin-bottom: 5px;">홍길동</div>
            <div style="margin-bottom: 5px;">010-1111-2222</div>
            <div style="margin-bottom: 50px;">gildong@naver.com</div>
            <div style="font-size: 30px; font-weight: bold; margin-bottom: 10px; padding-top: 30px;">결제 상세</div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold;">주문금액</div>
                <div style="padding-right: 30px;font-size: 20px;font-weight: bold;">11,500원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└상품금액</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">10,000원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└배송비</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">2,500원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└할인</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">1,000원</div>
            </div>

        </div>        
        </div>
    </div>
    <hr>
    <div style="display: flex;justify-content: space-around;margin-top: 30px;">
        <a class="ad_plus" href="javascript:moreList();"  >
            <p style="font-size: 18px; margin-bottom: 12px; font-weight: bold; color: white">결제하기</p>
        </a>

    </div>



    <br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>