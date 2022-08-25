package petsfinder.shop;

import java.sql.Date;

public class PayDTO {

	private int payment_idx; //결제 일련번호(주문번호)
	private int amount; //가격
	private String payStus; //결제상태(결제->pay, 환불->rfn)
	private Date pay_date; //결제일
	private String productname; //상품명
	private int member_idx; //회원번호
	private int shiplocInfo_idx; //배송지 일련번호
	private String recipient; //수령인
	private String recipient_phone; //수령인 연락처
	private String shipping_location; // 배송지
	private String delivery_status; //배송상태 (prp: 배송준비, dlv:배송중, cmp:배송완료)
	private int sales_idx; //판매내역 일련번호
	private int product_idx;
	private int product_quanity;
	private String product_name; //product테이블의 상품명
	
	
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_quanity() {
		return product_quanity;
	}
	public void setProduct_quanity(int product_quanity) {
		this.product_quanity = product_quanity;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getSales_idx() {
		return sales_idx;
	}
	public void setSales_idx(int sales_idx) {
		this.sales_idx = sales_idx;
	}
	public int getPayment_idx() {
		return payment_idx;
	}
	public void setPayment_idx(int payment_idx) {
		this.payment_idx = payment_idx;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPayStus() {
		return payStus;
	}
	public void setPayStus(String payStus) {
		this.payStus = payStus;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getShiplocInfo_idx() {
		return shiplocInfo_idx;
	}
	public void setShiplocInfo_idx(int shiplocInfo_idx) {
		this.shiplocInfo_idx = shiplocInfo_idx;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}
	public String getShipping_location() {
		return shipping_location;
	}
	public void setShipping_location(String shipping_location) {
		this.shipping_location = shipping_location;
	}
	public String getDelivery_status() {
		return delivery_status;
	}
	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
	}
	
	
	
	
}
