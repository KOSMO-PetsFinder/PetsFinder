package petsfinder.shop;
//payList
public class BuyOrCartDTO {
	private String subM; //장바구니,카트
	private int product_idx; //상품 번호
	private int product_quanity; //상품 수량
	private int amount; //상품금액
	private int deliveryCharge; // 배송비
	private int discount; //할인
	private String product_name;//상품 이름
	private String product_cate;//상품 카테고리
	private int product_price; // 상품 개당 가격
	private String product_photo; //상품 이미지
	private String photos; // 상품 이미지 String
	private int product_stock; //재고
	private int cart_idx;
	
	public String getSubM() {
		return subM;
	}
	public void setSubM(String subM) {
		this.subM = subM;
	}
	public int getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getProduct_photo() {
		return product_photo;
	}
	public void setProduct_photo(String product_photo) {
		this.product_photo = product_photo;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_cate() {
		return product_cate;
	}
	public void setProduct_cate(String product_cate) {
		this.product_cate = product_cate;
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
