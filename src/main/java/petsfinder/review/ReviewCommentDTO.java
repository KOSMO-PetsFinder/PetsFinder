package petsfinder.review;

import java.sql.Date;
//후기의 댓글 DTO 
public class ReviewCommentDTO {
	private int reviewcomm_idx ;

	private String member_namec;
	private String reviewcomm_content;
	private Date reviewcomm_regdate;
	private int review_idx;
	private int member_idx;
	private String member_photo;
	
	public String getMember_namec() {
		return member_namec;
	}
	public void setMember_namec(String member_namec) {
		this.member_namec = member_namec;
	}
	public int getReviewcomm_idx() {
		return reviewcomm_idx;
	}
	public void setReviewcomm_idx(int reviewcomm_idx) {
		this.reviewcomm_idx = reviewcomm_idx;
	}
	public String getReviewcomm_content() {
		return reviewcomm_content;
	}
	public void setReviewcomm_content(String reviewcomm_content) {
		this.reviewcomm_content = reviewcomm_content;
	}
	public Date getReviewcomm_regdate() {
		return reviewcomm_regdate;
	}
	public void setReviewcomm_regdate(Date reviewcomm_regdate) {
		this.reviewcomm_regdate = reviewcomm_regdate;
	}
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_photo() {
		return member_photo;
	}
	public void setMember_photo(String member_photo) {
		this.member_photo = member_photo;
	}
	
	
}
