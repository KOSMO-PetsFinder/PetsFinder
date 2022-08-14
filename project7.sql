
/* Drop Triggers */

DROP TRIGGER TRI_abandonedAnimal_abani_idx;
DROP TRIGGER TRI_ADOPTION_APPLICATION_ADPAPL_idx;
DROP TRIGGER TRI_ADOPTION_BOARD_adoptboard_idx;
DROP TRIGGER TRI_ADOPTION_Comment_adoptcomm_idx;
DROP TRIGGER TRI_ADOPTION_like_adoptlike_idx;
DROP TRIGGER TRI_ADOPTION_like_sitrevlike_idx;
DROP TRIGGER TRI_ADOPTION_list_ADOPlist_idx;
DROP TRIGGER TRI_ADOPTION_REVIEW_BOARD_adoptboard_idx;
DROP TRIGGER TRI_APPROVAL_APR_idx;
DROP TRIGGER TRI_cart_cart_idx;
DROP TRIGGER TRI_faq_board_faq_idx;
DROP TRIGGER TRI_member_member_idx;
DROP TRIGGER TRI_NOTICE_BOARD_notboard_idx;
DROP TRIGGER TRI_payment_payment_idx;
DROP TRIGGER TRI_pet_pet_idx;
DROP TRIGGER TRI_product_image_pdt_image_idx;
DROP TRIGGER TRI_product_product_idx;
DROP TRIGGER TRI_qna_board_qna_idx;
DROP TRIGGER TRI_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx;
DROP TRIGGER TRI_review_board_review_idx;
DROP TRIGGER TRI_review_Comment_reviewcomm_idx;
DROP TRIGGER TRI_review_Comment_sitrevcomm_idx;
DROP TRIGGER TRI_review_like_reviewlike_idx;
DROP TRIGGER TRI_review_like_sitrevlike_idx;
DROP TRIGGER TRI_SALES_DETAILS_sales_idx;
DROP TRIGGER TRI_shippingLoc_info_shiplocInfo_idx;
DROP TRIGGER TRI_sitrev_Comment_sitrevcomm_idx;
DROP TRIGGER TRI_SITTER_APPLICATION_ADPAPL_idx;
DROP TRIGGER TRI_SITTER_APPLICATION_SITAPL_idx;
DROP TRIGGER TRI_sitter_like_adoptlike_idx;
DROP TRIGGER TRI_sitter_like_sitrevlike_idx;
DROP TRIGGER TRI_sitter_photo_sitphoto_idx;
DROP TRIGGER TRI_sitter_review_review_idx;
DROP TRIGGER TRI_sitter_review_sitreview_idx;
DROP TRIGGER TRI_sitter_sit_idx;
DROP TRIGGER TRI_sit_book_sbook_idx;
DROP TRIGGER TRI_TYPE_SERVICE_typSrv_idx;
DROP TRIGGER TRI_TYPE_Tag_typTag_idx;



/* Drop Tables */

DROP TABLE ADOPTION_APPLICATION CASCADE CONSTRAINTS;
DROP TABLE ADOPTION_list CASCADE CONSTRAINTS;
DROP TABLE review_Comment CASCADE CONSTRAINTS;
DROP TABLE review_like CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE abandonedAnimal CASCADE CONSTRAINTS;
DROP TABLE APPROVAL CASCADE CONSTRAINTS;
DROP TABLE AVAILABLE_SERVICES CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE faq_board CASCADE CONSTRAINTS;
DROP TABLE SALES_DETAILS CASCADE CONSTRAINTS;
DROP TABLE shippingLoc_info CASCADE CONSTRAINTS;
DROP TABLE payment CASCADE CONSTRAINTS;
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
DROP TABLE NOTICE_BOARD CASCADE CONSTRAINTS;
DROP TABLE product_image CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE TYPE_SERVICE CASCADE CONSTRAINTS;
DROP TABLE TYPE_Tag CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_abandonedAnimal_abani_idx;
DROP SEQUENCE SEQ_ADOPTION_APPLICATION_ADPAPL_idx;
DROP SEQUENCE SEQ_ADOPTION_BOARD_adoptboard_idx;
DROP SEQUENCE SEQ_ADOPTION_Comment_adoptcomm_idx;
DROP SEQUENCE SEQ_ADOPTION_like_adoptlike_idx;
DROP SEQUENCE SEQ_ADOPTION_like_sitrevlike_idx;
DROP SEQUENCE SEQ_ADOPTION_list_ADOPlist_idx;
DROP SEQUENCE SEQ_ADOPTION_REVIEW_BOARD_adoptboard_idx;
DROP SEQUENCE SEQ_APPROVAL_APR_idx;
DROP SEQUENCE SEQ_cart_cart_idx;
DROP SEQUENCE SEQ_faq_board_faq_idx;
DROP SEQUENCE SEQ_member_member_idx;
DROP SEQUENCE SEQ_NOTICE_BOARD_notboard_idx;
DROP SEQUENCE SEQ_payment_payment_idx;
DROP SEQUENCE SEQ_pet_pet_idx;
DROP SEQUENCE SEQ_product_image_pdt_image_idx;
DROP SEQUENCE SEQ_product_product_idx;
DROP SEQUENCE SEQ_qna_board_qna_idx;
DROP SEQUENCE SEQ_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx;
DROP SEQUENCE SEQ_review_board_review_idx;
DROP SEQUENCE SEQ_review_Comment_reviewcomm_idx;
DROP SEQUENCE SEQ_review_Comment_sitrevcomm_idx;
DROP SEQUENCE SEQ_review_like_reviewlike_idx;
DROP SEQUENCE SEQ_review_like_sitrevlike_idx;
DROP SEQUENCE SEQ_SALES_DETAILS_sales_idx;
DROP SEQUENCE SEQ_shippingLoc_info_shiplocInfo_idx;
DROP SEQUENCE SEQ_sitrev_Comment_sitrevcomm_idx;
DROP SEQUENCE SEQ_SITTER_APPLICATION_ADPAPL_idx;
DROP SEQUENCE SEQ_SITTER_APPLICATION_SITAPL_idx;
DROP SEQUENCE SEQ_sitter_like_adoptlike_idx;
DROP SEQUENCE SEQ_sitter_like_sitrevlike_idx;
DROP SEQUENCE SEQ_sitter_photo_sitphoto_idx;
DROP SEQUENCE SEQ_sitter_review_review_idx;
DROP SEQUENCE SEQ_sitter_review_sitreview_idx;
DROP SEQUENCE SEQ_sitter_sit_idx;
DROP SEQUENCE SEQ_sit_book_sbook_idx;
DROP SEQUENCE SEQ_TYPE_SERVICE_typSrv_idx;
DROP SEQUENCE SEQ_TYPE_Tag_typTag_idx;




/* Create Sequences */

CREATE SEQUENCE SEQ_abandonedAnimal_abani_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_APPLICATION_ADPAPL_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_BOARD_adoptboard_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_Comment_adoptcomm_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_like_adoptlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_like_sitrevlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_list_ADOPlist_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ADOPTION_REVIEW_BOARD_adoptboard_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_APPROVAL_APR_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_cart_cart_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_faq_board_faq_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_member_member_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_NOTICE_BOARD_notboard_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_payment_payment_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_pet_pet_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_product_image_pdt_image_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_product_product_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_qna_board_qna_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_board_review_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_Comment_reviewcomm_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_Comment_sitrevcomm_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_like_reviewlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_like_sitrevlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SALES_DETAILS_sales_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_shippingLoc_info_shiplocInfo_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitrev_Comment_sitrevcomm_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SITTER_APPLICATION_ADPAPL_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SITTER_APPLICATION_SITAPL_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_like_adoptlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_like_sitrevlike_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_photo_sitphoto_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_review_review_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_review_sitreview_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sitter_sit_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_sit_book_sbook_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_TYPE_SERVICE_typSrv_idx INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_TYPE_Tag_typTag_idx INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE abandonedAnimal
(
	abani_idx number NOT NULL,
	abani_kind varchar2(30) NOT NULL,
	abani_gender char(1) NOT NULL,
	abani_loc varchar2(30) NOT NULL,
	abani_regdate date NOT NULL,
	abani_neut number NOT NULL,
	abani_stat char(5) NOT NULL,
	abani_photo varchar2(100) NOT NULL,
	abani_age varchar2(30) NOT NULL,
	abani_vaccin number NOT NULL,
	abani_species char(3) NOT NULL,
	abani_char varchar2(1000) NOT NULL,
	PRIMARY KEY (abani_idx)
);


CREATE TABLE ADOPTION_APPLICATION
(
	ADPAPL_idx number NOT NULL,
	ADPAPL_name varchar2(30) NOT NULL,
	ADPAPL_gender char(1) NOT NULL,
	ADPAPL_birth date NOT NULL,
	ADPAPL_tel varchar2(30) NOT NULL,
	ADPAPL_addr varchar2(100) NOT NULL,
	ADPAPL_job number NOT NULL,
	ADPAPL_exp number NOT NULL,
	ADPAPL_havepet varchar2(50),
	adpapl_fNum number NOT NULL,
	abani_idx number NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (ADPAPL_idx)
);


CREATE TABLE ADOPTION_list
(
	ADOPlist_idx number NOT NULL,
	ADOPlist_date date NOT NULL,
	abani_idx number NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (ADOPlist_idx)
);


CREATE TABLE APPROVAL
(
	APR_idx number NOT NULL,
	APR_stts char(1) NOT NULL,
	APR_rsn varchar2(2000) NOT NULL,
	APR_type char(3) NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (APR_idx)
);


CREATE TABLE AVAILABLE_SERVICES
(
	sit_idx number NOT NULL,
	typSrv_idx number NOT NULL
);


CREATE TABLE cart
(
	cart_idx number NOT NULL,
	product_idx number NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (cart_idx)
);


CREATE TABLE faq_board
(
	faq_idx number NOT NULL,
	faq_QUESTION varchar2(100) NOT NULL,
	faq_ANSWER varchar2(2000) NOT NULL,
	faq_photo varchar2(100),
	PRIMARY KEY (faq_idx)
);


CREATE TABLE member
(
	member_idx number NOT NULL,
	member_id varchar2(30) NOT NULL UNIQUE,
	member_pass varchar2(30) NOT NULL,
	member_type char(3) NOT NULL,
	member_email varchar2(30) NOT NULL UNIQUE,
	member_addr varchar2(100) NOT NULL,
	member_name varchar2(30) NOT NULL,
	member_phone varchar2(30) NOT NULL,
	member_reg date NOT NULL,
	member_birth date NOT NULL,
	member_gender char(1) NOT NULL,
	member_photo varchar2(100),
	PRIMARY KEY (member_idx)
);


CREATE TABLE NOTICE_BOARD
(
	notboard_idx number NOT NULL,
	notboard_title varchar2(200) NOT NULL,
	notboard_content varchar2(2000) NOT NULL,
	notboard_regdate date NOT NULL,
	notboard_hit number NOT NULL,
	notboard_photo varchar2(100),
	PRIMARY KEY (notboard_idx)
);


CREATE TABLE payment
(
	payment_idx number NOT NULL,
	merchant_uid varchar2(200) NOT NULL,
	amount number NOT NULL,
	pg varchar2(100) NOT NULL,
	payStus char(3) NOT NULL,
	pay_date date NOT NULL,
	seller varchar2(20) NOT NULL,
	productname varchar2(300) NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (payment_idx)
);


CREATE TABLE pet
(
	pet_idx number NOT NULL,
	member_idx number NOT NULL,
	pet_name varchar2(30) NOT NULL,
	pet_age number(10,0) NOT NULL,
	pet_neut char(1) NOT NULL,
	pet_gender char(1) NOT NULL,
	pet_kind varchar2(30) NOT NULL,
	pet_char varchar2(200) NOT NULL,
	pet_photo varchar2(100),
	pet_species char(3) NOT NULL,
	PRIMARY KEY (pet_idx)
);


CREATE TABLE product
(
	product_idx number NOT NULL,
	product_name varchar2(100) NOT NULL,
	product_price number NOT NULL,
	product_description varchar2(2000) NOT NULL,
	product_regdate date NOT NULL,
	product_category char(3) NOT NULL,
	product_stock number NOT NULL,
	PRIMARY KEY (product_idx)
);


CREATE TABLE product_image
(
	pdt_image_idx number NOT NULL,
	pdt_image_file varchar2(200) NOT NULL,
	product_idx number NOT NULL,
	PRIMARY KEY (pdt_image_idx)
);


CREATE TABLE qna_board
(
	qna_idx number NOT NULL,
	qna_title varchar2(200) NOT NULL,
	qna_content varchar2(2000) NOT NULL,
	qna_photo varchar2(200),
	qna_regdate date NOT NULL,
	qna_stt char(3) NOT NULL,
	qna_OPENSTATUS char(3) NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (qna_idx)
);


CREATE TABLE REPORT_ABANDONED_ANIMALS
(
	dclrAbnd_idx number NOT NULL,
	dclrAbnd_loc varchar2(50) NOT NULL,
	dclrAbnd_title varchar2(100) NOT NULL,
	dclrAbnd_content varchar2(2000) NOT NULL,
	dclrAbnd_photo varchar2(100),
	dclrAbnd_regdate date NOT NULL,
	dclrAbnd_stts char(3) NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (dclrAbnd_idx)
);


CREATE TABLE RESIDENCE_TYPE
(
	SITAPL_idx number NOT NULL,
	RSD_TYP varchar2(30) NOT NULL
);


CREATE TABLE review_board
(
	review_idx number NOT NULL,
	review_content varchar2(1000) NOT NULL,
	review_regdate date NOT NULL,
	review_photo varchar2(200),
	review_flag char(3) NOT NULL,
	sit_idx number,
	member_idx number NOT NULL,
	abani_idx number,
	product_idx number,
	PRIMARY KEY (review_idx)
);


CREATE TABLE review_Comment
(
	reviewcomm_idx number NOT NULL,
	reviewcomm_content varchar2(1000) NOT NULL,
	reviewcomm_regdate date NOT NULL,
	review_idx number NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (reviewcomm_idx)
);


CREATE TABLE review_like
(
	reviewlike_idx number NOT NULL,
	reviewlike_stt number NOT NULL,
	review_idx number NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (reviewlike_idx)
);


CREATE TABLE SALES_DETAILS
(
	sales_idx number NOT NULL,
	SALES_QUANTITY number NOT NULL,
	product_idx number NOT NULL,
	member_idx number NOT NULL,
	payment_idx number NOT NULL,
	PRIMARY KEY (sales_idx)
);


CREATE TABLE shippingLoc_info
(
	shiplocInfo_idx number NOT NULL,
	recipient varchar2(30) NOT NULL,
	recipient_phone varchar2(30) NOT NULL,
	SHIPPING_LOCATION varchar2(100) NOT NULL,
	DELIVERY_STATUS char(3) NOT NULL,
	payment_idx number NOT NULL,
	PRIMARY KEY (shiplocInfo_idx)
);


CREATE TABLE sitter
(
	sit_idx number NOT NULL,
	sit_title varchar2(100) NOT NULL,
	sit_intro varchar2(2000) NOT NULL,
	sit_addr varchar2(50) NOT NULL,
	member_idx number NOT NULL,
	s_fee number,
	m_fee number,
	b_fee number,
	sit_CLIENT number NOT NULL,
	sit_starpoint number NOT NULL,
	sit_starcount number NOT NULL,
	PRIMARY KEY (sit_idx)
);


CREATE TABLE SITTER_APPLICATION
(
	SITAPL_idx number NOT NULL,
	SITAPL_name varchar2(30) NOT NULL,
	SITAPL_gender char(1) NOT NULL,
	SITAPL_birth date NOT NULL,
	SITAPL_tel varchar2(30) NOT NULL,
	SITAPL_addr varchar2(100) NOT NULL,
	SITAPL_smkStt number NOT NULL,
	SITAPL_havepet varchar2(30) NOT NULL,
	stiapl_exp varchar2(2000) NOT NULL,
	member_idx number NOT NULL,
	PRIMARY KEY (SITAPL_idx)
);


CREATE TABLE sitter_photo
(
	sitphoto_idx number NOT NULL,
	sitphoto_photo varchar2(100),
	sit_idx number NOT NULL,
	PRIMARY KEY (sitphoto_idx)
);


CREATE TABLE sitter_tag
(
	sit_idx number NOT NULL,
	typTag_idx number NOT NULL
);


CREATE TABLE sit_book
(
	sbook_idx number NOT NULL,
	sit_idx number NOT NULL,
	member_idx number NOT NULL,
	sbook_start date NOT NULL,
	sbook_end date NOT NULL,
	sbook_status char(3) NOT NULL,
	PRIMARY KEY (sbook_idx)
);


CREATE TABLE TYPE_SERVICE
(
	typSrv_idx number NOT NULL,
	typSrv_service varchar2(30) NOT NULL,
	typSrv_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typSrv_idx)
);


CREATE TABLE TYPE_Tag
(
	typTag_idx number NOT NULL,
	typTag_type varchar2(30) NOT NULL,
	typTag_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typTag_idx)
);



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


ALTER TABLE cart
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE payment
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


ALTER TABLE SALES_DETAILS
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


ALTER TABLE sit_book
	ADD FOREIGN KEY (member_idx)
	REFERENCES member (member_idx)
;


ALTER TABLE SALES_DETAILS
	ADD FOREIGN KEY (payment_idx)
	REFERENCES payment (payment_idx)
;


ALTER TABLE shippingLoc_info
	ADD FOREIGN KEY (payment_idx)
	REFERENCES payment (payment_idx)
;


ALTER TABLE cart
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
;


ALTER TABLE product_image
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
;


ALTER TABLE SALES_DETAILS
	ADD FOREIGN KEY (product_idx)
	REFERENCES product (product_idx)
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



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_abandonedAnimal_abani_idx BEFORE INSERT ON abandonedAnimal
FOR EACH ROW
BEGIN
	SELECT SEQ_abandonedAnimal_abani_idx.nextval
	INTO :new.abani_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_APPLICATION_ADPAPL_idx BEFORE INSERT ON ADOPTION_APPLICATION
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_APPLICATION_ADPAPL_idx.nextval
	INTO :new.ADPAPL_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_BOARD_adoptboard_idx BEFORE INSERT ON ADOPTION_BOARD
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_BOARD_adoptboard_idx.nextval
	INTO :new.adoptboard_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_Comment_adoptcomm_idx BEFORE INSERT ON ADOPTION_Comment
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_Comment_adoptcomm_idx.nextval
	INTO :new.adoptcomm_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_like_adoptlike_idx BEFORE INSERT ON ADOPTION_like
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_like_adoptlike_idx.nextval
	INTO :new.adoptlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_like_sitrevlike_idx BEFORE INSERT ON ADOPTION_like
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_like_sitrevlike_idx.nextval
	INTO :new.sitrevlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_list_ADOPlist_idx BEFORE INSERT ON ADOPTION_list
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_list_ADOPlist_idx.nextval
	INTO :new.ADOPlist_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ADOPTION_REVIEW_BOARD_adoptboard_idx BEFORE INSERT ON ADOPTION_REVIEW_BOARD
FOR EACH ROW
BEGIN
	SELECT SEQ_ADOPTION_REVIEW_BOARD_adoptboard_idx.nextval
	INTO :new.adoptboard_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_APPROVAL_APR_idx BEFORE INSERT ON APPROVAL
FOR EACH ROW
BEGIN
	SELECT SEQ_APPROVAL_APR_idx.nextval
	INTO :new.APR_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_cart_cart_idx BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
	SELECT SEQ_cart_cart_idx.nextval
	INTO :new.cart_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_faq_board_faq_idx BEFORE INSERT ON faq_board
FOR EACH ROW
BEGIN
	SELECT SEQ_faq_board_faq_idx.nextval
	INTO :new.faq_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_member_member_idx BEFORE INSERT ON member
FOR EACH ROW
BEGIN
	SELECT SEQ_member_member_idx.nextval
	INTO :new.member_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_NOTICE_BOARD_notboard_idx BEFORE INSERT ON NOTICE_BOARD
FOR EACH ROW
BEGIN
	SELECT SEQ_NOTICE_BOARD_notboard_idx.nextval
	INTO :new.notboard_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_payment_payment_idx BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
	SELECT SEQ_payment_payment_idx.nextval
	INTO :new.payment_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_pet_pet_idx BEFORE INSERT ON pet
FOR EACH ROW
BEGIN
	SELECT SEQ_pet_pet_idx.nextval
	INTO :new.pet_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_product_image_pdt_image_idx BEFORE INSERT ON product_image
FOR EACH ROW
BEGIN
	SELECT SEQ_product_image_pdt_image_idx.nextval
	INTO :new.pdt_image_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_product_product_idx BEFORE INSERT ON product
FOR EACH ROW
BEGIN
	SELECT SEQ_product_product_idx.nextval
	INTO :new.product_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_qna_board_qna_idx BEFORE INSERT ON qna_board
FOR EACH ROW
BEGIN
	SELECT SEQ_qna_board_qna_idx.nextval
	INTO :new.qna_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx BEFORE INSERT ON REPORT_ABANDONED_ANIMALS
FOR EACH ROW
BEGIN
	SELECT SEQ_REPORT_ABANDONED_ANIMALS_dclrAbnd_idx.nextval
	INTO :new.dclrAbnd_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_board_review_idx BEFORE INSERT ON review_board
FOR EACH ROW
BEGIN
	SELECT SEQ_review_board_review_idx.nextval
	INTO :new.review_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_Comment_reviewcomm_idx BEFORE INSERT ON review_Comment
FOR EACH ROW
BEGIN
	SELECT SEQ_review_Comment_reviewcomm_idx.nextval
	INTO :new.reviewcomm_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_Comment_sitrevcomm_idx BEFORE INSERT ON review_Comment
FOR EACH ROW
BEGIN
	SELECT SEQ_review_Comment_sitrevcomm_idx.nextval
	INTO :new.sitrevcomm_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_like_reviewlike_idx BEFORE INSERT ON review_like
FOR EACH ROW
BEGIN
	SELECT SEQ_review_like_reviewlike_idx.nextval
	INTO :new.reviewlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_like_sitrevlike_idx BEFORE INSERT ON review_like
FOR EACH ROW
BEGIN
	SELECT SEQ_review_like_sitrevlike_idx.nextval
	INTO :new.sitrevlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_SALES_DETAILS_sales_idx BEFORE INSERT ON SALES_DETAILS
FOR EACH ROW
BEGIN
	SELECT SEQ_SALES_DETAILS_sales_idx.nextval
	INTO :new.sales_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_shippingLoc_info_shiplocInfo_idx BEFORE INSERT ON shippingLoc_info
FOR EACH ROW
BEGIN
	SELECT SEQ_shippingLoc_info_shiplocInfo_idx.nextval
	INTO :new.shiplocInfo_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitrev_Comment_sitrevcomm_idx BEFORE INSERT ON sitrev_Comment
FOR EACH ROW
BEGIN
	SELECT SEQ_sitrev_Comment_sitrevcomm_idx.nextval
	INTO :new.sitrevcomm_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_SITTER_APPLICATION_ADPAPL_idx BEFORE INSERT ON SITTER_APPLICATION
FOR EACH ROW
BEGIN
	SELECT SEQ_SITTER_APPLICATION_ADPAPL_idx.nextval
	INTO :new.ADPAPL_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_SITTER_APPLICATION_SITAPL_idx BEFORE INSERT ON SITTER_APPLICATION
FOR EACH ROW
BEGIN
	SELECT SEQ_SITTER_APPLICATION_SITAPL_idx.nextval
	INTO :new.SITAPL_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_like_adoptlike_idx BEFORE INSERT ON sitter_like
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_like_adoptlike_idx.nextval
	INTO :new.adoptlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_like_sitrevlike_idx BEFORE INSERT ON sitter_like
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_like_sitrevlike_idx.nextval
	INTO :new.sitrevlike_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_photo_sitphoto_idx BEFORE INSERT ON sitter_photo
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_photo_sitphoto_idx.nextval
	INTO :new.sitphoto_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_review_review_idx BEFORE INSERT ON sitter_review
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_review_review_idx.nextval
	INTO :new.review_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_review_sitreview_idx BEFORE INSERT ON sitter_review
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_review_sitreview_idx.nextval
	INTO :new.sitreview_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sitter_sit_idx BEFORE INSERT ON sitter
FOR EACH ROW
BEGIN
	SELECT SEQ_sitter_sit_idx.nextval
	INTO :new.sit_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_sit_book_sbook_idx BEFORE INSERT ON sit_book
FOR EACH ROW
BEGIN
	SELECT SEQ_sit_book_sbook_idx.nextval
	INTO :new.sbook_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_TYPE_SERVICE_typSrv_idx BEFORE INSERT ON TYPE_SERVICE
FOR EACH ROW
BEGIN
	SELECT SEQ_TYPE_SERVICE_typSrv_idx.nextval
	INTO :new.typSrv_idx
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_TYPE_Tag_typTag_idx BEFORE INSERT ON TYPE_Tag
FOR EACH ROW
BEGIN
	SELECT SEQ_TYPE_Tag_typTag_idx.nextval
	INTO :new.typTag_idx
	FROM dual;
END;

/




