
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

-- ���⵿�� ������
CREATE SEQUENCE SEQ_abani_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �Ծ� ��û ������
CREATE SEQUENCE SEQ_ADPAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �Ծ� ��� ������
CREATE SEQUENCE SEQ_ADOPlist_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� ������
CREATE SEQUENCE SEQ_APR_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- FAQ ������
CREATE SEQUENCE SEQ_faq_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ȸ�� ������
CREATE SEQUENCE SEQ_member_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �������� ������
CREATE SEQUENCE SEQ_notboard_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �ݷ����� ������
CREATE SEQUENCE SEQ_pet_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- Q&A �Խ��� ������
CREATE SEQUENCE SEQ_qna_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���⵿�� �Ű� ������
CREATE SEQUENCE SEQ_REPORT_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �ı� �Խ��� ������
CREATE SEQUENCE SEQ_review_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �ı� ��� ������
CREATE SEQUENCE SEQ_reviewcomm_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- �ı� ���ƿ� ������
CREATE SEQUENCE SEQ_reviewlike_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� ��û ������
CREATE SEQUENCE SEQ_SITAPL_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� ����(���, �󼼺���) ������
CREATE SEQUENCE SEQ_sitphoto_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� (�󼼺��� ����) ������
CREATE SEQUENCE SEQ_sitter_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� ���� ������
CREATE SEQUENCE SEQ_sbook_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� �̿밡�� ���� ������
CREATE SEQUENCE SEQ_typSrv_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;
-- ���� �±� ������
CREATE SEQUENCE SEQ_typTag_idx INCREMENT BY 1 START WITH 1 MINVALUE 1 NOMAXVALUE NOCACHE NOCYCLE;



/* Create Tables */

-- ���⵿�� ���̺�
CREATE TABLE abandonedAnimal
(
	-- ���⵿�� �Ϸù�ȣ
	abani_idx number NOT NULL,
	-- ���⵿�� ǰ��
	abani_kind varchar2(30) NOT NULL,
	-- ���⵿�� ����(F,M)
	abani_gender char(1) NOT NULL,
	-- ���⵿�� �߻����
	abani_loc varchar2(100) NOT NULL,
	-- ���⵿�� ������
	abani_regdate date NOT NULL,
	-- ���⵿�� �߼�ȭ����(1,0)
	abani_neut number NOT NULL,
	-- ���⵿�� ���� �Ծ�/��ȣ(adopt,prtct)
	abani_stat char(5) NOT NULL,
	-- ���⵿�� ����
	abani_photo varchar2(100) NOT NULL,
	-- ���� ���� 
	abani_age varchar2(30) NOT NULL,
	-- �������� ����(0,1)
	abani_vaccin number NOT NULL,
	-- ���⵿�� ��(cat,dog)
	abani_species char(3) NOT NULL,
	-- ���⵿�� Ư¡
	abani_char varchar2(1000) NOT NULL,
	PRIMARY KEY (abani_idx)
);


-- �Ծ��û ���̺�
CREATE TABLE ADOPTION_APPLICATION
(
	-- �Ծ��û �Ϸù�ȣ
	ADPAPL_idx number NOT NULL,
	-- ��û�� �̸�
	ADPAPL_name varchar2(30) NOT NULL,
	-- ��û�� ����(F,M)
	ADPAPL_gender char(1) NOT NULL,
	-- ��û�� �������
	ADPAPL_birth date NOT NULL,
	-- ��û�� ��ȭ��ȣ
	ADPAPL_tel varchar2(30) NOT NULL,
	-- ��û�� �ּ�
	ADPAPL_addr varchar2(100) NOT NULL,
	-- ��û�� ���� �������� (0,1)
	ADPAPL_job number NOT NULL,
	-- ��û�� �ݷ����� Ű�� ����(0,1)
	ADPAPL_exp number NOT NULL,
	-- ��û�ڰ� �ݷ����� Ű�� �Ⱓ
	ADPAPL_havepet varchar2(50),
	-- ��û�� ���� �� 
	adpapl_fNum number NOT NULL,
	-- ���⵿�� �Ϸù�ȣ
	abani_idx number NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (ADPAPL_idx)
);


-- �Ծ� ���
CREATE TABLE ADOPTION_list
(
	-- �Ծ� ��� �Ϸù�ȣ
	ADOPlist_idx number NOT NULL,
	-- �Ծ糯¥ 
	ADOPlist_date date NOT NULL,
	-- ���⵿�� �Ϸù�ȣ
	abani_idx number NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (ADOPlist_idx)
);


-- ���� ���̺�
CREATE TABLE APPROVAL
(
	-- ���� �Ϸù�ȣ
	APR_idx number NOT NULL,
	-- ���� �㰡����(Y,N)
	APR_stts char(1) NOT NULL,
	-- ����
	APR_rsn varchar2(2000) NOT NULL,
	-- Ÿ��(adt ,sit)�Ծ�/����
	APR_type char(3) NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (APR_idx)
);


-- �̿밡�ɼ���
CREATE TABLE AVAILABLE_SERVICES
(
	-- ���� �Ϸù�ȣ
	sit_idx number NOT NULL,
	-- ���� �Ϸù�ȣ
	typSrv_idx number NOT NULL
);


-- faq�Խ��� ���̺�
CREATE TABLE faq_board
(
	-- faq�Խ��� �Ϸù�ȣ
	faq_idx number NOT NULL,
	-- ����
	faq_QUESTION varchar2(100) NOT NULL,
	-- �亯
	faq_ANSWER varchar2(2000) NOT NULL,
	-- ����
	faq_photo varchar2(100),
	PRIMARY KEY (faq_idx)
);


-- ȸ�����̺�
CREATE TABLE member
(
	-- ȸ����ȣ
	member_idx number NOT NULL,
	-- ���̵�
	member_id varchar2(30) NOT NULL UNIQUE,
	-- ��й�ȣ
	member_pass varchar2(30) NOT NULL,
	-- �Ϲ�/����/������(nor,sit,mag)
	member_type char(3) NOT NULL,
	-- �̸���
	member_email varchar2(30) NOT NULL UNIQUE,
	-- �ּ�
	member_addr varchar2(100) NOT NULL,
	-- �̸�
	member_name varchar2(30) NOT NULL,
	-- ��ȭ��ȣ
	member_phone varchar2(30) NOT NULL,
	-- ȸ��������
	member_reg date NOT NULL,
	-- ȸ�� ����(����)
	member_birth date NOT NULL,
	-- ȸ�� ����(F,M)
	member_gender char(1) NOT NULL,
	-- ȸ�� ������ ����
	member_photo varchar2(100),
	PRIMARY KEY (member_idx)
);


-- �� ���̺�
CREATE TABLE NEW_TABLE
(

);


-- �� ���̺�
CREATE TABLE NEW_TABLE
(

);


-- �����Խ��� ���̺�
CREATE TABLE NOTICE_BOARD
(
	-- �����Խ��� �Ϸù�ȣ
	notboard_idx number NOT NULL,
	-- ����
	notboard_title varchar2(200) NOT NULL,
	-- ����
	notboard_content varchar2(2000) NOT NULL,
	-- �ۼ���
	notboard_regdate date NOT NULL,
	-- ��ȸ��
	notboard_hit number NOT NULL,
	-- ����
	notboard_photo varchar2(100),
	PRIMARY KEY (notboard_idx)
);


-- �� ���̺�
CREATE TABLE pet
(
	-- ���ȣ
	pet_idx number NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	-- �� �̸�
	pet_name varchar2(30) NOT NULL,
	-- �� ����
	pet_age number(10,0) NOT NULL,
	-- �߼�ȭ����(Y,N)
	pet_neut char(1) NOT NULL,
	-- �� ����(F,M)
	pet_gender char(1) NOT NULL,
	-- �� ǰ��
	pet_kind varchar2(30) NOT NULL,
	-- �� Ư¡
	pet_char varchar2(200) NOT NULL,
	-- �� ����
	pet_photo varchar2(100),
	-- �� ��(dog,cat)
	pet_species char(3) NOT NULL,
	PRIMARY KEY (pet_idx)
);


-- qna�Խ���
CREATE TABLE qna_board
(
	-- qna�Խ��� �Ϸù�ȣ
	qna_idx number NOT NULL,
	-- ���� ����
	qna_title varchar2(200) NOT NULL,
	-- ���� ����
	qna_content varchar2(2000) NOT NULL,
	-- ����
	qna_photo varchar2(200),
	-- �����
	qna_regdate date NOT NULL,
	-- ó������(�亯�Ϸ�,�̿Ϸ�)(com,Inc)
	qna_stt char(3) NOT NULL,
	-- ��������(�����,����)(pri,pub)
	qna_OPENSTATUS char(3) NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (qna_idx)
);


-- ���⵿���Ű� ���̺�
CREATE TABLE REPORT_ABANDONED_ANIMALS
(
	-- ���⵿���Ű� �Ϸù�ȣ
	dclrAbnd_idx number NOT NULL,
	-- �ּ�
	dclrAbnd_loc varchar2(100) NOT NULL,
	-- ����
	dclrAbnd_title varchar2(100) NOT NULL,
	-- ����
	dclrAbnd_content varchar2(2000) NOT NULL,
	-- ����
	dclrAbnd_photo varchar2(100),
	-- �����
	dclrAbnd_regdate date NOT NULL,
	-- ó������(����,ó����,�Ϸ�)(reg,PRG,CMP)
	dclrAbnd_stts char(3) NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (dclrAbnd_idx)
);


-- ������ ���� ���̺�
CREATE TABLE RESIDENCE_TYPE
(
	-- ���ͽ�û �Ϸù�ȣ
	SITAPL_idx number NOT NULL,
	-- ������ ����
	RSD_TYP varchar2(30) NOT NULL
);


-- �ı� ���̺�
CREATE TABLE review_board
(
	-- �ı� �Ϸù�ȣ
	review_idx number NOT NULL,
	-- ����
	review_content  varchar2(1000) NOT NULL,
	-- �����
	review_regdate date NOT NULL,
	-- ����
	review_photo varchar2(200),
	-- �Ծ�/���� �ı� �÷���(adp,sit) 
	review_flag char(3) NOT NULL,
	-- ���� �Ϸù�ȣ
	sit_idx number,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	-- ���⵿�� �Ϸù�ȣ
	abani_idx number,
	PRIMARY KEY (review_idx)
);


-- �ı� ��� ���̺�
CREATE TABLE review_Comment
(
	-- �ı� ��� �Ϸù�ȣ
	reviewcomm_idx number NOT NULL,
	-- ��� ����
	reviewcomm_content varchar2(1000) NOT NULL,
	-- ��� �����
	reviewcomm_regdate date NOT NULL,
	-- �ı� �Ϸù�ȣ
	review_idx number NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (reviewcomm_idx)
);


-- �ı� ���ƿ� ���̺�
CREATE TABLE review_like
(
	-- �ı� ���ƿ� �Ϸù�ȣ
	reviewlike_idx number NOT NULL,
	-- ���ƿ� ���� (0,1)
	reviewlike_stt number NOT NULL,
	-- �ı� �Ϸù�ȣ
	review_idx number NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (reviewlike_idx)
);


-- ���� ���̺�
CREATE TABLE sitter
(
	-- ���� �Ϸù�ȣ
	sit_idx number NOT NULL,
	-- ���� ����
	sit_title varchar2(100) NOT NULL,
	-- ���� �Ұ���
	sit_intro varchar2(2000) NOT NULL,
	-- ���� �ּ�
	sit_addr varchar2(100) NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	-- ���� ���
	s_fee number,
	-- ���� ���
	m_fee number,
	-- ���� ���
	b_fee number,
	-- �̿�� �� 
	sit_CLIENT number NOT NULL,
	-- ���� �� ����
	sit_starpoint number NOT NULL,
	-- ���Ͱ� ������ ���� Ƚ�� 
	sit_starcount number NOT NULL,
	PRIMARY KEY (sit_idx)
);


-- ���ͽ�û �� ���̺�
CREATE TABLE SITTER_APPLICATION
(
	-- ���ͽ�û �Ϸù�ȣ
	SITAPL_idx number NOT NULL,
	-- ��û�� �̸�
	SITAPL_name varchar2(30) NOT NULL,
	-- ��û�� ����(F,M)
	SITAPL_gender char(1) NOT NULL,
	-- ������ �������
	SITAPL_birth date NOT NULL,
	-- ������ ��ȭ��ȣ
	SITAPL_tel varchar2(30) NOT NULL,
	-- ������ �ּ�
	SITAPL_addr varchar2(100) NOT NULL,
	-- ��û�� ���� �� ����(0,1)
	SITAPL_smkStt number NOT NULL,
	-- ��û�� �ݷ����� Ű�� �Ⱓ
	SITAPL_havepet varchar2(30) NOT NULL,
	-- �ݷ����� Ű�� ���� 
	stiapl_exp varchar2(2000) NOT NULL,
	-- ȸ����ȣ
	member_idx number NOT NULL,
	PRIMARY KEY (SITAPL_idx)
);


-- ���� ���� ���̺�
CREATE TABLE sitter_photo
(
	-- ���� �Ϸù�ȣ
	sitphoto_idx number NOT NULL,
	-- ���� ���
	sitphoto_photo varchar2(100),
	-- ���� �Ϸù�ȣ
	sit_idx number NOT NULL,
	PRIMARY KEY (sitphoto_idx)
);


-- ���� �±�
CREATE TABLE sitter_tag
(
	-- ���� �Ϸù�ȣ
	sit_idx number NOT NULL,
	-- �±����� ���̺� �Ϸù�ȣ
	typTag_idx number NOT NULL
);


-- ����� ���� ���̺�
CREATE TABLE sit_book
(
	-- ����� ���� �Ϸù�ȣ
	sbook_idx number NOT NULL,
	-- ���� �Ϸù�ȣ
	sit_idx number NOT NULL,
	-- ���� ������
	sbook_start date NOT NULL,
	-- ���� ��������
	sbook_end date NOT NULL,
	PRIMARY KEY (sbook_idx)
);


-- ���� ���̺�
CREATE TABLE TYPE_SERVICE
(
	-- ���� �Ϸù�ȣ
	typSrv_idx number NOT NULL,
	-- ���� Ÿ��
	typSrv_service varchar2(30) NOT NULL,
	-- ���� ����
	typSrv_expln varchar2(200) NOT NULL,
	PRIMARY KEY (typSrv_idx)
);


-- �±� ���� ���̺�
CREATE TABLE TYPE_Tag
(
	-- �±����� ���̺� �Ϸù�ȣ
	typTag_idx number NOT NULL,
	-- �±� ����(����Ʈ, �ݷ����� ���� ��)
	typTag_type varchar2(30) NOT NULL,
	-- �±� ����
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



/* Comments */

COMMENT ON TABLE abandonedAnimal IS '���⵿�� ���̺�';
COMMENT ON COLUMN abandonedAnimal.abani_idx IS '���⵿�� �Ϸù�ȣ';
COMMENT ON COLUMN abandonedAnimal.abani_kind IS '���⵿�� ǰ��';
COMMENT ON COLUMN abandonedAnimal.abani_gender IS '���⵿�� ����(F,M)';
COMMENT ON COLUMN abandonedAnimal.abani_loc IS '���⵿�� �߻����';
COMMENT ON COLUMN abandonedAnimal.abani_regdate IS '���⵿�� ������';
COMMENT ON COLUMN abandonedAnimal.abani_neut IS '���⵿�� �߼�ȭ����(1,0)';
COMMENT ON COLUMN abandonedAnimal.abani_stat IS '���⵿�� ���� �Ծ�/��ȣ(adopt,prtct)';
COMMENT ON COLUMN abandonedAnimal.abani_photo IS '���⵿�� ����';
COMMENT ON COLUMN abandonedAnimal.abani_age IS '���� ���� ';
COMMENT ON COLUMN abandonedAnimal.abani_vaccin IS '�������� ����(0,1)';
COMMENT ON COLUMN abandonedAnimal.abani_species IS '���⵿�� ��(cat,dog)';
COMMENT ON COLUMN abandonedAnimal.abani_char IS '���⵿�� Ư¡';
COMMENT ON TABLE ADOPTION_APPLICATION IS '�Ծ��û ���̺�';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_idx IS '�Ծ��û �Ϸù�ȣ';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_name IS '��û�� �̸�';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_gender IS '��û�� ����(F,M)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_birth IS '��û�� �������';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_tel IS '��û�� ��ȭ��ȣ';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_addr IS '��û�� �ּ�';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_job IS '��û�� ���� �������� (0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_exp IS '��û�� �ݷ����� Ű�� ����(0,1)';
COMMENT ON COLUMN ADOPTION_APPLICATION.ADPAPL_havepet IS '��û�ڰ� �ݷ����� Ű�� �Ⱓ';
COMMENT ON COLUMN ADOPTION_APPLICATION.adpapl_fNum IS '��û�� ���� �� ';
COMMENT ON COLUMN ADOPTION_APPLICATION.abani_idx IS '���⵿�� �Ϸù�ȣ';
COMMENT ON COLUMN ADOPTION_APPLICATION.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE ADOPTION_list IS '�Ծ� ���';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_idx IS '�Ծ� ��� �Ϸù�ȣ';
COMMENT ON COLUMN ADOPTION_list.ADOPlist_date IS '�Ծ糯¥ ';
COMMENT ON COLUMN ADOPTION_list.abani_idx IS '���⵿�� �Ϸù�ȣ';
COMMENT ON COLUMN ADOPTION_list.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE APPROVAL IS '���� ���̺�';
COMMENT ON COLUMN APPROVAL.APR_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN APPROVAL.APR_stts IS '���� �㰡����(Y,N)';
COMMENT ON COLUMN APPROVAL.APR_rsn IS '����';
COMMENT ON COLUMN APPROVAL.APR_type IS 'Ÿ��(adt ,sit)�Ծ�/����';
COMMENT ON COLUMN APPROVAL.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE AVAILABLE_SERVICES IS '�̿밡�ɼ���';
COMMENT ON COLUMN AVAILABLE_SERVICES.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN AVAILABLE_SERVICES.typSrv_idx IS '���� �Ϸù�ȣ';
COMMENT ON TABLE faq_board IS 'faq�Խ��� ���̺�';
COMMENT ON COLUMN faq_board.faq_idx IS 'faq�Խ��� �Ϸù�ȣ';
COMMENT ON COLUMN faq_board.faq_QUESTION IS '����';
COMMENT ON COLUMN faq_board.faq_ANSWER IS '�亯';
COMMENT ON COLUMN faq_board.faq_photo IS '����';
COMMENT ON TABLE member IS 'ȸ�����̺�';
COMMENT ON COLUMN member.member_idx IS 'ȸ����ȣ';
COMMENT ON COLUMN member.member_id IS '���̵�';
COMMENT ON COLUMN member.member_pass IS '��й�ȣ';
COMMENT ON COLUMN member.member_type IS '�Ϲ�/����/������(nor,sit,mag)';
COMMENT ON COLUMN member.member_email IS '�̸���';
COMMENT ON COLUMN member.member_addr IS '�ּ�';
COMMENT ON COLUMN member.member_name IS '�̸�';
COMMENT ON COLUMN member.member_phone IS '��ȭ��ȣ';
COMMENT ON COLUMN member.member_reg IS 'ȸ��������';
COMMENT ON COLUMN member.member_birth IS 'ȸ�� ����(����)';
COMMENT ON COLUMN member.member_gender IS 'ȸ�� ����(F,M)';
COMMENT ON COLUMN member.member_photo IS 'ȸ�� ������ ����';
COMMENT ON TABLE NEW_TABLE IS '�� ���̺�';
COMMENT ON TABLE NEW_TABLE IS '�� ���̺�';
COMMENT ON TABLE NOTICE_BOARD IS '�����Խ��� ���̺�';
COMMENT ON COLUMN NOTICE_BOARD.notboard_idx IS '�����Խ��� �Ϸù�ȣ';
COMMENT ON COLUMN NOTICE_BOARD.notboard_title IS '����';
COMMENT ON COLUMN NOTICE_BOARD.notboard_content IS '����';
COMMENT ON COLUMN NOTICE_BOARD.notboard_regdate IS '�ۼ���';
COMMENT ON COLUMN NOTICE_BOARD.notboard_hit IS '��ȸ��';
COMMENT ON COLUMN NOTICE_BOARD.notboard_photo IS '����';
COMMENT ON TABLE pet IS '�� ���̺�';
COMMENT ON COLUMN pet.pet_idx IS '���ȣ';
COMMENT ON COLUMN pet.member_idx IS 'ȸ����ȣ';
COMMENT ON COLUMN pet.pet_name IS '�� �̸�';
COMMENT ON COLUMN pet.pet_age IS '�� ����';
COMMENT ON COLUMN pet.pet_neut IS '�߼�ȭ����(Y,N)';
COMMENT ON COLUMN pet.pet_gender IS '�� ����(F,M)';
COMMENT ON COLUMN pet.pet_kind IS '�� ǰ��';
COMMENT ON COLUMN pet.pet_char IS '�� Ư¡';
COMMENT ON COLUMN pet.pet_photo IS '�� ����';
COMMENT ON COLUMN pet.pet_species IS '�� ��(dog,cat)';
COMMENT ON TABLE qna_board IS 'qna�Խ���';
COMMENT ON COLUMN qna_board.qna_idx IS 'qna�Խ��� �Ϸù�ȣ';
COMMENT ON COLUMN qna_board.qna_title IS '���� ����';
COMMENT ON COLUMN qna_board.qna_content IS '���� ����';
COMMENT ON COLUMN qna_board.qna_photo IS '����';
COMMENT ON COLUMN qna_board.qna_regdate IS '�����';
COMMENT ON COLUMN qna_board.qna_stt IS 'ó������(�亯�Ϸ�,�̿Ϸ�)(com,Inc)';
COMMENT ON COLUMN qna_board.qna_OPENSTATUS IS '��������(�����,����)(pri,pub)';
COMMENT ON COLUMN qna_board.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE REPORT_ABANDONED_ANIMALS IS '���⵿���Ű� ���̺�';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_idx IS '���⵿���Ű� �Ϸù�ȣ';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_loc IS '�ּ�';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_title IS '����';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_content IS '����';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_photo IS '����';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_regdate IS '�����';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.dclrAbnd_stts IS 'ó������(����,ó����,�Ϸ�)(reg,PRG,CMP)';
COMMENT ON COLUMN REPORT_ABANDONED_ANIMALS.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE RESIDENCE_TYPE IS '������ ���� ���̺�';
COMMENT ON COLUMN RESIDENCE_TYPE.SITAPL_idx IS '���ͽ�û �Ϸù�ȣ';
COMMENT ON COLUMN RESIDENCE_TYPE.RSD_TYP IS '������ ����';
COMMENT ON TABLE review_board IS '�����ı� ���̺�';
COMMENT ON COLUMN review_board.review_idx IS '�ı� �Ϸù�ȣ';
COMMENT ON COLUMN review_board.review_title IS '����';
COMMENT ON COLUMN review_board.review_content IS '����';
COMMENT ON COLUMN review_board.review_regdate IS '�����';
COMMENT ON COLUMN review_board.review_photo IS '����';
COMMENT ON COLUMN review_board.review_flag IS '�Ծ�/���� �ı� �÷���(adp,sit) ';
COMMENT ON COLUMN review_board.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN review_board.member_idx IS 'ȸ����ȣ';
COMMENT ON COLUMN review_board.abani_idx IS '���⵿�� �Ϸù�ȣ';
COMMENT ON TABLE review_Comment IS '�����ı� ��� ���̺�';
COMMENT ON COLUMN review_Comment.reviewcomm_idx IS '�Ծ��ı� ��� �Ϸù�ȣ';
COMMENT ON COLUMN review_Comment.reviewcomm_content IS '��� ����';
COMMENT ON COLUMN review_Comment.reviewcomm_regdate IS '��� �����';
COMMENT ON COLUMN review_Comment.review_idx IS '�ı� �Ϸù�ȣ';
COMMENT ON COLUMN review_Comment.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE review_like IS '�����ı� ���ƿ� ���̺�';
COMMENT ON COLUMN review_like.reviewlike_idx IS '�Ծ��ı� ���ƿ� �Ϸù�ȣ';
COMMENT ON COLUMN review_like.reviewlike_stt IS '���ƿ� ���� (0,1)';
COMMENT ON COLUMN review_like.review_idx IS '�ı� �Ϸù�ȣ';
COMMENT ON COLUMN review_like.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE sitter IS '���� ���̺�';
COMMENT ON COLUMN sitter.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN sitter.sit_title IS '���� ����';
COMMENT ON COLUMN sitter.sit_intro IS '���� �Ұ���';
COMMENT ON COLUMN sitter.sit_addr IS '���� �ּ�';
COMMENT ON COLUMN sitter.member_idx IS 'ȸ����ȣ';
COMMENT ON COLUMN sitter.s_fee IS '���� ���';
COMMENT ON COLUMN sitter.m_fee IS '���� ���';
COMMENT ON COLUMN sitter.b_fee IS '���� ���';
COMMENT ON COLUMN sitter.sit_CLIENT IS '�̿�� �� ';
COMMENT ON COLUMN sitter.sit_startpoint IS '���� �� ����';
COMMENT ON COLUMN sitter.sit_startcount IS '���Ͱ� ������ ���� Ƚ�� ';
COMMENT ON TABLE SITTER_APPLICATION IS '���ͽ�û �� ���̺�';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_idx IS '���ͽ�û �Ϸù�ȣ';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_name IS '��û�� �̸�';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_gender IS '��û�� ����(F,M)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_birth IS '������ �������';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_tel IS '������ ��ȭ��ȣ';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_addr IS '������ �ּ�';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_smkStt IS '��û�� ���� �� ����(0,1)';
COMMENT ON COLUMN SITTER_APPLICATION.SITAPL_havepet IS '��û�� �ݷ����� Ű�� �Ⱓ';
COMMENT ON COLUMN SITTER_APPLICATION.stiapl_exp IS '�ݷ����� Ű�� ���� ';
COMMENT ON COLUMN SITTER_APPLICATION.member_idx IS 'ȸ����ȣ';
COMMENT ON TABLE sitter_photo IS '���� ���� ���̺�';
COMMENT ON COLUMN sitter_photo.sitphoto_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN sitter_photo.sitphoto_photo IS '���� ���';
COMMENT ON COLUMN sitter_photo.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON TABLE sitter_tag IS '���� �±�';
COMMENT ON COLUMN sitter_tag.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN sitter_tag.typTag_idx IS '�±����� ���̺� �Ϸù�ȣ';
COMMENT ON TABLE sit_book IS '����� ���� ���̺�';
COMMENT ON COLUMN sit_book.sbook_idx IS '����� ���� �Ϸù�ȣ';
COMMENT ON COLUMN sit_book.sit_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN sit_book.sbook_start IS '���� ������';
COMMENT ON COLUMN sit_book.sbook_end IS '���� ��������';
COMMENT ON TABLE TYPE_SERVICE IS '�� ���̺�';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_idx IS '���� �Ϸù�ȣ';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_service IS '���� Ÿ��';
COMMENT ON COLUMN TYPE_SERVICE.typSrv_expln IS '���� ����';
COMMENT ON TABLE TYPE_Tag IS '�±� ���� ���̺�';
COMMENT ON COLUMN TYPE_Tag.typTag_idx IS '�±����� ���̺� �Ϸù�ȣ';
COMMENT ON COLUMN TYPE_Tag.typTag_type IS '�±� ����(����Ʈ, �ݷ����� ���� ��)';
COMMENT ON COLUMN TYPE_Tag.typTag_expln IS '�±� ����';



