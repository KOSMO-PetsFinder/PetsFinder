package petsfinder.petsitter;

<<<<<<< HEAD
import java.sql.Date;

public class PetSitterDTO {
	
	/*일단 데이터를 한번에 뽑아오기 위해서 PetSitterDTO에 시터 상세보기에 
	 필요한 데이터 모두 몰아넣겠습니다. 나눠놓으면 Mapper 에서 resultType 쪽에서 걸립니다*/
	
   /* 시터 글 등록 (시터테이블) */
   
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
   private int sit_startpoint;
   // 시터가 별점을 받은 횟수 
   private int sit_startcount;
   
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
   public int getSit_startpoint() {
      return sit_startpoint;
   }
   public void setSit_startpoint(int sit_startpoint) {
      this.sit_startpoint = sit_startpoint;
   }
   public int getSit_startcount() {
      return sit_startcount;
   }
   public void setSit_startcount(int sit_startcount) {
      this.sit_startcount = sit_startcount;
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
   이용 가능 서비스 테이블은 
   이거 두개 인데 이미 있어서 안넣어도됨.
   private int sit_idx;
   private typSrv_idx;
   */
   
   

   /* 
   시터 글 등록 시 서비스 
      실내놀이(터그놀이, 노즈워크 등) : play
      매일산책(산책 및 실외 배변 가능) : walk
      응급처치(응급시 병원 이동 가능) : emrgency
      집앞 픽업(비용은 협의) : pickup
      모발관리(눈물 또는 빗질관리 가능) : haircare
      약물 복용(경구(입)복용 가능) : pills
      목욕 가능(비용은 협의) : bath
      장기예약(14일 이상) : longcare
      노견케어(8년이상) : oldcare
      퍼피케어(1년미만의 퍼피) : puppycare
   */
   
   /*서비스 타입 테이블 */
   
   // 서비스 일련번호
   private int typSrv_idx;
   // 서비스 타입 (여기에 이용 가능서비스랑 설명 다 합쳐서 들어감)
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
   
   /*태그 종류 테이블*/
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
	

	//		-- 이름
	private String member_name;
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	
	
	/*리뷰*/
	
	private int review_idx; //후기게시판 일련번호
	private String review_content; //후기게시판 내용
	private Date review_regdate; //후기게시판 등록일
	private String review_photo; //후기게시판 사진
	private String review_flag;  //후기게시판 종류(adp,sit)
	private int abani_idx; //유기동물 일련번호
	private int countlike; //좋아요 수 
	
	public int getCountlike() {
		return countlike;
	}
	public void setCountlike(int countlike) {
		this.countlike = countlike;
	}
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}
	public String getReview_photo() {
		return review_photo;
	}
	public void setReview_photo(String review_photo) {
		this.review_photo = review_photo;
	}
	public String getReview_flag() {
		return review_flag;
	}
	public void setReview_flag(String review_flag) {
		this.review_flag = review_flag;
	}
	public int getAbani_idx() {
		return abani_idx;
	}
	public void setAbani_idx(int abani_idx) {
		this.abani_idx = abani_idx;
	}
	
	
	/*리뷰댓글*/
	
	private int reviewcomm_idx ;
	private String reviewcomm_content;
	private Date reviewcomm_regdate;
	
	public int getReviewcomm_idx() {
		return reviewcomm_idx;
	}
	public void setReviewcomm_idx(int reviewcomm_idx) {
		this.reviewcomm_idx = reviewcomm_idx;
	}
	public String getReviewcomm_content() {
		return reviewcomm_content;
	}
	public void setReviewcomm_content(String reviewcomm_content) {
		this.reviewcomm_content = reviewcomm_content;
	}
	public Date getReviewcomm_regdate() {
		return reviewcomm_regdate;
	}
	public void setReviewcomm_regdate(Date reviewcomm_regdate) {
		this.reviewcomm_regdate = reviewcomm_regdate;
	}
	
	private String searchTxt;

	public String getSearchTxt() {
		return searchTxt;
	}
	public void setSearchTxt(String searchTxt) {
		this.searchTxt = searchTxt;
	}

=======
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
	private int sit_startpoint;
	// 시터가 별점을 받은 횟수 
	private int sit_startcount;
	
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
	public int getSit_startpoint() {
		return sit_startpoint;
	}
	public void setSit_startpoint(int sit_startpoint) {
		this.sit_startpoint = sit_startpoint;
	}
	public int getSit_startcount() {
		return sit_startcount;
	}
	public void setSit_startcount(int sit_startcount) {
		this.sit_startcount = sit_startcount;
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
	
	
>>>>>>> branch 'main' of https://github.com/KOSMO-PetsFinder/PetsFinder.git
}
