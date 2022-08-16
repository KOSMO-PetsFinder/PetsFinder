<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script type="text/javascript">
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp81376814"); // 예: imp00000000
	</script>
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
            	<c:forEach items="${payList }" var="row">
                <tr>
                    <td>
                        <div style="display: flex;flex-direction: row;justify-content: center; margin-top: 30px;margin-bottom: 30px;">
                            <a href="#">
                               <img style="border-radius: 100%;" width="100px;" height="100px;" src="<c:url value='/'/>Uploads/${row.product_photo }" alt="">    
                            </a>
                            <div style="display: flex;flex-direction:column;justify-content: center; padding-left: 40px;">
                                <div style="color: gray;font-size: 16px;">[펫스파인더]${row.product_cate }</div>
                                <div style="font-size: 20px;">${row.product_name }</div>
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
                                ${row.deliveryCharge }원
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                                ${row.product_quanity }
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;justify-content: center;">
                                (-) ${row.discount }원
                        </div>
                    </td>
                    <td>
                        <div style="display: flex;flex-direction: column;align-items: center;">
                                <div style="">
                                    <del>${row.product_price*row.product_quanity }원</del>
                                </div>
                                <div>${row.amount }원</div>
                        </div>
                    </td>
                </tr>
                </c:forEach>
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
            <div style="margin-bottom: 5px;">${memberSDTO.member_name }</div>
            <div style="margin-bottom: 5px;">${memberSDTO.member_phone }</div>
            <div style="margin-bottom: 50px;">${memberSDTO.member_email }</div>
            <div style="font-size: 30px; font-weight: bold; margin-bottom: 10px; padding-top: 30px;">결제 상세</div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold;">주문금액</div>
                <div style="padding-right: 30px;font-size: 20px;font-weight: bold;">${payInfoDTO.amount }원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└상품금액</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">${payInfoDTO.product_price }원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└배송비</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">${payInfoDTO.deliveryCharge }원</div>
            </div>
            <div style="margin-bottom: 5px; display: flex;justify-content: space-between;">
                <div style="width: 110px;font-size: 20px;font-weight: bold; color: rgb(209, 198, 198);">└할인</div>
                <div style="padding-right: 30px; color: rgb(209, 198, 198);font-size: 20px;font-weight: bold;">${payInfoDTO.discount }원</div>
            </div>

        </div>        
        </div>
    </div>
    <hr>
    <div style="display: flex;justify-content: space-around;margin-top: 30px;">
        <a class="ad_plus" href="#" id="pay" >
            <p style="font-size: 18px; margin-bottom: 12px; font-weight: bold; color: white">결제하기</p>
        </a>

    </div>



    <br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br>
     <script type="text/javascript">
$(document).ready(function(){
	   var pay = 0; // 받은 쿠폰 갯수?
	   console.log(pay);
	   	  
		var IMP = window.IMP;
		var code = "imp81376814"; //가맹점 식별코드
		IMP.init(code);
		
		$("#pay").click(function(e){
			//결제요청
			IMP.request_pay({
				//name과 amout만있어도 결제 진행가능
				pg : 'tosspay',  //pg사 선택 (kakao, kakaopay 둘다 가능)
				pay_method: 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '상품', // 상품명
				amount : 2, //가격 
				buyer_email : '구매자이메일',
				buyer_name : '구매자이름',
				buyer_tel : '구매자전화번호',  //필수항목
				//결제완료후 이동할 페이지 kko나 kkopay는 생략 가능
				//m_redirect_url : 'https://localhost:8080/payments/complete'
			}, function(rsp){
				if(rsp.success){//결제 성공시
					var msg = '결제가 완료되었습니다';
					var result = {
					"imp_uid" : rsp.imp_uid, //영수증 아이디
					"merchant_uid" : rsp.merchant_uid, //상품 아이디
					"biz_email" : '비스니스메일', //우리 이메일
					"pay_date" : new Date().getTime(), // 결제일
					"amount" : rsp.paid_amount, //가격.
					"card_no" : rsp.apply_num, //카드번호
					"refund" : 'payed' //결제상태
					//판매자, 결제방식, 사용자정보, 상품명 추가 .. 
					}
					console.log("결제성공 " + msg);
					$.ajax({
						url : './insertPayCoupon.do', 
				        type :'POST',
				        data : JSON.stringify(result,
				        		['imp_uid', 'merchant_uid', 'biz_email', 
				        			'pay_date', 'amount', 'card_no', 'refund']),
				        contentType:'application/json;charset=UTF-8',
				        dataType: 'json', //서버에서 보내줄 데이터 타입
				        success: function(res){
				          if(res == 1){
							 console.log("추가성공");	
							 pay += 5;
							 $('#pay_coupon').html(pay);			           
				          }else{
				             console.log("Insert Fail!!!");
				          }
				        },
				        error:function(){
				          console.log("Insert ajax 통신 실패!!!");
				        }
					}) //ajax
				}
				else{//결제 실패시
					var msg = '결제에 실패했습니다';
					msg += '에러 : ' + rsp.error_msg
				}
				console.log(msg);
			});//pay
		}); //check1 클릭 이벤트
		 
	}); //doc.ready
  </script>
</body>
</html>