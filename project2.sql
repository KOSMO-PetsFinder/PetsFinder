
/* Drop Tables */

DROP TABLE ADOPTION_APPLICATION CASCADE CONSTRAINTS;
DROP TABLE ADOPTION_list CASCADE CONSTRAINTS;
DROP TABLE review_Comment CASCADE CONSTRAINTS;
DROP TABLE review_like CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE abandonedAnimal CASCADE CONSTRAINTS;
DROP TABLE APPROVAL CASCADE CONSTRAINTS;
DROP TABLE AVAILABLE_SERVICES CASCADE CONSTRAINTS;
DROP TABLE faq_board CASCADE CONSTRAINTS;
DROP TABLE pet CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE REPORT_ABANDONED_ANIMALS CASCADE CONSTRAINTS;
DROP TABLE sitter_photo CASCADE CONSTRAINTS;
DROP TABLE sitter_tag CASCADE CONSTRAINTS;
DROP TABLE sit_book CASCADE CONSTRAINTS;
DROP TABLE sitter CASCADE CONSTRAINTS;
DROP TABLE RESIDENCE_TYPE CASCADE CONSTRAINTS;
DROP TABLE SITTER_APPLICATION CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE NEW_TABLE CASCADE CONSTRAINTS;
DROP TABLE NEW_TABLE CASCADE CONSTRAINTS;
DROP TABLE NOTICE_BOARD CASCADE CONSTRAINTS;
DROP TABLE TYPE_SERVICE CASCADE CONSTRAINTS;
DROP TABLE TYPE_Tag CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_abani_idx;
DROP SEQUENCE SEQ_ADOPTION_idx;
DROP SEQUENCE SEQ_adoptcomm_idx;
DROP SEQUENCE SEQ_ADOPTION_like_adoptlike_idx;
DROP SEQUENCE SEQ_ADOPTION_like_sitrevlike_idx;
DROP SEQUENCE SEQ_ADOPTION_list_ADOPlist_idx;
DROP SEQUENCE SEQ_ADOPTION_REVIEW_BOARD_adoptboard_idx;
DROP SEQUENCE SEQ_APR_idx;
DROP SEQUENCE SEQ_faq_idx;
DROP SEQUENCE SEQ_member_member_idx;
DROP SEQUENCE SEQ_NOTICE_BOARD_notboard_idx;
DROP SEQUENCE SEQ_pet_pet_idx;
DROP SEQUENCE SEQ_qna_board_qna_idx;
DROP SEQUENCE SEQ_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx;
DROP SEQUENCE SEQ_review_board_review_idx;
DROP SEQUENCE SEQ_review_Comment_reviewcomm_idx;
DROP SEQUENCE SEQ_review_Comment_sitrevcomm_idx;
DROP SEQUENCE SEQ_review_like_reviewlike_idx;
DROP SEQUENCE SEQ_review_like_sitrevlike_idx;
DROP SEQUENCE SEQ_sitrev_Comment_sitrevcomm_idx;
DROP SEQUENCE SEQ_SITTER_APPLICATION_ADPAPL_idx;
DROP SEQUENCE SEQ_SITTER_APPLICATION_SITAPL_idx;
DROP SEQUENCE SEQ_sitter_like_adoptlike_idx;
DROP SEQUENCE SEQ_sitter_like_sitrevlike_idx;
DROP SEQUENCE SEQ_sitter_photo_sitphoto_idx;
DROP SEQUENCE SEQ_sitter_review_review_idx;
DROP SEQUENCE SEQ_sitter_review_sitreview_idx;
DROP SEQUENCE SEQ_sitter_sit_idx;
DROP SEQUENCE SEQ_sbook_idx;
DROP SEQUENCE SEQ_TYPE_SERVICE_typSrv_idx;
DROP SEQUENCE SEQ_TYPE_Tag_typTag_idx;




/* Create Sequences */

-- 유기동물 시퀀스
CREATE SEQUENCE SEQ_abani_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 입양 신청 시퀀스
CREATE SEQUENCE SEQ_ADPAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 입양 목록 시퀀스
CREATE SEQUENCE SEQ_ADOPlist_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- FAQ 시퀀스
CREATE SEQUENCE SEQ_faq_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 회원 시퀀스
CREATE SEQUENCE SEQ_member_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 공지사항 시퀀스
CREATE SEQUENCE SEQ_notboard_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 반려동물 시퀀스
CREATE SEQUENCE SEQ_pet_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- Q&A 게시판 시퀀스
CREATE SEQUENCE SEQ_qna_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 유기동물 신고 시퀀스
CREATE SEQUENCE SEQ_REPORT_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 후기 게시판 시퀀스
CREATE SEQUENCE SEQ_review_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 후기 댓글 시퀀스
CREATE SEQUENCE SEQ_reviewcomm_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 후기 좋아요 시퀀스
CREATE SEQUENCE SEQ_reviewlike_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 신청 시퀀스
CREATE SEQUENCE SEQ_SITAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 사진(목록, 상세보기) 시퀀스
CREATE SEQUENCE SEQ_sitphoto_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 (상세보기 내용) 시퀀스
CREATE SEQUENCE SEQ_sitter_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 예약 시퀀스
CREATE SEQUENCE SEQ_sbook_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 이용가능 서비스 시퀀스
CREATE SEQUENCE SEQ_typSrv_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 시터 태그 시퀀스
CREATE SEQUENCE SEQ_typTag_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 상품 이미지 시퀀스
CREATE SEQUENCE SEQ_pdt_image_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 상품 시퀀스
CREATE SEQUENCE SEQ_product_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 장바구니 시퀀스
CREATE SEQUENCE SEQ_cart_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
--웹소켓 시퀀스
CREATE SEQUENCE SEQ_web_chat_room_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
--QnA 댓글 시퀀스
CREATE SEQUENCE SEQ_qnacomm_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 결제 시퀀스
CREATE SEQUENCE SEQ_payment_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 판매 내역 시퀀스
CREATE SEQUENCE SEQ_sales_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 배송 시퀀스
CREATE SEQUENCE SEQ_shiplocInfo_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- 최근 본 상품 시퀀스
CREATE SEQUENCE seq_recentboard_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;

/* Create Tables */

-- 유기동물 테이블
CREATE TABLE abandonedAnimal
(
	-- 유기동물 일련번호
	abani_idx number NOT NULL,
	-- 유기동물 품종
	abani_kind varchar2(30) NOT NULL,
	-- 유기동물 성별(F,M)
	abani_gender char(1) NOT NULL,
	-- 유기동물 발생장소
	abani_loc varchar2(100) NOT NULL,
	-- 유기동물 접수일
	abani_regdate date NOT NULL,
	-- 유기동물 중성화여부(1,0)
	abani_neut number NOT NULL,
	-- 유기동물 상태 입양/보호(adopt,prtct)
	abani_stat char(5) NOT NULL,
	-- 유기동물 사진
	abani_photo varchar2(100) NOT NULL,
	-- 동물 나이 
	abani_age varchar2(30) NOT NULL,
	-- 예방접종 유무(0,1)
	abani_vaccin number NOT NULL,
	-- 유기동물 종(cat,dog)
	abani_species char(3) NOT NULL,
	-- 유기동물 특징
	abani_char varchar2(1000) NOT NULL,
	PRIMARY KEY (abani_idx)
);


-- 입양신청 테이블
CREATE TABLE ADOPTION_APPLICATION
(
	-- 입양신청 일련번호
	ADPAPL_idx number NOT NULL,
	-- 신청자 이름
	ADPAPL_name varchar2(30) NOT NULL,
	-- 신청자 성별(F,M)
	ADPAPL_gender char(1) NOT NULL,
	-- 신청자 생년월일
	ADPAPL_birth date NOT NULL,
	-- 신청자 전화번호
	ADPAPL_tel varchar2(30) NOT NULL,
	-- 신청자 주소
	ADPAPL_addr varchar2(100) NOT NULL,
	-- 신청자 가족 직업여부 (0,1)
	ADPAPL_job number NOT NULL,
	-- 신청자 반려동물 키운 경험(0,1)
	ADPAPL_exp number NOT NULL,
	-- 신청자가 반려동물 키운 기간
	ADPAPL_havepet varchar2(50),
	-- 신청자 가족 수 
	adpapl_fNum number NOT NULL,
	-- 유기동물 일련번호
	abani_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
    -- 입양신청상태(rej: 거절, udr: 심사중, apl: 승인) 
    ADPAPL_stt char(3) default 'udr' NOT NULL,
	PRIMARY KEY (ADPAPL_idx)
);

-- 입양 목록
CREATE TABLE ADOPTION_list
(
	-- 입양 목록 일련번호
	ADOPlist_idx number NOT NULL,
	-- 입양날짜 
	ADOPlist_date date NOT NULL,
	-- 유기동물 일련번호
	abani_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (ADOPlist_idx)
);


-- 이용가능서비스
CREATE TABLE AVAILABLE_SERVICES
(
	-- 시터 일련번호
	sit_idx number NOT NULL,
	-- 서비스 일련번호
	typSrv_idx number NOT NULL
);


-- faq게시판 테이블
CREATE TABLE faq_board
(
	-- faq게시판 일련번호
	faq_idx number NOT NULL,
	-- 질문
	faq_QUESTION varchar2(100) NOT NULL,
	-- 답변
	faq_ANSWER varchar2(2000) NOT NULL,
	-- 사진
	faq_photo varchar2(100),
	PRIMARY KEY (faq_idx)
);


--QnA 댓글 테이블
CREATE TABLE qna_Comment
(
   -- QnA 댓글 일련번호
   qnacomm_idx number NOT NULL,
   -- 댓글 내용
   qnacomm_content varchar2(1000) NOT NULL,
   -- 댓글 등록일
   qnacomm_regdate date NOT NULL,
   -- 후기 일련번호
   qna_idx number NOT NULL,
   PRIMARY KEY (qnacomm_idx)
);


-- 회원테이블
CREATE TABLE member
(
	-- 회원번호
	member_idx number NOT NULL,
	-- 아이디
	member_id varchar2(30) NOT NULL UNIQUE,
	-- 비밀번호
	member_pass varchar2(30) NOT NULL,
	-- 일반/시터/관리자(nor,sit,mag)
	member_type char(3) NOT NULL,
	-- 이메일
	member_email varchar2(30) NOT NULL UNIQUE,
	-- 주소
	member_addr varchar2(100) NOT NULL,
	-- 이름
	member_name varchar2(30) NOT NULL,
	-- 전화번호
	member_phone varchar2(30) NOT NULL,
	-- 회원가입일
	member_reg date NOT NULL,
	-- 회원 나이(생일)
	member_birth date NOT NULL,
	-- 회원 성별(F,M)
	member_gender char(1) NOT NULL,
	-- 회원 프로필 사진
	member_photo varchar2(100),
	PRIMARY KEY (member_idx)
);


-- 공지게시판 테이블
CREATE TABLE NOTICE_BOARD
(
	-- 공지게시판 일련번호
	notboard_idx number NOT NULL,
	-- 제목
	notboard_title varchar2(200) NOT NULL,
	-- 내용
	notboard_content varchar2(2000) NOT NULL,
	-- 작성일
	notboard_regdate date NOT NULL,
	-- 조회수
	notboard_hit number NOT NULL,
	-- 사진
	notboard_photo varchar2(100),
	PRIMARY KEY (notboard_idx)
);


CREATE TABLE pet
(
   -- 펫번호
   pet_idx number NOT NULL,
   -- 회원번호
   member_idx number NOT NULL,
   -- 펫 이름
   pet_name varchar2(30) NOT NULL,
   -- 펫 나이
   pet_age varchar2(30) NOT NULL,
   -- 중성화여부(1,0)
   pet_neut number NOT NULL,
   -- 펫 성별(F,M)
   pet_gender char(1) NOT NULL,
   -- 펫 품종
   pet_kind varchar2(30) NOT NULL,
   -- 펫 특징
   pet_char varchar2(200) NOT NULL,
   -- 펫 사진
   pet_photo varchar2(100),
   -- 펫 종(dog,cat)
   pet_species char(3) NOT NULL,
   PRIMARY KEY (pet_idx)
);


-- qna게시판
CREATE TABLE qna_board
(
	-- qna게시판 일련번호
	qna_idx number NOT NULL,
	-- 질문 제목
	qna_title varchar2(200) NOT NULL,
	-- 질문 내용
	qna_content varchar2(2000) NOT NULL,
	-- 사진
	qna_photo varchar2(200),
	-- 등록일
	qna_regdate date NOT NULL,
	-- 처리상태(답변완료,미완료)(com,Inc)
	qna_stt char(3) NOT NULL,
	-- 공개여부(비공개,공개)(pri,pub)
	qna_OPENSTATUS char(3) NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (qna_idx)
);


--QnA 댓글
CREATE TABLE qna_Comment
(
   -- QnA 댓글 일련번호
   qnacomm_idx number NOT NULL,
   -- 댓글 내용
   qnacomm_content varchar2(1000) NOT NULL,
   -- 댓글 등록일
   qnacomm_regdate date NOT NULL,
   -- 후기 일련번호
   qna_idx number NOT NULL,
   PRIMARY KEY (qnacomm_idx)
);

-- 유기동물신고 테이블
CREATE TABLE REPORT_ABANDONED_ANIMALS
(
	-- 유기동물신고 일련번호
	dclrAbnd_idx number NOT NULL,
	-- 주소
	dclrAbnd_loc varchar2(100) NOT NULL,
	-- 제목
	dclrAbnd_title varchar2(100) NOT NULL,
	-- 내용
	dclrAbnd_content varchar2(2000) NOT NULL,
	-- 사진
	dclrAbnd_photo varchar2(100),
	-- 등록일
	dclrAbnd_regdate date NOT NULL,
	-- 처리상태(접수,처리중,완료)(reg,prg,cmp)
	dclrAbnd_stts char(3) NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (dclrAbnd_idx)
);


-- 후기 테이블
CREATE TABLE review_board
(
	-- 후기 일련번호
	review_idx number NOT NULL,
	-- 내용
	review_content  varchar2(1000) NOT NULL,
	-- 등록일
	review_regdate date NOT NULL,
	-- 사진
	review_photo varchar2(200),
	-- 입양/시터 후기 플래그(adp, sit, shp) 
	review_flag char(3) NOT NULL,
	-- 시터 일련번호
	sit_idx number,
	-- 회원번호
	member_idx number NOT NULL,
	-- 유기동물 일련번호
	abani_idx number,
    -- 상품 일련번호
	product_idx number,
	PRIMARY KEY (review_idx)
);


-- 후기 댓글 테이블
CREATE TABLE review_Comment
(
	-- 후기 댓글 일련번호
	reviewcomm_idx number NOT NULL,
	-- 댓글 내용
	reviewcomm_content varchar2(1000) NOT NULL,
	-- 댓글 등록일
	reviewcomm_regdate date NOT NULL,
	-- 후기 일련번호
	review_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (reviewcomm_idx)
);


-- 후기 좋아요 테이블
CREATE TABLE review_like
(
	-- 후기 좋아요 일련번호
	reviewlike_idx number NOT NULL,
	-- 좋아요 상태 (0,1)
	reviewlike_stt number NOT NULL,
	-- 후기 일련번호
	review_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (reviewlike_idx)
);


-- 시터 테이블
CREATE TABLE sitter
(
	-- 시터 일련번호
	sit_idx number NOT NULL,
	-- 시터 제목
	sit_title varchar2(100) NOT NULL,
	-- 시터 소개글
	sit_intro varchar2(2000) NOT NULL,
	-- 시터 주소
	sit_addr varchar2(100) NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	-- 소형 요금
	s_fee number,
	-- 중형 요금
	m_fee number,
	-- 대형 요금
	b_fee number,
	-- 이용고객 수 
	sit_CLIENT number NOT NULL,
	-- 시터 총 별점
	sit_starpoint number NOT NULL,
	-- 시터가 별점을 받은 횟수 
	sit_starcount number NOT NULL,
	PRIMARY KEY (sit_idx)
);
ALTER TABLE SITTER ADD SIT_LATITUDE number DEFAULT 37.478763 NOT NULL;
ALTER TABLE SITTER ADD SIT_LONGTITUDE number DEFAULT 126.878790 NOT NULL;

-- 시터신청 폼 테이블
CREATE TABLE SITTER_APPLICATION
(
	-- 시터신청 일련번호
	SITAPL_idx number NOT NULL,
	-- 신청자 이름
	SITAPL_name varchar2(30) NOT NULL,
	-- 신청자 성별(F,M)
	SITAPL_gender char(1) NOT NULL,
	-- 지원자 생년월일
	SITAPL_birth date NOT NULL,
	-- 지원자 전화번호
	SITAPL_tel varchar2(30) NOT NULL,
	-- 지원자 주소
	SITAPL_addr varchar2(100) NOT NULL,
	-- 신청자 가족 흡연 여부(0,1)
	SITAPL_smkStt number NOT NULL,
	-- 신청자 반려동물 키운 기간
	SITAPL_havepet varchar2(30) NOT NULL,
	-- 반려동물 키운 경험 
	sitapl_exp varchar2(2000) NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (SITAPL_idx)
);


-- 시터 사진 테이블
CREATE TABLE sitter_photo
(
	-- 사진 일련번호
	sitphoto_idx number NOT NULL,
	-- 사진 경로
	sitphoto_photo varchar2(100),
	-- 시터 일련번호
	sit_idx number NOT NULL,
	PRIMARY KEY (sitphoto_idx)
);


-- 시터 태그
CREATE TABLE sitter_tag
(
	-- 시터 일련번호
	sit_idx number NOT NULL,
	-- 태그종류 테이블 일련번호
	typTag_idx number NOT NULL
);


-- 펫시터 예약 테이블
CREATE TABLE sit_book
(
	-- 펫시터 예약 일련번호
	sbook_idx number NOT NULL,
	-- 시터 일련번호
	sit_idx number NOT NULL,
    -- 예약 멤버 일련번호
    member_idx number NOT NULL,
    -- 예약 한 날짜
    sbook_date date default sysdate NOT NULL,
	-- 예약 시작일
	sbook_start date NOT NULL,
	-- 예약 마지막일
	sbook_end date NOT NULL,
    -- 예약 상태 ( 대기 : stand by -> stb // 확정 : fix // 취소 : cancel -> can )
    sbook_status char(3) DEFAULT 'stb' NOT NULL,
    -- 예약한 반려동물 크기 및 종류
    p_cellData varchar2(100), 
    -- 예약한 합계 금액
    totalPrice varchar2(100),
    -- 후기 작성 체크 ( NO -> 0 // YES -> 1 )
    review_check number DEFAULT 0 NOT NULL,
    sbook_date date,
	PRIMARY KEY (sbook_idx)
);

-- 서비스 테이블
CREATE TABLE TYPE_SERVICE
(
	-- 서비스 일련번호
	typSrv_idx number NOT NULL,
	-- 서비스 타입
	typSrv_service varchar2(30) NOT NULL,
	-- 서비스 설명
	typSrv_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typSrv_idx)
);


-- 태그 종류 테이블
CREATE TABLE TYPE_Tag
(
	-- 태그종류 테이블 일련번호
	typTag_idx number NOT NULL,
	-- 태그 종류(아파트, 반려동물 없음 등)
	typTag_type varchar2(30) NOT NULL,
	-- 태그 설명
	typTag_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typTag_idx)
);


-- 상품 테이블
CREATE TABLE product
(
	-- 상품 일련번호
	product_idx number NOT NULL,
	-- 상품 이름
	product_name varchar2(100) NOT NULL,
	-- 상품 가격
	product_price number NOT NULL,
	-- 상품 설명
	product_description varchar2(2000) NOT NULL,
	-- 상품 등록일
	product_regdate date NOT NULL,
	-- 상품 카테고리 (약,필수용품,굿즈) (gds, ess , mdc)
	product_category char(3) NOT NULL,
	-- 상품 재고
	product_stock number NOT NULL,
	PRIMARY KEY (product_idx)
);


-- 상품이미지 테이블
CREATE TABLE product_image
(
	-- 상품 이미지 일련번호
	pdt_image_idx number NOT NULL,
	-- 상품 이미지 파일이름
	pdt_image_file varchar2(200) NOT NULL,
	-- 상품 일련번호
	product_idx number NOT NULL,
	PRIMARY KEY (pdt_image_idx)
);

-- 장바구니 테이블
CREATE TABLE cart
(
	-- 장바구니 일련번호
	cart_idx number NOT NULL,
	-- 상품 일련번호
	product_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
     --판매수량
    product_quanity number NOT NULL,
    
	PRIMARY KEY (cart_idx)
);

-- 할인 테이블
create table sale(
    member_grade varchar2(30),
    discount_rate number
); 


-- 결제 테이블
CREATE TABLE payment
(
	-- 결제 일련번호
	payment_idx number NOT NULL,
	-- 상품 아이디
	merchant_uid varchar2(200) NOT NULL,
	-- 가격
	amount number NOT NULL,
	-- pg사
	pg varchar2(100) NOT NULL,
	-- 결제상태(결제,환불) pay,rfn
	payStus char(3) DEFAULT 'pay' NOT NULL,
	-- 결제일
	pay_date date NOT NULL,
	-- 판매자
	seller varchar2(20) DEFAULT 'PetsFinder' NOT NULL,
	-- 상품명
	productname varchar2(300) NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	PRIMARY KEY (payment_idx)
);


-- 판매내역 테이블

CREATE TABLE SALES_DETAILS
(
	-- 판매내역 일련번호
	sales_idx number NOT NULL,
	-- 판매수량
	product_quanity number NOT NULL,
	-- 상품 일련번호
	product_idx number NOT NULL,
	-- 회원번호
	member_idx number NOT NULL,
	-- 결제 일련번호
	payment_idx number NOT NULL,
	PRIMARY KEY (sales_idx)
);


-- 배송지 정보 테이블
CREATE TABLE shippingLoc_info
(
	-- 배송지 정보 일련번호
	shiplocInfo_idx number NOT NULL,
	-- 수령인
	recipient varchar2(30) NOT NULL,
	-- 연락처
	recipient_phone varchar2(30) NOT NULL,
	-- 배송지 주소
	SHIPPING_LOCATION varchar2(100) NOT NULL,
	-- 배송상태(PRP : 배송준비, dlv : 배송중, cmp : 배송완료)
	DELIVERY_STATUS char(3)  DEFAULT 'prp' NOT NULL,
	-- 결제 일련번호
	payment_idx number NOT NULL,
	PRIMARY KEY (shiplocInfo_idx)
);


-- 최근 본 상품 테이블
create table recent_board(
    recent_idx number NOT NULL,
    product_idx number NOT NULL,
    regidate date default sysdate NOT NULL,
    PRIMARY KEY (recent_idx)
);

--웹소켓 내용 저장 테이블
CREATE TABLE "KOSMO"."WEB_CHAT" 
(   "ROOM_IDX" NUMBER, 
    "ROOM_ID" VARCHAR2(60 BYTE), 
    "MEMBER_IDX" NUMBER, 
    "MESSAGE" VARCHAR2(2000 BYTE), 
    "CHAT_TIME" DATE DEFAULT SYSDATE, 
    "SENDER_ID" VARCHAR2(30 BYTE), 
    "RECEIVER_ID" VARCHAR2(30 BYTE)
);

----------------------------------------------------------------------------------
/* Create Foreign Keys */

ALTER TABLE ADOPTION_APPLICATION
	ADD FOREIGN KEY (abani_idx)
	REFERENCES abandonedAnimal (abani_idx)
;


ALTER TABLE ADOPTION_list
	ADD FOREIGN KEY (abani_idx)
	REFERENCES abandonedAnimal (abani_idx)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (abani_idx)
	REFERENCES abandonedAnimal (abani_idx)
;


ALTER TABLE ADOPTION_APPLICATION
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE ADOPTION_list
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE APPROVAL
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE pet
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE qna_board
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE REPORT_ABANDONED_ANIMALS
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE review_Comment
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE review_like
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE sitter
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE SITTER_APPLICATION
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE review_Comment
	ADD FOREIGN KEY (review_idx)
	REFERENCES review_board (review_idx)
;


ALTER TABLE review_like
	ADD FOREIGN KEY (review_idx)
	REFERENCES review_board (review_idx)
;


ALTER TABLE AVAILABLE_SERVICES
	ADD FOREIGN KEY (sit_idx)
	REFERENCES sitter (sit_idx)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (sit_idx)
	REFERENCES sitter (sit_idx)
;


ALTER TABLE sitter_photo
	ADD FOREIGN KEY (sit_idx)
	REFERENCES sitter (sit_idx)
;


ALTER TABLE sitter_tag
	ADD FOREIGN KEY (sit_idx)
	REFERENCES sitter (sit_idx)
;


ALTER TABLE sit_book
	ADD FOREIGN KEY (sit_idx)
	REFERENCES sitter (sit_idx)
;


ALTER TABLE RESIDENCE_TYPE
	ADD FOREIGN KEY (SITAPL_idx)
	REFERENCES SITTER_APPLICATION (SITAPL_idx)
;


ALTER TABLE AVAILABLE_SERVICES
	ADD FOREIGN KEY (typSrv_idx)
	REFERENCES TYPE_SERVICE (typSrv_idx)
;


ALTER TABLE sitter_tag
	ADD FOREIGN KEY (typTag_idx)
	REFERENCES TYPE_Tag (typTag_idx)
;

ALTER TABLE cart
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;

ALTER TABLE cart
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
;

ALTER TABLE product_image
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
;

/* Comments */

COMMENT ON TABLE abandonedAnimal IS '유기동물 테이블';
COMMENT ON COLUMN abandonedAnimal.abani_idx IS '유기동물 일련번호';
COMMENT ON COLUMN abandonedAnimal.abani_kind IS '유기동물 품종';
COMMENT ON COLUMN abandonedAnimal.abani_gender IS '유기동물 성별(F,M)';
COMMENT ON COLUMN abandonedAnimal.abani_loc IS '유기동물 발생장소';
COMMENT ON COLUMN abandonedAnimal.abani_regdate IS '유기동물 접수일';
COMMENT ON COLUMN abandonedAnimal.abani_neut IS '유기동물 중성화여부(1,0)';
COMMENT ON COLUMN abandonedAnimal.abani_stat IS '유기동물 상태 입양/보호(adopt,prtct)';
COMMENT ON COLUMN abandonedAnimal.abani_photo IS '유기동물 사진';
COMMENT ON COLUMN abandonedAnimal.abani_age IS '동물 나이 ';
COMMENT ON COLUMN abandonedAnimal.abani_vaccin IS '예방접종 유무(0,1)';
COMMENT ON COLUMN abandonedAnimal.abani_species IS '유기동물 종(cat,dog)';
COMMENT ON COLUMN abandonedAnimal.abani_char IS '유기동물 특징';
COMMENT ON TABLE ADOPTION_APPLICATION IS '입양신청 테이블';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_idx IS '입양신청 일련번호';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_name IS '신청자 이름';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_gender IS '신청자 성별(F,M)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_birth IS '신청자 생년월일';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_tel IS '신청자 전화번호';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_addr IS '신청자 주소';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_job IS '신청자 가족 직업여부 (0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_exp IS '신청자 반려동물 키운 경험(0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_havepet IS '신청자가 반려동물 키운 기간';
COMMENT ON COLUMN ADOPTION_APPLICATION.adpapl_fNum IS '신청자 가족 수 ';
COMMENT ON COLUMN ADOPTION_APPLICATION.abani_idx IS '유기동물 일련번호';
COMMENT ON COLUMN ADOPTION_APPLICATION.member_idx IS '회원번호';
COMMENT ON TABLE ADOPTION_list IS '입양 목록';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_idx IS '입양 목록 일련번호';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_date IS '입양날짜 ';
COMMENT ON COLUMN ADOPTION_list.abani_idx IS '유기동물 일련번호';
COMMENT ON COLUMN ADOPTION_list.member_idx IS '회원번호';
COMMENT ON TABLE APPROVAL IS '승인 테이블';
COMMENT ON COLUMN APPROVAL.APR_idx IS '승인 일련번호';
COMMENT ON COLUMN APPROVAL.APR_stts IS '승인 허가여부(Y,N)';
COMMENT ON COLUMN APPROVAL.APR_rsn IS '사유';
COMMENT ON COLUMN APPROVAL.APR_type IS '타입(adt ,sit)입양/시터';
COMMENT ON COLUMN APPROVAL.member_idx IS '회원번호';
COMMENT ON TABLE AVAILABLE_SERVICES IS '이용가능서비스';
COMMENT ON COLUMN AVAILABLE_SERVICES.sit_idx IS '시터 일련번호';
COMMENT ON COLUMN AVAILABLE_SERVICES.typSrv_idx IS '서비스 일련번호';
COMMENT ON TABLE faq_board IS 'faq게시판 테이블';
COMMENT ON COLUMN faq_board.faq_idx IS 'faq게시판 일련번호';
COMMENT ON COLUMN faq_board.faq_QUESTION IS '질문';
COMMENT ON COLUMN faq_board.faq_ANSWER IS '답변';
COMMENT ON COLUMN faq_board.faq_photo IS '사진';
COMMENT ON TABLE member IS '회원테이블';
COMMENT ON COLUMN member.member_idx IS '회원번호';
COMMENT ON COLUMN member.member_id IS '아이디';
COMMENT ON COLUMN member.member_pass IS '비밀번호';
COMMENT ON COLUMN member.member_type IS '일반/시터/관리자(nor,sit,mag)';
COMMENT ON COLUMN member.member_email IS '이메일';
COMMENT ON COLUMN member.member_addr IS '주소';
COMMENT ON COLUMN member.member_name IS '이름';
COMMENT ON COLUMN member.member_phone IS '전화번호';
COMMENT ON COLUMN member.member_reg IS '회원가입일';
COMMENT ON COLUMN member.member_birth IS '회원 나이(생일)';
COMMENT ON COLUMN member.member_gender IS '회원 성별(F,M)';
COMMENT ON COLUMN member.member_photo IS '회원 프로필 사진';
COMMENT ON TABLE NEW_TABLE IS '새 테이블';
COMMENT ON TABLE NEW_TABLE IS '새 테이블';
COMMENT ON TABLE NOTICE_BOARD IS '공지게시판 테이블';
COMMENT ON COLUMN NOTICE_BOARD.notboard_idx IS '공지게시판 일련번호';
COMMENT ON COLUMN NOTICE_BOARD.notboard_title IS '제목';
COMMENT ON COLUMN NOTICE_BOARD.notboard_content IS '내용';
COMMENT ON COLUMN NOTICE_BOARD.notboard_regdate IS '작성일';
COMMENT ON COLUMN NOTICE_BOARD.notboard_hit IS '조회수';
COMMENT ON COLUMN NOTICE_BOARD.notboard_photo IS '사진';
COMMENT ON TABLE pet IS '펫 테이블';
COMMENT ON COLUMN pet.pet_idx IS '펫번호';
COMMENT ON COLUMN pet.member_idx IS '회원번호';
COMMENT ON COLUMN pet.pet_name IS '펫 이름';
COMMENT ON COLUMN pet.pet_age IS '펫 나이';
COMMENT ON COLUMN pet.pet_neut IS '중성화여부(Y,N)';
COMMENT ON COLUMN pet.pet_gender IS '펫 성별(F,M)';
COMMENT ON COLUMN pet.pet_kind IS '펫 품종';
COMMENT ON COLUMN pet.pet_char IS '펫 특징';
COMMENT ON COLUMN pet.pet_photo IS '펫 사진';
COMMENT ON COLUMN pet.pet_species IS '펫 종(dog,cat)';
COMMENT ON TABLE qna_board IS 'qna게시판';
COMMENT ON COLUMN qna_board.qna_idx IS 'qna게시판 일련번호';
COMMENT ON COLUMN qna_board.qna_title IS '질문 제목';
COMMENT ON COLUMN qna_board.qna_content IS '질문 내용';
COMMENT ON COLUMN qna_board.qna_photo IS '사진';
COMMENT ON COLUMN qna_board.qna_regdate IS '등록일';
COMMENT ON COLUMN qna_board.qna_stt IS '처리상태(답변완료,미완료)(com,Inc)';
COMMENT ON COLUMN qna_board.qna_OPENSTATUS IS '공개여부(비공개,공개)(pri,pub)';
COMMENT ON COLUMN qna_board.member_idx IS '회원번호';
COMMENT ON TABLE REPORT_ABANDONED_ANIMALS IS '유기동물신고 테이블';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_idx IS '유기동물신고 일련번호';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_loc IS '주소';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_title IS '제목';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_content IS '내용';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_photo IS '사진';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_regdate IS '등록일';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_stts IS '처리상태(접수,처리중,완료)(reg,PRG,CMP)';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.member_idx IS '회원번호';
COMMENT ON TABLE RESIDENCE_TYPE IS '거주지 유형 테이블';
COMMENT ON COLUMN RESIDENCE_TYPE.SITAPL_idx IS '시터신청 일련번호';
COMMENT ON COLUMN RESIDENCE_TYPE.RSD_TYP IS '거주지 유형';
COMMENT ON TABLE review_board IS '시터후기 테이블';
COMMENT ON COLUMN review_board.review_idx IS '후기 일련번호';
COMMENT ON COLUMN review_board.review_title IS '제목';
COMMENT ON COLUMN review_board.review_content IS '내용';
COMMENT ON COLUMN review_board.review_regdate IS '등록일';
COMMENT ON COLUMN review_board.review_photo IS '사진';
COMMENT ON COLUMN review_board.review_flag IS '입양/시터 후기 플래그(adp,sit) ';
COMMENT ON COLUMN review_board.sit_idx IS '시터 일련번호';
COMMENT ON COLUMN review_board.member_idx IS '회원번호';
COMMENT ON COLUMN review_board.abani_idx IS '유기동물 일련번호';
COMMENT ON TABLE review_Comment IS '시터후기 댓글 테이블';
COMMENT ON COLUMN review_Comment.reviewcomm_idx IS '입양후기 댓글 일련번호';
COMMENT ON COLUMN review_Comment.reviewcomm_content IS '댓글 내용';
COMMENT ON COLUMN review_Comment.reviewcomm_regdate IS '댓글 등록일';
COMMENT ON COLUMN review_Comment.review_idx IS '후기 일련번호';
COMMENT ON COLUMN review_Comment.member_idx IS '회원번호';
COMMENT ON TABLE review_like IS '시터후기 좋아요 테이블';
COMMENT ON COLUMN review_like.reviewlike_idx IS '입양후기 좋아요 일련번호';
COMMENT ON COLUMN review_like.reviewlike_stt IS '좋아요 상태 (0,1)';
COMMENT ON COLUMN review_like.review_idx IS '후기 일련번호';
COMMENT ON COLUMN review_like.member_idx IS '회원번호';
COMMENT ON TABLE sitter IS '시터 테이블';
COMMENT ON COLUMN sitter.sit_idx IS '시터 일련번호';
COMMENT ON COLUMN sitter.sit_title IS '시터 제목';
COMMENT ON COLUMN sitter.sit_intro IS '시터 소개글';
COMMENT ON COLUMN sitter.sit_addr IS '시터 주소';
COMMENT ON COLUMN sitter.member_idx IS '회원번호';
COMMENT ON COLUMN sitter.s_fee IS '소형 요금';
COMMENT ON COLUMN sitter.m_fee IS '중형 요금';
COMMENT ON COLUMN sitter.b_fee IS '대형 요금';
COMMENT ON COLUMN sitter.sit_CLIENT IS '이용고객 수 ';
COMMENT ON COLUMN sitter.sit_startpoint IS '시터 총 별점';
COMMENT ON COLUMN sitter.sit_startcount IS '시터가 별점을 받은 횟수 ';
COMMENT ON TABLE SITTER_APPLICATION IS '시터신청 폼 테이블';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_idx IS '시터신청 일련번호';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_name IS '신청자 이름';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_gender IS '신청자 성별(F,M)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_birth IS '지원자 생년월일';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_tel IS '지원자 전화번호';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_addr IS '지원자 주소';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_smkStt IS '신청자 가족 흡연 여부(0,1)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_havepet IS '신청자 반려동물 키운 기간';
COMMENT ON COLUMN SITTER_APPLICATION.stiapl_exp IS '반려동물 키운 경험 ';
COMMENT ON COLUMN SITTER_APPLICATION.member_idx IS '회원번호';
COMMENT ON TABLE sitter_photo IS '시터 사진 테이블';
COMMENT ON COLUMN sitter_photo.sitphoto_idx IS '사진 일련번호';
COMMENT ON COLUMN sitter_photo.sitphoto_photo IS '사진 경로';
COMMENT ON COLUMN sitter_photo.sit_idx IS '시터 일련번호';
COMMENT ON TABLE sitter_tag IS '시터 태그';
COMMENT ON COLUMN sitter_tag.sit_idx IS '시터 일련번호';
COMMENT ON COLUMN sitter_tag.typTag_idx IS '태그종류 테이블 일련번호';
COMMENT ON TABLE sit_book IS '펫시터 예약 테이블';
COMMENT ON COLUMN sit_book.sbook_idx IS '펫시터 예약 일련번호';
COMMENT ON COLUMN sit_book.sit_idx IS '시터 일련번호';
COMMENT ON COLUMN sit_book.sbook_start IS '예약 시작일';
COMMENT ON COLUMN sit_book.sbook_end IS '예약 마지막일';
COMMENT ON TABLE TYPE_SERVICE IS '새 테이블';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_idx IS '서비스 일련번호';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_service IS '서비스 타입';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_expln IS '서비스 설명';
COMMENT ON TABLE TYPE_Tag IS '태그 종류 테이블';
COMMENT ON COLUMN TYPE_Tag.typTag_idx IS '태그종류 테이블 일련번호';
COMMENT ON COLUMN TYPE_Tag.typTag_type IS '태그 종류(아파트, 반려동물 없음 등)';
COMMENT ON COLUMN TYPE_Tag.typTag_expln IS '태그 설명';


