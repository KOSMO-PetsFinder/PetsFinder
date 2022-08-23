package petsfinder.shop;
//payInfoDTO
public class PayInfoDTO {
	private int amount;//주문금액
	private int product_price;//상품금액
	private int deliveryCharge;//배송비
	private int discount;//할인
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getDeliveryCharge() {
		return deliveryCharge;
	}
	public void setDeliveryCharge(int deliveryCharge) {
		this.deliveryCharge = deliveryCharge;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	// 결제 정보
	private String imp_uid;
	private String merchant_uid;
	private String biz_email;
	private String pay_date;
	private String card_no;
	private String payStus;
	private String productname;
	private int member_idx;
	private String recipient;
	private String shipping_location;
	private String recipient_phone;
	
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getShipping_location() {
		return shipping_location;
	}
	public void setShipping_location(String shipping_location) {
		this.shipping_location = shipping_location;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
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
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public String getBiz_email() {
		return biz_email;
	}
	public void setBiz_email(String biz_email) {
		this.biz_email = biz_email;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getCard_no() {
		return card_no;
	}
	public void setCard_no(String card_no) {
		this.card_no = card_no;
	}
	public String getPayStus() {
		return payStus;
	}
	public void setPayStus(String payStus) {
		this.payStus = payStus;
	}
	
	// 판매내역 일련번호
	private int sales_idx;
	// 수량 전부
	private String quanity;
	// 판매수량
	private int product_quanity;
	// 상품 일련번호
	private int product_idx;
	// 결제 일련번호
	private int payment_idx;
	// idx 전체
	private String p_idx;
	
	public String getP_idx() {
		return p_idx;
	}
	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}
	public String getQuanity() {
		return quanity;
	}
	public void setQuanity(String quanity) {
		this.quanity = quanity;
	}
	public int getSales_idx() {
		return sales_idx;
	}
	public void setSales_idx(int sales_idx) {
		this.sales_idx = sales_idx;
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
	public int getPayment_idx() {
		return payment_idx;
	}
	public void setPayment_idx(int payment_idx) {
		this.payment_idx = payment_idx;
	}
	
	
	
}

