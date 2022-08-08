package petsfinder.abandonedanimal;
// 입양 신청 DTO
public class AdoptionAppDTO {
	
	
	private int ADPAPL_idx; // 입양신청 일련번호
	private String ADPAPL_name; // 신청자 이름
	private String ADPAPL_gender; // 신청자 성별(F,M)
	private java.lang.String ADPAPL_birth; // 신청자 생년월일
	private String ADPAPL_tel; // 신청자 전화번호
	private String ADPAPL_addr; // 신청자 주소
	private int ADPAPL_job; // 신청자 가족 직업여부 (0,1)
	private int ADPAPL_exp; // 신청자 반려동물 키운 경험(0,1)
	private String ADPAPL_havepet; // 신청자가 반려동물 키운 기간
	private int adpapl_fNum; // 신청자 가족 수 
	private int abani_idx; // 유기동물 일련번호
	private int member_idx;	// 회원번호
	
	public int getADPAPL_idx() {
		return ADPAPL_idx;
	}
	public void setADPAPL_idx(int aDPAPL_idx) {
		ADPAPL_idx = aDPAPL_idx;
	}
	public String getADPAPL_name() {
		return ADPAPL_name;
	}
	public void setADPAPL_name(String aDPAPL_name) {
		ADPAPL_name = aDPAPL_name;
	}
	public String getADPAPL_gender() {
		return ADPAPL_gender;
	}
	public void setADPAPL_gender(String aDPAPL_gender) {
		ADPAPL_gender = aDPAPL_gender;
	}
	public java.lang.String getADPAPL_birth() {
		return ADPAPL_birth;
	}
	public void setADPAPL_birth(java.lang.String aDPAPL_birth) {
		ADPAPL_birth = aDPAPL_birth;
	}
	public String getADPAPL_tel() {
		return ADPAPL_tel;
	}
	public void setADPAPL_tel(String aDPAPL_tel) {
		ADPAPL_tel = aDPAPL_tel;
	}
	public String getADPAPL_addr() {
		return ADPAPL_addr;
	}
	public void setADPAPL_addr(String aDPAPL_addr) {
		ADPAPL_addr = aDPAPL_addr;
	}
	public int getADPAPL_job() {
		return ADPAPL_job;
	}
	public void setADPAPL_job(int aDPAPL_job) {
		ADPAPL_job = aDPAPL_job;
	}
	public int getADPAPL_exp() {
		return ADPAPL_exp;
	}
	public void setADPAPL_exp(int aDPAPL_exp) {
		ADPAPL_exp = aDPAPL_exp;
	}
	public String getADPAPL_havepet() {
		return ADPAPL_havepet;
	}
	public void setADPAPL_havepet(String aDPAPL_havepet) {
		ADPAPL_havepet = aDPAPL_havepet;
	}
	public int getAdpapl_fNum() {
		return adpapl_fNum;
	}
	public void setAdpapl_fNum(int adpapl_fNum) {
		this.adpapl_fNum = adpapl_fNum;
	}
	public int getAbani_idx() {
		return abani_idx;
	}
	public void setAbani_idx(int abani_idx) {
		this.abani_idx = abani_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	
	
	

}
