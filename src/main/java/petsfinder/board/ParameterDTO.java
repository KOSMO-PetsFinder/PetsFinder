package petsfinder.board;

public class ParameterDTO {
	
	private String member_idx;
	private String faq_idx;
	
	private String searchField;
	private String searchTxt;
	
	private int start;
	private int end;
	
	private String qna_idx;
	public String getQna_idx() {
		return qna_idx;
	}
	public void setQna_idx(String qna_idx) {
		this.qna_idx = qna_idx;
	}
	private String qnacomm_idx;
	
	public String getQnacomm_idx() {
		return qnacomm_idx;
	}
	public void setQnacomm_idx(String qnacomm_idx) {
		this.qnacomm_idx = qnacomm_idx;
	}
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getFaq_idx() {
		return faq_idx;
	}
	public void setFaq_idx(String faq_idx) {
		this.faq_idx = faq_idx;
	}
	public String getSearchField() {
		return searchField;
	}
	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}
	public String getSearchTxt() {
		return searchTxt;
	}
	public void setSearchTxt(String searchTxt) {
		this.searchTxt = searchTxt;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
}
