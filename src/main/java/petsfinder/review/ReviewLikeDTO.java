package petsfinder.review;

public class ReviewLikeDTO {
	private int reviewlike_idx; 
	private int reviewlike_stt; 
	private int review_idx; 
	private int member_idx;
	public int getReviewlike_idx() {
		return reviewlike_idx;
	}
	
	public int getReviewlike_stt() {
		return reviewlike_stt;
	}

	public void setReviewlike_stt(int reviewlike_stt) {
		this.reviewlike_stt = reviewlike_stt;
	}

	public void setReviewlike_idx(int reviewlike_idx) {
		this.reviewlike_idx = reviewlike_idx;
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
	
}
