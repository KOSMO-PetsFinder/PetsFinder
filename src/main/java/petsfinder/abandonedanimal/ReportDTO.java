package petsfinder.abandonedanimal;

public class ReportDTO {
	
	private int dclrAbnd_idx; // 유기동물신고 일련번호
	private String dclrAbnd_loc; // 주소
	private String dclrAbnd_title; // 제목
	private String dclrAbnd_content; // 내용
	private String dclrAbnd_photo; // 사진
	private java.sql.Date dclrAbnd_regdate; // 등록일
	private String dclrAbnd_stts; //처리상태
	private int member_idx; // 회원번호
	
	public int getDclrAbnd_idx() {
		return dclrAbnd_idx;
	}
	public void setDclrAbnd_idx(int dclrAbnd_idx) {
		this.dclrAbnd_idx = dclrAbnd_idx;
	}
	public String getDclrAbnd_loc() {
		return dclrAbnd_loc;
	}
	public void setDclrAbnd_loc(String dclrAbnd_loc) {
		this.dclrAbnd_loc = dclrAbnd_loc;
	}
	public String getDclrAbnd_title() {
		return dclrAbnd_title;
	}
	public void setDclrAbnd_title(String dclrAbnd_title) {
		this.dclrAbnd_title = dclrAbnd_title;
	}
	public String getDclrAbnd_content() {
		return dclrAbnd_content;
	}
	public void setDclrAbnd_content(String dclrAbnd_content) {
		this.dclrAbnd_content = dclrAbnd_content;
	}
	public String getDclrAbnd_photo() {
		return dclrAbnd_photo;
	}
	public void setDclrAbnd_photo(String dclrAbnd_photo) {
		this.dclrAbnd_photo = dclrAbnd_photo;
	}
	public java.sql.Date getDclrAbnd_regdate() {
		return dclrAbnd_regdate;
	}
	public void setDclrAbnd_regdate(java.sql.Date dclrAbnd_regdate) {
		this.dclrAbnd_regdate = dclrAbnd_regdate;
	}
	public String getDclrAbnd_stts() {
		return dclrAbnd_stts;
	}
	public void setDclrAbnd_stts(String dclrAbnd_stts) {
		this.dclrAbnd_stts = dclrAbnd_stts;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
}
