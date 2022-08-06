package petsfinder.sitter;

import java.sql.Date;

public class SitterViewDTO {
	
	//sitter 테이블 DTO
	private int sit_idx ;
	private String sit_title; 
	private String sit_intro;
	private String sit_addr;
	private int member_idx;
	private int s_fee_day;
	private int s_fee_night;
	private int m_fee_day;
	private int m_fee_night;
	private int b_fee_day;
	private int b_fee_night; 
	private int sit_CLIENT;
	public int getSit_idx() {
		return sit_idx;
	}
	public void setSit_idx(int sit_idx) {
		this.sit_idx = sit_idx;
	}
	public String getSit_title() {
		return sit_title;
	}
	public void setSit_title(String sit_title) {
		this.sit_title = sit_title;
	}
	public String getSit_intro() {
		return sit_intro;
	}
	public void setSit_intro(String sit_intro) {
		this.sit_intro = sit_intro;
	}
	public String getSit_addr() {
		return sit_addr;
	}
	public void setSit_addr(String sit_addr) {
		this.sit_addr = sit_addr;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getS_fee_day() {
		return s_fee_day;
	}
	public void setS_fee_day(int s_fee_day) {
		this.s_fee_day = s_fee_day;
	}
	public int getS_fee_night() {
		return s_fee_night;
	}
	public void setS_fee_night(int s_fee_night) {
		this.s_fee_night = s_fee_night;
	}
	public int getM_fee_day() {
		return m_fee_day;
	}
	public void setM_fee_day(int m_fee_day) {
		this.m_fee_day = m_fee_day;
	}
	public int getM_fee_night() {
		return m_fee_night;
	}
	public void setM_fee_night(int m_fee_night) {
		this.m_fee_night = m_fee_night;
	}
	public int getB_fee_day() {
		return b_fee_day;
	}
	public void setB_fee_day(int b_fee_day) {
		this.b_fee_day = b_fee_day;
	}
	public int getB_fee_night() {
		return b_fee_night;
	}
	public void setB_fee_night(int b_fee_night) {
		this.b_fee_night = b_fee_night;
	}
	public int getSit_CLIENT() {
		return sit_CLIENT;
	}
	public void setSit_CLIENT(int sit_CLIENT) {
		this.sit_CLIENT = sit_CLIENT;
	}
	
	//Pet테이블 DTO
	private int pet_idx; 
	private String pet_name; 
	private int pet_age; 
	private String pet_neut; 
	private String pet_gender; 
	private String pet_kind;
	private String pet_char;
	private String pet_photo;
	
	public int getPet_idx() {
		return pet_idx;
	}
	public void setPet_idx(int pet_idx) {
		this.pet_idx = pet_idx;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public int getPet_age() {
		return pet_age;
	}
	public void setPet_age(int pet_age) {
		this.pet_age = pet_age;
	}
	public String getPet_neut() {
		return pet_neut;
	}
	public void setPet_neut(String pet_neut) {
		this.pet_neut = pet_neut;
	}
	public String getPet_gender() {
		return pet_gender;
	}
	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
	public String getPet_char() {
		return pet_char;
	}
	public void setPet_char(String pet_char) {
		this.pet_char = pet_char;
	}
	public String getPet_photo() {
		return pet_photo;
	}
	public void setPet_photo(String pet_photo) {
		this.pet_photo = pet_photo;
	} 
	
	//sitterReview 테이블
	private int sitreview_idx;
	private String sitreview_regdate;
	private String sitreview_content;
	private String sitreview_photo;
	private int sitreview_startpoint;
	
	public int getSitreview_idx() {
		return sitreview_idx;
	}
	public void setSitreview_idx(int sitreview_idx) {
		this.sitreview_idx = sitreview_idx;
	}
	public String getSitreview_regdate() {
		return sitreview_regdate;
	}
	public void setSitreview_regdate(String sitreview_regdate) {
		this.sitreview_regdate = sitreview_regdate;
	}
	public String getSitreview_content() {
		return sitreview_content;
	}
	public void setSitreview_content(String sitreview_content) {
		this.sitreview_content = sitreview_content;
	}
	public String getSitreview_photo() {
		return sitreview_photo;
	}
	public void setSitreview_photo(String sitreview_photo) {
		this.sitreview_photo = sitreview_photo;
	}
	public int getSitreview_startpoint() {
		return sitreview_startpoint;
	}
	public void setSitreview_startpoint(int sitreview_startpoint) {
		this.sitreview_startpoint = sitreview_startpoint;
	}
	
	//시터후기 댓글
	private int sitrevcomm_idx; 
	private String sitrevcomm_content; 
	private String sitrevcomm_regdate;
	public int getSitrevcomm_idx() {
		return sitrevcomm_idx;
	}
	public void setSitrevcomm_idx(int sitrevcomm_idx) {
		this.sitrevcomm_idx = sitrevcomm_idx;
	}
	public String getSitrevcomm_content() {
		return sitrevcomm_content;
	}
	public void setSitrevcomm_content(String sitrevcomm_content) {
		this.sitrevcomm_content = sitrevcomm_content;
	}
	public String getSitrevcomm_regdate() {
		return sitrevcomm_regdate;
	}
	public void setSitrevcomm_regdate(String sitrevcomm_regdate) {
		this.sitrevcomm_regdate = sitrevcomm_regdate;
	} 
	
	
	
	
	
}
