package petsfinder.member;

public class MemberDTO {
//	-- 회원번호
	private String member_idx;
//	-- 아이디
	private String member_id;
//	-- 비밀번호
	private String member_pass;
//	-- 일반/시터/관리자(nor,sit,mag)
	private String member_type;
//	-- 이메일
	private String member_email;
//	-- 주소
	private String member_addr;
//	-- 이름
	private String member_name;
//	-- 전화번호
	private String member_phone;
//	-- 회원가입일
	private String member_reg;
//	-- 회원 나이(생일)
	private String member_birth;
//	-- 회원 성별(F,M)
	private String member_gender;
//	-- 회원 프로필 사진
	private String member_photo;
	
	
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pass() {
		return member_pass;
	}
	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}
	public String getMember_type() {
		return member_type;
	}
	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_addr() {
		return member_addr;
	}
	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_reg() {
		return member_reg;
	}
	public void setMember_reg(String member_reg) {
		this.member_reg = member_reg;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_photo() {
		return member_photo;
	}
	public void setMember_photo(String member_photo) {
		this.member_photo = member_photo;
	}
	
}
