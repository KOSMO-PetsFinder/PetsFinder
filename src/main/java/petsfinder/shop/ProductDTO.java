package petsfinder.shop;

import java.sql.Date;

public class ProductDTO {
	private int product_idx; 
	private String product_name; 
	private int product_price; 
	private String product_description;
	private Date product_regdate; 
	private String product_category; 
	private int product_stock;
	private int review_count;
	private String pdt_image_file;
	private String photos;
	private String[] photo;
	
	
	public String[] getPhoto() {
		return photo;
	}
	public void setPhoto(String[] photo) {
		this.photo = photo;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}
	public String getPdt_image_file() {
		return pdt_image_file;
	}
	public void setPdt_image_file(String pdt_image_file) {
		this.pdt_image_file = pdt_image_file;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public Date getProduct_regdate() {
		return product_regdate;
	}
	public void setProduct_regdate(Date product_regdate) {
		this.product_regdate = product_regdate;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	} 
	
	//최근 본 게시물
	
	private int recent_idx;
	private Date regidate;
	
	public int getRecent_idx() {
		return recent_idx;
	}
	public void setRecent_idx(int recent_idx) {
		this.recent_idx = recent_idx;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
}
