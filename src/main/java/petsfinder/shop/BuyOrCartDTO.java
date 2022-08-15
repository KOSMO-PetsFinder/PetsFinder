package petsfinder.shop;

public class BuyOrCartDTO {
	private String submit;
	private int product_idx;
	private int product_quanity;
	private int amount;
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getProduct_quanity() {
		return product_quanity;
	}
	public void setProduct_quanity(int product_quanity) {
		this.product_quanity = product_quanity;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
	
}
