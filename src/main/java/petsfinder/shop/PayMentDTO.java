package petsfinder.shop;
//payInfoDTO

import java.sql.Date;

public class PayMentDTO {
	
	private int payment_idx; //결제 일련번호
	private String merchant_uid; //상품 아이디
	private int amount; // 가격 
	private String pg; //pg사
	private String payStus; //결제상태(결제,환불) pay,rfn
	private Date pay_date; //결제일
	private String seller; //판매자
	private String productname; //상품명
	private int member_idx; //회원번호
	
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public int getPayment_idx() {
		return payment_idx;
	}
	public void setPayment_idx(int payment_idx) {
		this.payment_idx = payment_idx;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPg() {
		return pg;
	}
	public void setPg(String pg) {
		this.pg = pg;
	}
	public String getPayStus() {
		return payStus;
	}
	public void setPayStus(String payStus) {
		this.payStus = payStus;
	}
	
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
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
	
}

