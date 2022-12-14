
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

-- ???????? ??????
CREATE SEQUENCE SEQ_abani_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_ADPAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_ADOPlist_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- FAQ ??????
CREATE SEQUENCE SEQ_faq_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ??????
CREATE SEQUENCE SEQ_member_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???????? ??????
CREATE SEQUENCE SEQ_notboard_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???????? ??????
CREATE SEQUENCE SEQ_pet_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- Q&A ?????? ??????
CREATE SEQUENCE SEQ_qna_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???????? ???? ??????
CREATE SEQUENCE SEQ_REPORT_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ?????? ??????
CREATE SEQUENCE SEQ_review_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_reviewcomm_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ?????? ??????
CREATE SEQUENCE SEQ_reviewlike_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_SITAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ????(????, ????????) ??????
CREATE SEQUENCE SEQ_sitphoto_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? (???????? ????) ??????
CREATE SEQUENCE SEQ_sitter_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_sbook_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???????? ?????? ??????
CREATE SEQUENCE SEQ_typSrv_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_typTag_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ?????? ??????
CREATE SEQUENCE SEQ_pdt_image_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ??????
CREATE SEQUENCE SEQ_product_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???????? ??????
CREATE SEQUENCE SEQ_cart_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
--?????? ??????
CREATE SEQUENCE SEQ_web_chat_room_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
--QnA ???? ??????
CREATE SEQUENCE SEQ_qnacomm_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ??????
CREATE SEQUENCE SEQ_payment_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ???? ??????
CREATE SEQUENCE SEQ_sales_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ??????
CREATE SEQUENCE SEQ_shiplocInfo_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ???? ?? ???? ??????
CREATE SEQUENCE seq_recentboard_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;

/* Create Tables */

-- ???????? ??????
CREATE TABLE abandonedAnimal
(
	-- ???????? ????????
	abani_idx number NOT NULL,
	-- ???????? ????
	abani_kind varchar2(30) NOT NULL,
	-- ???????? ????(F,M)
	abani_gender char(1) NOT NULL,
	-- ???????? ????????
	abani_loc varchar2(100) NOT NULL,
	-- ???????? ??????
	abani_regdate date NOT NULL,
	-- ???????? ??????????(1,0)
	abani_neut number NOT NULL,
	-- ???????? ???? ????/????(adopt,prtct)
	abani_stat char(5) NOT NULL,
	-- ???????? ????
	abani_photo varchar2(100) NOT NULL,
	-- ???? ???? 
	abani_age varchar2(30) NOT NULL,
	-- ???????? ????(0,1)
	abani_vaccin number NOT NULL,
	-- ???????? ??(cat,dog)
	abani_species char(3) NOT NULL,
	-- ???????? ????
	abani_char varchar2(1000) NOT NULL,
	PRIMARY KEY (abani_idx)
);


-- ???????? ??????
CREATE TABLE ADOPTION_APPLICATION
(
	-- ???????? ????????
	ADPAPL_idx number NOT NULL,
	-- ?????? ????
	ADPAPL_name varchar2(30) NOT NULL,
	-- ?????? ????(F,M)
	ADPAPL_gender char(1) NOT NULL,
	-- ?????? ????????
	ADPAPL_birth date NOT NULL,
	-- ?????? ????????
	ADPAPL_tel varchar2(30) NOT NULL,
	-- ?????? ????
	ADPAPL_addr varchar2(100) NOT NULL,
	-- ?????? ???? ???????? (0,1)
	ADPAPL_job number NOT NULL,
	-- ?????? ???????? ???? ????(0,1)
	ADPAPL_exp number NOT NULL,
	-- ???????? ???????? ???? ????
	ADPAPL_havepet varchar2(50),
	-- ?????? ???? ?? 
	adpapl_fNum number NOT NULL,
	-- ???????? ????????
	abani_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
    -- ????????????(rej: ????, udr: ??????, apl: ????) 
    ADPAPL_stt char(3) default 'udr' NOT NULL,
	PRIMARY KEY (ADPAPL_idx)
);

-- ???? ????
CREATE TABLE ADOPTION_list
(
	-- ???? ???? ????????
	ADOPlist_idx number NOT NULL,
	-- ???????? 
	ADOPlist_date date NOT NULL,
	-- ???????? ????????
	abani_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (ADOPlist_idx)
);


-- ??????????????
CREATE TABLE AVAILABLE_SERVICES
(
	-- ???? ????????
	sit_idx number NOT NULL,
	-- ?????? ????????
	typSrv_idx number NOT NULL
);


-- faq?????? ??????
CREATE TABLE faq_board
(
	-- faq?????? ????????
	faq_idx number NOT NULL,
	-- ????
	faq_QUESTION varchar2(100) NOT NULL,
	-- ????
	faq_ANSWER varchar2(2000) NOT NULL,
	-- ????
	faq_photo varchar2(100),
	PRIMARY KEY (faq_idx)
);


--QnA ???? ??????
CREATE TABLE qna_Comment
(
   -- QnA ???? ????????
   qnacomm_idx number NOT NULL,
   -- ???? ????
   qnacomm_content varchar2(1000) NOT NULL,
   -- ???? ??????
   qnacomm_regdate date NOT NULL,
   -- ???? ????????
   qna_idx number NOT NULL,
   PRIMARY KEY (qnacomm_idx)
);


-- ??????????
CREATE TABLE member
(
	-- ????????
	member_idx number NOT NULL,
	-- ??????
	member_id varchar2(30) NOT NULL UNIQUE,
	-- ????????
	member_pass varchar2(30) NOT NULL,
	-- ????/????/??????(nor,sit,mag)
	member_type char(3) NOT NULL,
	-- ??????
	member_email varchar2(30) NOT NULL UNIQUE,
	-- ????
	member_addr varchar2(100) NOT NULL,
	-- ????
	member_name varchar2(30) NOT NULL,
	-- ????????
	member_phone varchar2(30) NOT NULL,
	-- ??????????
	member_reg date NOT NULL,
	-- ???? ????(????)
	member_birth date NOT NULL,
	-- ???? ????(F,M)
	member_gender char(1) NOT NULL,
	-- ???? ?????? ????
	member_photo varchar2(100),
	PRIMARY KEY (member_idx)
);


-- ?????????? ??????
CREATE TABLE NOTICE_BOARD
(
	-- ?????????? ????????
	notboard_idx number NOT NULL,
	-- ????
	notboard_title varchar2(200) NOT NULL,
	-- ????
	notboard_content varchar2(2000) NOT NULL,
	-- ??????
	notboard_regdate date NOT NULL,
	-- ??????
	notboard_hit number NOT NULL,
	-- ????
	notboard_photo varchar2(100),
	PRIMARY KEY (notboard_idx)
);


CREATE TABLE pet
(
   -- ??????
   pet_idx number NOT NULL,
   -- ????????
   member_idx number NOT NULL,
   -- ?? ????
   pet_name varchar2(30) NOT NULL,
   -- ?? ????
   pet_age varchar2(30) NOT NULL,
   -- ??????????(1,0)
   pet_neut number NOT NULL,
   -- ?? ????(F,M)
   pet_gender char(1) NOT NULL,
   -- ?? ????
   pet_kind varchar2(30) NOT NULL,
   -- ?? ????
   pet_char varchar2(200) NOT NULL,
   -- ?? ????
   pet_photo varchar2(100),
   -- ?? ??(dog,cat)
   pet_species char(3) NOT NULL,
   PRIMARY KEY (pet_idx)
);


-- qna??????
CREATE TABLE qna_board
(
	-- qna?????? ????????
	qna_idx number NOT NULL,
	-- ???? ????
	qna_title varchar2(200) NOT NULL,
	-- ???? ????
	qna_content varchar2(2000) NOT NULL,
	-- ????
	qna_photo varchar2(200),
	-- ??????
	qna_regdate date NOT NULL,
	-- ????????(????????,??????)(com,Inc)
	qna_stt char(3) NOT NULL,
	-- ????????(??????,????)(pri,pub)
	qna_OPENSTATUS char(3) NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (qna_idx)
);


--QnA ????
CREATE TABLE qna_Comment
(
   -- QnA ???? ????????
   qnacomm_idx number NOT NULL,
   -- ???? ????
   qnacomm_content varchar2(1000) NOT NULL,
   -- ???? ??????
   qnacomm_regdate date NOT NULL,
   -- ???? ????????
   qna_idx number NOT NULL,
   PRIMARY KEY (qnacomm_idx)
);

-- ???????????? ??????
CREATE TABLE REPORT_ABANDONED_ANIMALS
(
	-- ???????????? ????????
	dclrAbnd_idx number NOT NULL,
	-- ????
	dclrAbnd_loc varchar2(100) NOT NULL,
	-- ????
	dclrAbnd_title varchar2(100) NOT NULL,
	-- ????
	dclrAbnd_content varchar2(2000) NOT NULL,
	-- ????
	dclrAbnd_photo varchar2(100),
	-- ??????
	dclrAbnd_regdate date NOT NULL,
	-- ????????(????,??????,????)(reg,prg,cmp)
	dclrAbnd_stts char(3) NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (dclrAbnd_idx)
);


-- ???? ??????
CREATE TABLE review_board
(
	-- ???? ????????
	review_idx number NOT NULL,
	-- ????
	review_content  varchar2(1000) NOT NULL,
	-- ??????
	review_regdate date NOT NULL,
	-- ????
	review_photo varchar2(200),
	-- ????/???? ???? ??????(adp, sit, shp) 
	review_flag char(3) NOT NULL,
	-- ???? ????????
	sit_idx number,
	-- ????????
	member_idx number NOT NULL,
	-- ???????? ????????
	abani_idx number,
    -- ???? ????????
	product_idx number,
	PRIMARY KEY (review_idx)
);


-- ???? ???? ??????
CREATE TABLE review_Comment
(
	-- ???? ???? ????????
	reviewcomm_idx number NOT NULL,
	-- ???? ????
	reviewcomm_content varchar2(1000) NOT NULL,
	-- ???? ??????
	reviewcomm_regdate date NOT NULL,
	-- ???? ????????
	review_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (reviewcomm_idx)
);


-- ???? ?????? ??????
CREATE TABLE review_like
(
	-- ???? ?????? ????????
	reviewlike_idx number NOT NULL,
	-- ?????? ???? (0,1)
	reviewlike_stt number NOT NULL,
	-- ???? ????????
	review_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (reviewlike_idx)
);


-- ???? ??????
CREATE TABLE sitter
(
	-- ???? ????????
	sit_idx number NOT NULL,
	-- ???? ????
	sit_title varchar2(100) NOT NULL,
	-- ???? ??????
	sit_intro varchar2(2000) NOT NULL,
	-- ???? ????
	sit_addr varchar2(100) NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	-- ???? ????
	s_fee number,
	-- ???? ????
	m_fee number,
	-- ???? ????
	b_fee number,
	-- ???????? ?? 
	sit_CLIENT number NOT NULL,
	-- ???? ?? ????
	sit_starpoint number NOT NULL,
	-- ?????? ?????? ???? ???? 
	sit_starcount number NOT NULL,
	PRIMARY KEY (sit_idx)
);
ALTER TABLE SITTER ADD SIT_LATITUDE number DEFAULT 37.478763 NOT NULL;
ALTER TABLE SITTER ADD SIT_LONGTITUDE number DEFAULT 126.878790 NOT NULL;

-- ???????? ?? ??????
CREATE TABLE SITTER_APPLICATION
(
	-- ???????? ????????
	SITAPL_idx number NOT NULL,
	-- ?????? ????
	SITAPL_name varchar2(30) NOT NULL,
	-- ?????? ????(F,M)
	SITAPL_gender char(1) NOT NULL,
	-- ?????? ????????
	SITAPL_birth date NOT NULL,
	-- ?????? ????????
	SITAPL_tel varchar2(30) NOT NULL,
	-- ?????? ????
	SITAPL_addr varchar2(100) NOT NULL,
	-- ?????? ???? ???? ????(0,1)
	SITAPL_smkStt number NOT NULL,
	-- ?????? ???????? ???? ????
	SITAPL_havepet varchar2(30) NOT NULL,
	-- ???????? ???? ???? 
	sitapl_exp varchar2(2000) NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (SITAPL_idx)
);


-- ???? ???? ??????
CREATE TABLE sitter_photo
(
	-- ???? ????????
	sitphoto_idx number NOT NULL,
	-- ???? ????
	sitphoto_photo varchar2(100),
	-- ???? ????????
	sit_idx number NOT NULL,
	PRIMARY KEY (sitphoto_idx)
);


-- ???? ????
CREATE TABLE sitter_tag
(
	-- ???? ????????
	sit_idx number NOT NULL,
	-- ???????? ?????? ????????
	typTag_idx number NOT NULL
);


-- ?????? ???? ??????
CREATE TABLE sit_book
(
	-- ?????? ???? ????????
	sbook_idx number NOT NULL,
	-- ???? ????????
	sit_idx number NOT NULL,
    -- ???? ???? ????????
    member_idx number NOT NULL,
    -- ???? ?? ????
    sbook_date date default sysdate NOT NULL,
	-- ???? ??????
	sbook_start date NOT NULL,
	-- ???? ????????
	sbook_end date NOT NULL,
    -- ???? ???? ( ???? : stand by -> stb // ???? : fix // ???? : cancel -> can )
    sbook_status char(3) DEFAULT 'stb' NOT NULL,
    -- ?????? ???????? ???? ?? ????
    p_cellData varchar2(100), 
    -- ?????? ???? ????
    totalPrice varchar2(100),
    -- ???? ???? ???? ( NO -> 0 // YES -> 1 )
    review_check number DEFAULT 0 NOT NULL,
    sbook_date date,
	PRIMARY KEY (sbook_idx)
);

-- ?????? ??????
CREATE TABLE TYPE_SERVICE
(
	-- ?????? ????????
	typSrv_idx number NOT NULL,
	-- ?????? ????
	typSrv_service varchar2(30) NOT NULL,
	-- ?????? ????
	typSrv_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typSrv_idx)
);


-- ???? ???? ??????
CREATE TABLE TYPE_Tag
(
	-- ???????? ?????? ????????
	typTag_idx number NOT NULL,
	-- ???? ????(??????, ???????? ???? ??)
	typTag_type varchar2(30) NOT NULL,
	-- ???? ????
	typTag_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typTag_idx)
);


-- ???? ??????
CREATE TABLE product
(
	-- ???? ????????
	product_idx number NOT NULL,
	-- ???? ????
	product_name varchar2(100) NOT NULL,
	-- ???? ????
	product_price number NOT NULL,
	-- ???? ????
	product_description varchar2(2000) NOT NULL,
	-- ???? ??????
	product_regdate date NOT NULL,
	-- ???? ???????? (??,????????,????) (gds, ess , mdc)
	product_category char(3) NOT NULL,
	-- ???? ????
	product_stock number NOT NULL,
	PRIMARY KEY (product_idx)
);


-- ?????????? ??????
CREATE TABLE product_image
(
	-- ???? ?????? ????????
	pdt_image_idx number NOT NULL,
	-- ???? ?????? ????????
	pdt_image_file varchar2(200) NOT NULL,
	-- ???? ????????
	product_idx number NOT NULL,
	PRIMARY KEY (pdt_image_idx)
);

-- ???????? ??????
CREATE TABLE cart
(
	-- ???????? ????????
	cart_idx number NOT NULL,
	-- ???? ????????
	product_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
     --????????
    product_quanity number NOT NULL,
    
	PRIMARY KEY (cart_idx)
);

-- ???? ??????
create table sale(
    member_grade varchar2(30),
    discount_rate number
); 


-- ???? ??????
CREATE TABLE payment
(
	-- ???? ????????
	payment_idx number NOT NULL,
	-- ???? ??????
	merchant_uid varchar2(200) NOT NULL,
	-- ????
	amount number NOT NULL,
	-- pg??
	pg varchar2(100) NOT NULL,
	-- ????????(????,????) pay,rfn
	payStus char(3) DEFAULT 'pay' NOT NULL,
	-- ??????
	pay_date date NOT NULL,
	-- ??????
	seller varchar2(20) DEFAULT 'PetsFinder' NOT NULL,
	-- ??????
	productname varchar2(300) NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	PRIMARY KEY (payment_idx)
);


-- ???????? ??????

CREATE TABLE SALES_DETAILS
(
	-- ???????? ????????
	sales_idx number NOT NULL,
	-- ????????
	product_quanity number NOT NULL,
	-- ???? ????????
	product_idx number NOT NULL,
	-- ????????
	member_idx number NOT NULL,
	-- ???? ????????
	payment_idx number NOT NULL,
	PRIMARY KEY (sales_idx)
);


-- ?????? ???? ??????
CREATE TABLE shippingLoc_info
(
	-- ?????? ???? ????????
	shiplocInfo_idx number NOT NULL,
	-- ??????
	recipient varchar2(30) NOT NULL,
	-- ??????
	recipient_phone varchar2(30) NOT NULL,
	-- ?????? ????
	SHIPPING_LOCATION varchar2(100) NOT NULL,
	-- ????????(PRP : ????????, dlv : ??????, cmp : ????????)
	DELIVERY_STATUS char(3)  DEFAULT 'prp' NOT NULL,
	-- ???? ????????
	payment_idx number NOT NULL,
	PRIMARY KEY (shiplocInfo_idx)
);


-- ???? ?? ???? ??????
create table recent_board(
    recent_idx number NOT NULL,
    product_idx number NOT NULL,
    regidate date default sysdate NOT NULL,
    PRIMARY KEY (recent_idx)
);

--?????? ???? ???? ??????
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

COMMENT ON TABLE abandonedAnimal IS '???????? ??????';
COMMENT ON COLUMN abandonedAnimal.abani_idx IS '???????? ????????';
COMMENT ON COLUMN abandonedAnimal.abani_kind IS '???????? ????';
COMMENT ON COLUMN abandonedAnimal.abani_gender IS '???????? ????(F,M)';
COMMENT ON COLUMN abandonedAnimal.abani_loc IS '???????? ????????';
COMMENT ON COLUMN abandonedAnimal.abani_regdate IS '???????? ??????';
COMMENT ON COLUMN abandonedAnimal.abani_neut IS '???????? ??????????(1,0)';
COMMENT ON COLUMN abandonedAnimal.abani_stat IS '???????? ???? ????/????(adopt,prtct)';
COMMENT ON COLUMN abandonedAnimal.abani_photo IS '???????? ????';
COMMENT ON COLUMN abandonedAnimal.abani_age IS '???? ???? ';
COMMENT ON COLUMN abandonedAnimal.abani_vaccin IS '???????? ????(0,1)';
COMMENT ON COLUMN abandonedAnimal.abani_species IS '???????? ??(cat,dog)';
COMMENT ON COLUMN abandonedAnimal.abani_char IS '???????? ????';
COMMENT ON TABLE ADOPTION_APPLICATION IS '???????? ??????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_idx IS '???????? ????????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_name IS '?????? ????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_gender IS '?????? ????(F,M)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_birth IS '?????? ????????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_tel IS '?????? ????????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_addr IS '?????? ????';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_job IS '?????? ???? ???????? (0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_exp IS '?????? ???????? ???? ????(0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_havepet IS '???????? ???????? ???? ????';
COMMENT ON COLUMN ADOPTION_APPLICATION.adpapl_fNum IS '?????? ???? ?? ';
COMMENT ON COLUMN ADOPTION_APPLICATION.abani_idx IS '???????? ????????';
COMMENT ON COLUMN ADOPTION_APPLICATION.member_idx IS '????????';
COMMENT ON TABLE ADOPTION_list IS '???? ????';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_idx IS '???? ???? ????????';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_date IS '???????? ';
COMMENT ON COLUMN ADOPTION_list.abani_idx IS '???????? ????????';
COMMENT ON COLUMN ADOPTION_list.member_idx IS '????????';
COMMENT ON TABLE APPROVAL IS '???? ??????';
COMMENT ON COLUMN APPROVAL.APR_idx IS '???? ????????';
COMMENT ON COLUMN APPROVAL.APR_stts IS '???? ????????(Y,N)';
COMMENT ON COLUMN APPROVAL.APR_rsn IS '????';
COMMENT ON COLUMN APPROVAL.APR_type IS '????(adt ,sit)????/????';
COMMENT ON COLUMN APPROVAL.member_idx IS '????????';
COMMENT ON TABLE AVAILABLE_SERVICES IS '??????????????';
COMMENT ON COLUMN AVAILABLE_SERVICES.sit_idx IS '???? ????????';
COMMENT ON COLUMN AVAILABLE_SERVICES.typSrv_idx IS '?????? ????????';
COMMENT ON TABLE faq_board IS 'faq?????? ??????';
COMMENT ON COLUMN faq_board.faq_idx IS 'faq?????? ????????';
COMMENT ON COLUMN faq_board.faq_QUESTION IS '????';
COMMENT ON COLUMN faq_board.faq_ANSWER IS '????';
COMMENT ON COLUMN faq_board.faq_photo IS '????';
COMMENT ON TABLE member IS '??????????';
COMMENT ON COLUMN member.member_idx IS '????????';
COMMENT ON COLUMN member.member_id IS '??????';
COMMENT ON COLUMN member.member_pass IS '????????';
COMMENT ON COLUMN member.member_type IS '????/????/??????(nor,sit,mag)';
COMMENT ON COLUMN member.member_email IS '??????';
COMMENT ON COLUMN member.member_addr IS '????';
COMMENT ON COLUMN member.member_name IS '????';
COMMENT ON COLUMN member.member_phone IS '????????';
COMMENT ON COLUMN member.member_reg IS '??????????';
COMMENT ON COLUMN member.member_birth IS '???? ????(????)';
COMMENT ON COLUMN member.member_gender IS '???? ????(F,M)';
COMMENT ON COLUMN member.member_photo IS '???? ?????? ????';
COMMENT ON TABLE NEW_TABLE IS '?? ??????';
COMMENT ON TABLE NEW_TABLE IS '?? ??????';
COMMENT ON TABLE NOTICE_BOARD IS '?????????? ??????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_idx IS '?????????? ????????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_title IS '????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_content IS '????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_regdate IS '??????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_hit IS '??????';
COMMENT ON COLUMN NOTICE_BOARD.notboard_photo IS '????';
COMMENT ON TABLE pet IS '?? ??????';
COMMENT ON COLUMN pet.pet_idx IS '??????';
COMMENT ON COLUMN pet.member_idx IS '????????';
COMMENT ON COLUMN pet.pet_name IS '?? ????';
COMMENT ON COLUMN pet.pet_age IS '?? ????';
COMMENT ON COLUMN pet.pet_neut IS '??????????(Y,N)';
COMMENT ON COLUMN pet.pet_gender IS '?? ????(F,M)';
COMMENT ON COLUMN pet.pet_kind IS '?? ????';
COMMENT ON COLUMN pet.pet_char IS '?? ????';
COMMENT ON COLUMN pet.pet_photo IS '?? ????';
COMMENT ON COLUMN pet.pet_species IS '?? ??(dog,cat)';
COMMENT ON TABLE qna_board IS 'qna??????';
COMMENT ON COLUMN qna_board.qna_idx IS 'qna?????? ????????';
COMMENT ON COLUMN qna_board.qna_title IS '???? ????';
COMMENT ON COLUMN qna_board.qna_content IS '???? ????';
COMMENT ON COLUMN qna_board.qna_photo IS '????';
COMMENT ON COLUMN qna_board.qna_regdate IS '??????';
COMMENT ON COLUMN qna_board.qna_stt IS '????????(????????,??????)(com,Inc)';
COMMENT ON COLUMN qna_board.qna_OPENSTATUS IS '????????(??????,????)(pri,pub)';
COMMENT ON COLUMN qna_board.member_idx IS '????????';
COMMENT ON TABLE REPORT_ABANDONED_ANIMALS IS '???????????? ??????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_idx IS '???????????? ????????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_loc IS '????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_title IS '????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_content IS '????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_photo IS '????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_regdate IS '??????';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_stts IS '????????(????,??????,????)(reg,PRG,CMP)';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.member_idx IS '????????';
COMMENT ON TABLE RESIDENCE_TYPE IS '?????? ???? ??????';
COMMENT ON COLUMN RESIDENCE_TYPE.SITAPL_idx IS '???????? ????????';
COMMENT ON COLUMN RESIDENCE_TYPE.RSD_TYP IS '?????? ????';
COMMENT ON TABLE review_board IS '???????? ??????';
COMMENT ON COLUMN review_board.review_idx IS '???? ????????';
COMMENT ON COLUMN review_board.review_title IS '????';
COMMENT ON COLUMN review_board.review_content IS '????';
COMMENT ON COLUMN review_board.review_regdate IS '??????';
COMMENT ON COLUMN review_board.review_photo IS '????';
COMMENT ON COLUMN review_board.review_flag IS '????/???? ???? ??????(adp,sit) ';
COMMENT ON COLUMN review_board.sit_idx IS '???? ????????';
COMMENT ON COLUMN review_board.member_idx IS '????????';
COMMENT ON COLUMN review_board.abani_idx IS '???????? ????????';
COMMENT ON TABLE review_Comment IS '???????? ???? ??????';
COMMENT ON COLUMN review_Comment.reviewcomm_idx IS '???????? ???? ????????';
COMMENT ON COLUMN review_Comment.reviewcomm_content IS '???? ????';
COMMENT ON COLUMN review_Comment.reviewcomm_regdate IS '???? ??????';
COMMENT ON COLUMN review_Comment.review_idx IS '???? ????????';
COMMENT ON COLUMN review_Comment.member_idx IS '????????';
COMMENT ON TABLE review_like IS '???????? ?????? ??????';
COMMENT ON COLUMN review_like.reviewlike_idx IS '???????? ?????? ????????';
COMMENT ON COLUMN review_like.reviewlike_stt IS '?????? ???? (0,1)';
COMMENT ON COLUMN review_like.review_idx IS '???? ????????';
COMMENT ON COLUMN review_like.member_idx IS '????????';
COMMENT ON TABLE sitter IS '???? ??????';
COMMENT ON COLUMN sitter.sit_idx IS '???? ????????';
COMMENT ON COLUMN sitter.sit_title IS '???? ????';
COMMENT ON COLUMN sitter.sit_intro IS '???? ??????';
COMMENT ON COLUMN sitter.sit_addr IS '???? ????';
COMMENT ON COLUMN sitter.member_idx IS '????????';
COMMENT ON COLUMN sitter.s_fee IS '???? ????';
COMMENT ON COLUMN sitter.m_fee IS '???? ????';
COMMENT ON COLUMN sitter.b_fee IS '???? ????';
COMMENT ON COLUMN sitter.sit_CLIENT IS '???????? ?? ';
COMMENT ON COLUMN sitter.sit_startpoint IS '???? ?? ????';
COMMENT ON COLUMN sitter.sit_startcount IS '?????? ?????? ???? ???? ';
COMMENT ON TABLE SITTER_APPLICATION IS '???????? ?? ??????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_idx IS '???????? ????????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_name IS '?????? ????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_gender IS '?????? ????(F,M)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_birth IS '?????? ????????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_tel IS '?????? ????????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_addr IS '?????? ????';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_smkStt IS '?????? ???? ???? ????(0,1)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_havepet IS '?????? ???????? ???? ????';
COMMENT ON COLUMN SITTER_APPLICATION.stiapl_exp IS '???????? ???? ???? ';
COMMENT ON COLUMN SITTER_APPLICATION.member_idx IS '????????';
COMMENT ON TABLE sitter_photo IS '???? ???? ??????';
COMMENT ON COLUMN sitter_photo.sitphoto_idx IS '???? ????????';
COMMENT ON COLUMN sitter_photo.sitphoto_photo IS '???? ????';
COMMENT ON COLUMN sitter_photo.sit_idx IS '???? ????????';
COMMENT ON TABLE sitter_tag IS '???? ????';
COMMENT ON COLUMN sitter_tag.sit_idx IS '???? ????????';
COMMENT ON COLUMN sitter_tag.typTag_idx IS '???????? ?????? ????????';
COMMENT ON TABLE sit_book IS '?????? ???? ??????';
COMMENT ON COLUMN sit_book.sbook_idx IS '?????? ???? ????????';
COMMENT ON COLUMN sit_book.sit_idx IS '???? ????????';
COMMENT ON COLUMN sit_book.sbook_start IS '???? ??????';
COMMENT ON COLUMN sit_book.sbook_end IS '???? ????????';
COMMENT ON TABLE TYPE_SERVICE IS '?? ??????';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_idx IS '?????? ????????';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_service IS '?????? ????';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_expln IS '?????? ????';
COMMENT ON TABLE TYPE_Tag IS '???? ???? ??????';
COMMENT ON COLUMN TYPE_Tag.typTag_idx IS '???????? ?????? ????????';
COMMENT ON COLUMN TYPE_Tag.typTag_type IS '???? ????(??????, ???????? ???? ??)';
COMMENT ON COLUMN TYPE_Tag.typTag_expln IS '???? ????';


