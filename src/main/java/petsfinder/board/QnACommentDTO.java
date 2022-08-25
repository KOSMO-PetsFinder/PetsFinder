package petsfinder.board;

public class QnACommentDTO {

	private int qnacomm_idx;
	private String qnacomm_content;
	private String qnacomm_regdate;
	private int qna_idx;
	
	
	public int getQnacomm_idx() {
		return qnacomm_idx;
	}
	public void setQnacomm_idx(int qnacomm_idx) {
		this.qnacomm_idx = qnacomm_idx;
	}
	public String getQnacomm_content() {
		return qnacomm_content;
	}
	public void setQnacomm_content(String qnacomm_content) {
		this.qnacomm_content = qnacomm_content;
	}
	public String getQnacomm_regdate() {
		return qnacomm_regdate;
	}
	public void setQnacomm_regdate(String qnacomm_regdate) {
		this.qnacomm_regdate = qnacomm_regdate;
	}
	public int getQna_idx() {
		return qna_idx;
	}
	public void setQna_idx(int qna_idx) {
		this.qna_idx = qna_idx;
	}
}
