package petsfinder.shop;

public class CartDTO {
	private int cart_idx;
	private int product_idx;
	private int member_idx;
	private int product_quanity;
	public int getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getProduct_quanity() {
		return product_quanity;
	}
	public void setProduct_quanity(int product_quanity) {
		this.product_quanity = product_quanity;
	}
	
}