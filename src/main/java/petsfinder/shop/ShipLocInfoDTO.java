package petsfinder.shop;

public class ShipLocInfoDTO {
	
	private int shiplocinfo_idx; //배송지 정보 일련번호
	private String recipient; //수령인
	private String recipient_phone; //연락처
	private String shipping_location; //배송지 주소
	private String delivery_status; //배송상태(PRP준비, dlv중, cmp완료)
	private int payment_idx; //결제 일련번호
	

	public int getShiplocinfo_idx() {
		return shiplocinfo_idx;
	}
	public void setShiplocinfo_idx(int shiplocinfo_idx) {
		this.shiplocinfo_idx = shiplocinfo_idx;
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
	public int getPayment_idx() {
		return payment_idx;
	}
	public void setPayment_idx(int payment_idx) {
		this.payment_idx = payment_idx;
	}

	
	
}

