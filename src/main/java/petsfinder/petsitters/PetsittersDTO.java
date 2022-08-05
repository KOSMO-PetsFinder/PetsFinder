package petsfinder.petsitters;

public class PetsittersDTO {

	// 시터 일련번호
	private int sit_idx;
	// 시터 제목
	private String sit_title;
	// 시터 소개글
	private String sit_intro;
	// 시터 주소
	private String sit_addr;
	// 회원번호
	private int member_idx;
	// 소형 요금
	private int s_fee;
	// 중형 요금
	private int m_fee;
	// 대형 요금
	private int b_fee;
	// 이용고객 수 
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
	public int getS_fee() {
		return s_fee;
	}
	public void setS_fee(int s_fee) {
		this.s_fee = s_fee;
	}
	public int getM_fee() {
		return m_fee;
	}
	public void setM_fee(int m_fee) {
		this.m_fee = m_fee;
	}
	public int getB_fee() {
		return b_fee;
	}
	public void setB_fee(int b_fee) {
		this.b_fee = b_fee;
	}
	public int getSit_CLIENT() {
		return sit_CLIENT;
	}
	public void setSit_CLIENT(int sit_CLIENT) {
		this.sit_CLIENT = sit_CLIENT;
	}
}
