package petsfinder.petsitter;

public class PetSitterDTO {
	
	/* 시터 글 등록 */
	
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
	// 시터 총 별점
	private int sit_starpoint;
	// 시터가 별점을 받은 횟수 
	private int sit_starcount;

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
	public int getSit_starpoint() {
		return sit_starpoint;
	}
	public void setSit_starpoint(int sit_starpoint) {
		this.sit_starpoint = sit_starpoint;
	}
	public int getSit_starcount() {
		return sit_starcount;
	}
	public void setSit_starcount(int sit_starcount) {
		this.sit_starcount = sit_starcount;
	}
	
	/* 시터 글 등록 시 사진 */
	
	// 사진 일련번호
	private int sitphoto_idx;
	// 사진 경로
	private String sitphoto_photo;
	
	public int getSitphoto_idx() {
		return sitphoto_idx;
	}
	public void setSitphoto_idx(int sitphoto_idx) {
		this.sitphoto_idx = sitphoto_idx;
	}
	public String getSitphoto_photo() {
		return sitphoto_photo;
	}
	public void setSitphoto_photo(String sitphoto_photo) {
		this.sitphoto_photo = sitphoto_photo;
	}

	/* 
	시터 글 등록 시 서비스 
		실내놀이(터그놀이, 노즈워크 등) : play
		매일산책(산책 및 실외 배변 가능) : walk
		응급처치(응급시 병원 이동 가능) : emrgency
		집앞 픽업(비용은 협의) : pickup
		모발관리(눈물 또는 빗질관리 가능) : hair
		약물 복용(경구(입)복용 가능) : pills
		목욕 가능(비용은 협의) : bath
		장기예약(14일 이상) : longcare
		노견케어(8년이상) : oldcare
		퍼피케어(1년미만의 퍼피) : puppycare
	*/
	
	// 서비스 일련번호
	private int typSrv_idx;
	// 서비스 타입
	private String typSrv_service;
	// 서비스 설명
	private String typSrv_expln;

	public int getTypSrv_idx() {
		return typSrv_idx;
	}
	public void setTypSrv_idx(int typSrv_idx) {
		this.typSrv_idx = typSrv_idx;
	}
	public String getTypSrv_service() {
		return typSrv_service;
	}
	public void setTypSrv_service(String typSrv_service) {
		this.typSrv_service = typSrv_service;
	}
	public String getTypSrv_expln() {
		return typSrv_expln;
	}
	public void setTypSrv_expln(String typSrv_expln) {
		this.typSrv_expln = typSrv_expln;
	}
	
	/*
	시터 글 등록 시 태그
		반려동물 없음 : nopet -> np
		픽업 가능 : pickup -> pu
		대형견 가능 : big -> b
		마당 있음 : playground -> pg
		노견 케어 : oldcare -> oc
	*/
	
	// 태그종류 테이블 일련번호
	private int typTag_idx;
	// 태그 종류(아파트, 반려동물 없음 등)
	private String typTag_type;
	// 태그 설명
	private String typTag_expln;

	public int getTypTag_idx() {
		return typTag_idx;
	}
	public void setTypTag_idx(int typTag_idx) {
		this.typTag_idx = typTag_idx;
	}
	public String getTypTag_type() {
		return typTag_type;
	}
	public void setTypTag_type(String typTag_type) {
		this.typTag_type = typTag_type;
	}
	public String getTypTag_expln() {
		return typTag_expln;
	}
	public void setTypTag_expln(String typTag_expln) {
		this.typTag_expln = typTag_expln;
	}
	
	/*반려동물 테이블 */
	private int pet_idx; 
	private String pet_name;
	private int pet_age; 
	private String pet_gender; 
	
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

	public String getPet_gender() {
		return pet_gender;
	}
	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}
	
	/*회원정보*/
	// 이름
	private String member_name;
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	
	/* 예약 */
	// 펫시터 예약 일련번호
	private int sbook_idx;
	// 시터 일련번호
	// private int sit_idx;
	// 예약 시작일
	private String sbook_start;
	// 예약 마지막일
	private String sbook_end;

	public int getSbook_idx() {
		return sbook_idx;
	}
	public void setSbook_idx(int sbook_idx) {
		this.sbook_idx = sbook_idx;
	}
	public String getSbook_start() {
		return sbook_start;
	}
	public void setSbook_start(String sbook_start) {
		this.sbook_start = sbook_start;
	}
	public String getSbook_end() {
		return sbook_end;
	}
	public void setSbook_end(String sbook_end) {
		this.sbook_end = sbook_end;
	}
	
}
