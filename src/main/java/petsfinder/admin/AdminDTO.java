package petsfinder.admin;

import java.sql.Date;

public class AdminDTO {
	
	//Q&A게시판
	private int qna_idx; 
	private String qna_title;
	private String qna_content;
	private String qna_photo;
	private String qna_regdate;
	private String qna_stt;
	private String qna_OPENSTATUS;
	private int member_idx;
	private String member_name;
	
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getQna_idx() {
		return qna_idx;
	}
	public void setQna_idx(int qna_idx) {
		this.qna_idx = qna_idx;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_photo() {
		return qna_photo;
	}
	public void setQna_photo(String qna_photo) {
		this.qna_photo = qna_photo;
	}
	public String getQna_regdate() {
		return qna_regdate;
	}
	public void setQna_regdate(String qna_regdate) {
		this.qna_regdate = qna_regdate;
	}
	public String getQna_stt() {
		return qna_stt;
	}
	public void setQna_stt(String qna_stt) {
		this.qna_stt = qna_stt;
	}
	public String getQna_OPENSTATUS() {
		return qna_OPENSTATUS;
	}
	public void setQna_OPENSTATUS(String qna_OPENSTATUS) {
		this.qna_OPENSTATUS = qna_OPENSTATUS;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	
	//공지사항 게시판 
	private int notboard_idx;
	private String notboard_title;
	private String notboard_content;
	private String notboard_regdate;
	private int notboard_hit;
	private String notboard_photo;
	private String rNum;
	
	public String getrNum() {
		return rNum;
	}
	public void setrNum(String rNum) {
		this.rNum = rNum;
	}
	public int getNotboard_idx() {
		return notboard_idx;
	}
	public void setNotboard_idx(int notboard_idx) {
		this.notboard_idx = notboard_idx;
	}
	public String getNotboard_title() {
		return notboard_title;
	}
	public void setNotboard_title(String notboard_title) {
		this.notboard_title = notboard_title;
	}
	public String getNotboard_content() {
		return notboard_content;
	}
	public void setNotboard_content(String notboard_content) {
		this.notboard_content = notboard_content;
	}
	public String getNotboard_regdate() {
		return notboard_regdate;
	}
	public void setNotboard_regdate(String notboard_regdate) {
		this.notboard_regdate = notboard_regdate;
	}
	public int getNotboard_hit() {
		return notboard_hit;
	}
	public void setNotboard_hit(int notboard_hit) {
		this.notboard_hit = notboard_hit;
	}
	public String getNotboard_photo() {
		return notboard_photo;
	}
	public void setNotboard_photo(String notboard_photo) {
		this.notboard_photo = notboard_photo;
	}


	
	// 유기동물 리스트
	private int abani_idx;
	private String abani_kind;
	private String abani_gender; 
	private String abani_loc; 
	private Date  abani_regdate;
	private int abani_neut; 
	private String abani_stat;
	private String abani_photo;
	private String abani_age;
	private int abani_vaccin;
	private String abani_species;
	private String abani_char;
	private int adoptmember_idx;
	
	public String getAbani_stat() {
		return abani_stat;
	}
	public void setAbani_stat(String abani_stat) {
		this.abani_stat = abani_stat;
	}
	public String getAbani_gender() {
		return abani_gender;
	}
	public void setAbani_gender(String abani_gender) {
		this.abani_gender = abani_gender;
	}
	public int getAdoptmember_idx() {
		return adoptmember_idx;
	}
	public void setAdoptmember_idx(int adoptmember_idx) {
		this.adoptmember_idx = adoptmember_idx;
	}
	public String getAbani_char() {
		return abani_char;
	}
	public void setAbani_char(String abani_char) {
		this.abani_char = abani_char;
	}
	public int getAbani_idx() {
		return abani_idx;
	}
	public void setAbani_idx(int abani_idx) {
		this.abani_idx = abani_idx;
	}
	public String getAbani_kind() {
		return abani_kind;
	}
	public void setAbani_kind(String abani_kind) {
		this.abani_kind = abani_kind;
	}
	public String getAbani_loc() {
		return abani_loc;
	}
	public void setAbani_loc(String abani_loc) {
		this.abani_loc = abani_loc;
	}
	public Date getAbani_regdate() {
		return abani_regdate;
	}
	public void setAbani_regdate(Date abani_regdate) {
		this.abani_regdate = abani_regdate;
	}
	public int getAbani_neut() {
		return abani_neut;
	}
	public void setAbani_neut(int abani_neut) {
		this.abani_neut = abani_neut;
	}
	public String getAbani_photo() {
		return abani_photo;
	}
	public void setAbani_photo(String abani_photo) {
		this.abani_photo = abani_photo;
	}
	public String getAbani_age() {
		return abani_age;
	}
	public void setAbani_age(String abani_age) {
		this.abani_age = abani_age;
	}
	public int getAbani_vaccin() {
		return abani_vaccin;
	}
	public void setAbani_vaccin(int abani_vaccin) {
		this.abani_vaccin = abani_vaccin;
	}
	public String getAbani_species() {
		return abani_species;
	}
	public void setAbani_species(String abani_species) {
		this.abani_species = abani_species;
	}
	
	///FAQ
	private int faq_idx; //FAQ 일련번호
	private String faq_question; //FAQ 질문
	private String faq_answer; //FAQ 답변
	
	public int getFaq_idx() {
		return faq_idx;
	}
	public void setFaq_idx(int faq_idx) {
		this.faq_idx = faq_idx;
	}
	public String getFaq_question() {
		return faq_question;
	}
	public void setFaq_question(String faq_question) {
		this.faq_question = faq_question;
	}
	public String getFaq_answer() {
		return faq_answer;
	}
	public void setFaq_answer(String faq_answer) {
		this.faq_answer = faq_answer;
	}

	   private int qnacomm_idx;
	   private String qnacomm_content;
	   private String qnacomm_regdate;
	   
	   
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

	   private String searchTxt;


		public String getSearchTxt() {
			return searchTxt;
		}
		public void setSearchTxt(String searchTxt) {
			this.searchTxt = searchTxt;
		}
	   
	   
	

}
