/******************************
��� ���̵�����
******************************/
-- ȸ�� 1
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa001', 'Aaa001!!', 'nor'
                    , 'aaa001@naver.com', '07727 / ���� ������ ȭ� 1076-9 / 1001ȣ', '������', '010-1111-1111'
                    , '2022-07-20', '1991-08-08', 'F');
-- ȸ�� 2               
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa002', 'Aaa002!!', 'nor'
                    , 'aaa002@naver.com', '08771 / ���� ���Ǳ� �Ÿ��� 1484-10 / 1002ȣ', '������', '010-2222-2222'
                    , '2022-07-21', '1992-08-08', 'M');
-- ȸ�� 3            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa003', 'Aaa003!!', 'nor'
                    , 'aaa003@naver.com', '08803 / ���� ���Ǳ� ������ 1053-4 / 1003ȣ', '���û�', '010-3333-3333'
                    , '2022-07-22', '1993-08-08', 'F');
                    
-- ȸ�� 4            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa004', 'Aaa004!!', 'nor'
                    , 'aaa004@naver.com', '02632 / ���� ���빮�� ��ȵ� 241-13 / 1004ȣ', '���û�', '010-4444-4444'
                    , '2022-07-23', '1994-08-08', 'M');

-- ȸ�� 5            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa005', 'Aaa005!!', 'nor'
                    , 'aaa005@naver.com', '15827 / ��� ������ ������ 706-19 / 1005ȣ', '���ÿ�', '010-5555-5555'
                    , '2022-07-24', '1995-08-08', 'F');         

-- ȸ�� 6
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa006', 'Aaa006!!', 'nor'
                    , 'aaa006@naver.com', '12169 / ��� �����ֽ� ȭ���� ������ 580 / 1006ȣ', '������', '010-6666-6666'
                    , '2022-07-25', '1996-08-08', 'M');
-- ȸ�� 7               
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa007', 'Aaa007!!', 'nor'
                    , 'aaa007@naver.com', '14618 / ��� ��õ�� �� 237-36 / 1007ȣ', '����ĥ', '010-7777-7777'
                    , '2022-07-26', '1997-08-08', 'F');
-- ȸ�� 8            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa008', 'Aaa008!!', 'nor'
                    , 'aaa008@naver.com', '16588 / ��� ������ �Ǽ��� ������ 537-5 / 1008ȣ', '������', '010-8888-8888'
                    , '2022-07-27', '1998-08-08', 'M');
                    
-- ȸ�� 9            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa009', 'Aaa009!!', 'nor'
                    , 'aaa009@naver.com', '14950 / ��� ����� ���ൿ 105-13 / 1009ȣ', '���ñ�', '010-9999-9999'
                    , '2022-07-28', '1999-08-08', 'F');

-- ȸ�� 10            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa010', 'Aaa010!!', 'nor'
                    , 'aaa010@naver.com', '14033 / ��� �Ⱦ�� ���ȱ� �Ⱦ絿 426-33 / 1010ȣ', '���ý�', '010-0000-0000'
                    , '2022-07-29', '2000-08-08', 'M');

-- ȸ�� 11      
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kong1234', 'Kong1234!', 'nor', 'kong@gmail.com', '06122 / ���� ������ ������ 111�� 3 / 1207ȣ', '����', '010-2017-0717', sysdate, '2017/07/17', 'M');

-- ȸ�� 12
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'malang1234', 'Malang1234!', 'nor', 'malang@naver.com', '13958 / ��� �Ⱦ�� ���ȱ� ������ 1141-6 / 405ȣ', '����', '010-2018-0907', sysdate, '2018/09/07', 'F');

-- ȸ�� 13
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ratte1234', 'Ratte1234!', 'nor', 'ratte@gmail.com', '07651 / ���� ������ ������ 348 / 1004ȣ', '��', '010-2017-0124', sysdate, '2017/01/24', 'M');

-- ȸ�� 14
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'moon1234', 'Moon1234!', 'nor', 'moon@naver.com', '07803 / ���� ������ ���״�� 269-15 / 907ȣ', '����', '010-2013-0624', sysdate, '2013/06/24', 'M');

-- ȸ�� 15
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'gold1234', 'Gold1234!', 'nor', 'gold@naver.com', '16414 / ��� ������ �Ǽ��� ������35���� 60 / 503ȣ', '�ݺ�', '010-2021-1225', sysdate, '2021/12/25', 'M');

/*** member_type : sit 10��  ( ȸ�� 16 ~ 25 ) ***/

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'wintersea', 'Wintersea1234!', 'sit', 'wintersea@gmail.com', '21510 / ��õ ������ ������ 2 / 2��', '�չμ�', '010-8954-2887', sysdate, '1989/07/22', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jennyp', 'Jennyp1234!', 'sit', 'jennyp@daum.net', '03325 / ���� ���� ������ 181-7 / 3��', '������', '010-2336-8407', sysdate, '1994/02/10', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'blackplanet', 'Blackplanet1234!', 'sit', 'blackplanet@gmail.com', '21316 / ��õ ���� ����� 16 / 4��', '���̽�', '010-4487-8825', sysdate, '2000/01/15', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'milero', 'Milero1234!', 'sit', 'milero@naver.com', '07237 / ���� �������� ��ȸ���66�� 11 / 15��', '�ڻ��', '010-8878-2796', sysdate, '1991/05/11', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'studykim', 'Studykim1234!', 'sit', 'studykim@naver.com', '04903 / ���� ������ ��ʸ���88�� 6 / 13��', '�鼺��', '010-2578-1115', sysdate, '1988/06/28', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'valuevalue', 'Valuevalue1234!', 'sit', 'valuevalue@gmail.com', '14786 / ��� ��õ�� ���ȷ� 252 / 2�� 203ȣ', '�賲��', '010-8888-2883', sysdate, '1980/03/02', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kmc1004', 'Kmc1004!', 'sit', 'kmc1004@daum.net', '07340 / ���� �������� ���������� 79 / 101��', '��â��', '010-2186-5781', sysdate, '1982/01/26', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'bigdata', 'Bigdata1234!', 'sit', 'bigdata@gmail.com', '01072 / ���� ���ϱ� ���ط�8���� 7 / 4002��', '����ȣ', '010-5558-3434', sysdate, '2002/01/09', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'alphago', 'Alphago1234!', 'sit', 'alphago@naver.com', '03902 / ���� ������ ������ 131 / 15��', '������', '010-2248-1176', sysdate, '1995/04/25', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'lemon123', 'Lemon123!', 'sit', 'lemon123@naver.com', '16461 / ��� ������ �ȴޱ� �Ż�� 4 / 12��', '���ٿ�', '010-88730-1729', sysdate, '1995/07/28', 'F');

-- ȸ�� 26
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ganzi1234', 'ganzi1234!', 'nor', 'ganzi@naver.com', '22762 / ��õ ���� û��Ŀ���� 252 / 1503ȣ', '����', '010-2014-0505', sysdate, '2014/05/05', 'F');

-- ȸ�� 27
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'some1234', 'Some1234!', 'nor', 'some@naver.com', '14743 / ��� ��õ�� ���η� 20 / 1301ȣ', '����', '010-2014-0714', sysdate, '2014/07/14', 'F');

-- ȸ�� 28
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'choco1234', 'Choco1234!', 'nor', 'choco@naver.com', '08608 / ���� ��õ�� ���ɷ� 40 / 1101ȣ', '����', '010-2014-1224', sysdate, '2014/12/24', 'F');

-- ȸ�� 29
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ruby1234', 'Ruby1234!', 'nor', 'ruby@naver.com', '22002 / ��õ ������ ��Ʈ���ʹ��97���� 56 / 1601ȣ', '���', '010-2008-1024', sysdate, '2008/10/24', 'M');

-- ȸ�� 30
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jung1234', 'jung1234!', 'nor', 'sjw4070@naver.com', '07724 / ���� ������ �ʷϸ�����22�� 35 / 402ȣ', 'ä����', '010-9380-0974', sysdate, '1989/01/27', 'M');

-- ȸ�� 31
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'young6316', 'young6316@', 'nor', 'tjakffod@naver.com', '14090 / ��� �Ⱦ�� ���ȱ� �Ұ�� 78 / 101��', '������', '010-8339-6316', sysdate, '1996/03/16', 'F');

-- ȸ�� 32
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'heon93', 'sshhoo1123', 'nor', 'honey@naver.com', '22750 / ��õ ���� ũ����Ż�� 148 / 373��', '������', '010-9255-4611', sysdate, '1993/06/05', 'M');

-- ȸ�� 33
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'rladmsdkz', 'Kosmo1234!', 'nor', '00kimeunah00@naver.com', '18146 / ��� ����� ����� 15 / 1004��', '������', '010-1234-5678', sysdate, '1995/04/08', 'F');

-- ȸ�� 34
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'wonjerry', 'kosmo1111!', 'nor', 'kenny9303@naver.com', '03752 / ���� ���빮�� �����5�� 4 / 1��', '�̿���', '010-2682-4951', sysdate, '1993/03/20', 'M');

-- ȸ�� 35
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'sosohee', 'Sosohee1234!', 'nor', 'sosohee@naver.com', '08349 / ���� ���α� ������11���� 5 / 1��', '�����', '010-8549-7451', sysdate, '1999/04/20', 'F');

/** ���� Pet **/

INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 16, '����', 6, 'Y', 'M','�ҵ���', '���� ����', '�����', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 17, '����', 3, 'Y', 'M','��� ��Ʈ����', '�ҽ���', '�����', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 18, '�κ�', 2, 'N', 'F','Ǫ��', 'Ȱ����', '�����','dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 19, 'ȣ��', 7, 'Y', 'M','���޶��̾�', '��Ž�� ����', '�����', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 20, '�����', 8, 'Y', 'F','ġ�Ϳ�', '���� ���� ����', '�����', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 21, '����', 1, 'N', 'M','�丣�þ�', '�峭���� ����', '�����', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 22, '�丮', 4, 'Y', 'M','��', '����� �Ⱦ���', '�����', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 23, '����', 5, 'Y', 'F','����', '�米���� ����', '�����', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 24, '����', 2, 'Y', 'F','�ڼ�', 'ȣ����� ����','�����', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 25, '����', 7, 'Y', 'M','����Ƽ�� ����', '�踸���ִ°� ������', '�����', 'cat');


/******************************
���⵿�� ���̵�����
******************************/

-- ���⵿�� 1(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�ҵ���', 'F', '����Ư���� ���Ǳ� �Ÿ��� 739'
                                , '2022-07-10', '1', 'prtct', '_'
                                , '4��', 1, 'dog', '�Ӹ��� ũ�� �׸������� �ڴ� �����մϴ�. ����� �� ��������, �ٸ��� ưư�մϴ�.');
-- ���⵿�� 2(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�丣�þ�', 'M', '����Ư���� ���Ǳ� ��õ�� 1712'
                                , '2022-07-11', '1', 'prtct', '_'
                                , '6��', 1, 'cat', '������ ª���� �β��� �ٸ��� �β���� �� ª�� �����ϴ�. ������ ª�� �ʹ� �۽��ϴ�.');                                
-- ���⵿�� 3(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��縮Ʈ����', 'F', '��⵵ ������ �Ӵ޵� ��1-1'
                                , '2022-07-12', '1', 'prtct', '_'
                                , '5��', 1, 'dog', '�������� ���� �ǰ��ϰ� ����� ������ �ݴϴ�. �ݻ��� ���⳪�� ���� ������ �ִµ�, ������ ������̰� ������ ź�¼��� �ֽ��ϴ�.');
-- ���⵿�� 4(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��', 'F', '��⵵ �ϳ��� ���â�� 198-3'
                                , '2022-07-13', '0', 'prtct', '_'
                                , '3��', 0, 'cat', '������ ���� ª�� ���� ���� ������ �ֽ��ϴ�. �ֱ��� ���� ���Դϴ�.');   
-- ���⵿�� 5(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, 'Ǫ��', 'M', '����Ư���� ������ ����� 9-6'
                                , '2022-07-14', '1', 'prtct', '_'
                                , '9��', 1, 'dog', 'Ȱ���ϰ� Ȱ������ ������ �峭�� ���� ���Դϴ�.');
-- ���⵿�� 6(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '����ũ��', 'M', '����Ư���� ���빮�� ���� 129-13'
                                , '2022-07-15', '1', 'prtct', '_'
                                , '7��', 1, 'cat', 'ū ���� �Ͱ� Ư¡�̸�, ������ ������ ���մϴ�. ���� ���� ���, �Ǻο� ���бⰡ �ֽ��ϴ�.'); 
/***************************************************************************************/                                
                                
-- ���⵿�� 7(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��Ƽ��', 'F', '��⵵ ����� �Ͼȵ� ��120-4'
                                , '2022-07-16', '1', 'adopt', '_'
                                , '10��', 1, 'dog', '���� ü���� �����ϰ� �Ͼ� ���� ���� �Ϳ��� ģ���Դϴ�.');
-- ���⵿�� 8(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '����', 'M', '��⵵ ���� �ϻ굿�� ���ε� 794'
                                , '2022-07-17', '1', 'adopt', '_'
                                , '2��', 1, 'cat', 'Ǫ�� ���� ������ ������ �ѷ��� �� ������ Ư¡�Դϴ�.');                             
-- ���⵿�� 9(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�۱�', 'F', '��⵵ ���ֽ� ź���� ���︮ 1790-8'
                                , '2022-07-18', '1', 'adopt', '_'
                                , '4��', 1, 'dog', '��ġ�� ũ�� �ձ۰� ���������� �󱼰� �̸��� �ָ��� �����ϴ�.');
-- ���⵿�� 10(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '����Ƽ������', 'F', '��õ������ ��籸 ���絿 609-1'
                                , '2022-07-19', '1', 'adopt', '_'
                                , '7��', 1, 'cat', '���׶� �Ӹ��� Ư¡�̸� ���� ��¦�̰� �����մϴ�.');   
-- ���⵿�� 11(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '������', 'F', '��⵵ ����� ����� 643-2'
                                , '2022-07-20', '1', 'adopt', '_'
                                , '2��', 1, 'dog', '��ٸ��� ������ �ְ�, �Ϳ� ��ó�� �ֽ��ϴ�. Ư¡���δ� ���� �Ⱦ��ϰ�, �ֺ��� û���� �ϴ� ������ �ֽ��ϴ�.');

-- ���⵿�� 12(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�븣���̽�', 'M', '����Ư���� ��걸 û�ĵ�2�� 1-8'
                                , '2022-07-21', '1', 'adopt', '_'
                                , '11��', 1, 'cat', '�ﰢ�� ����� �Ӹ��� �β��� ������ �� �ߴ޵� ���� ������ �ֽ��ϴ�. �ʹ� �߰� ���� ũ���̸� ���� �ձ����Դϴ�.');   
-- ���⵿�� 13(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, 'ǳ�갳', 'F', '����Ư���� ���α� ������ 1-151'
                                , '2022-07-22', '1', 'adopt', '_'
                                , '9��', 1, 'dog', '������ ���ݿ� ȸ�� ���� ���� ������ ģ���Դϴ�.');
-- ���⵿�� 14(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�긮Ƽ�ü����', 'F', '����Ư���� ���α� ��ŵ� 120-1'
                                , '2022-07-23', '0', 'adopt', '_'
                                , '8��', 0, 'cat', '���ɽ����� ���� ��������, �����ϸ� �γ����� ���մϴ�.');   
-- ���⵿�� 15(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, 'ġ�Ϳ�', 'F', '����Ư���� ���ʱ� ���絿 ��66-3'
                                , '2022-07-24', '1', 'adopt', '_'
                                , '9��', 1, 'dog', 'ġ�Ϳ��ӿ��� ���ݼ��� ����, ���� ũ�� �ֱ��� ���� ģ���Դϴ�.');
-- ���⵿�� 16(�Ծ�Ϸ�)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��Ű�þӰ��', 'M', '����Ư���� ���ʱ� ������ 1013'
                                , '2022-07-25', '1', 'adopt', '_'
                                , '3��', 1, 'cat', '����� ������ ������ ������ ���� ������� �����մϴ�.');
/***************************************************************************************/   
-- ���⵿�� 17(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��������', 'F', '����Ư���� ��걸 ������ 241-21'
                                , '2022-07-26', '1', 'prtct', '_'
                                , '3��', 0, 'dog', 'Ȱ������ ���� ���� ���� ������ ���̿���.');
-- ���⵿�� 18(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '���þȺ��', 'M', '����Ư���� ������ â�� 27'
                                , '2022-07-27', '1', 'prtct', '_'
                                , '5��', 1, 'cat', 'Ǫ������ ���� ȸ���а� �ʷϻ� ���� ���� �Ϳ��� ģ���Դϴ�.');                                
-- ���⵿�� 19(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '�ڽ���Ʈ', 'F', '����Ư���� ���ı� ������ 92-7'
                                , '2022-07-28', '1', 'prtct', '_'
                                , '10��', 0, 'dog', '�ٸ��� ª�� �ֱ��� �����ϴ�. ��å�� �� ���� �Ĵ� ������ �ֽ��ϴ�.');
-- ���⵿�� 20(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, 'Ųī�ο�', 'F', '��⵵ ������ �߿��� ������ 153'
                                , '2022-07-29', '0', 'prtct', '_'
                                , '8��', 0, 'cat', 'ª�� �ٸ��� ���� �͸� ���� ���� Ư¡�Դϴ�.');   
-- ���⵿�� 21(�Ծ�����)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '��ũ���׸���', 'M', '��⵵ ������ �д籸 ���ڵ� 135-1'
                                , '2022-07-30', '1', 'prtct', '_'
                                , '4��', 1, 'dog', '������ ���� �ֱ��� ���� ģ���Դϴ�. ��� ��� ���� ���� �ŷ��� ģ���Դϴ�.');
                                
                                


/*******************************
���� ���̵�����
*******************************/

insert into sitter values (SEQ_sitter_idx.nextval, '������ ���� ������� ���������', 
'���� ���� �ư����� �� ������ ����� �� ���� �ʹ� ������ �Ͻø� ���� �Ͻô� ���ִԵ��� �� �� �ʹ� �����ְ� �ູ�� ���̶�� ������ �ֽ��ϴ�.
�����ε� ó�� �� ����ó�� ����� �������� ���̵��� �����ڽ��ϴ�~~^^', 
'��õ������ ������ ������', 16, 33000, 35000, 40000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '������� �����帮�ڽ��ϴ�', 
'���� �տ� �ñ�ٴ°� �ݷ��߰߰� ��ȣ�ڴԿ��� �󸶳� �߿��� �������� �� �˱⿡ ���� ���� �ְ� ������ ���� ���δ� ���� ���� �޴� ���� ã���� �����ϰ� �ƽ��ϴ�. 
���� ����Ʈ�� 1�� �� �������Ʈ�� ������ ����� ��å�ΰ� ���� �� �Ǿ��ֽ��ϴ�', 
'����Ư���� ���� ������', 17, 38000, 40000, 42000, 0, 0, 0);


insert into sitter values (SEQ_sitter_idx.nextval, '������ �����׷� �������~~', 
'���� ���� ����ö�� �ٷ� �� �ʿ��������� ����� �� �������Ʈ�̸� �� �� �󰡿� �츮 ������ � ������ �ٴϰ� �ִ� 24�ð� ���������� ������, ���� 5�� �Ÿ��� �ѷ����� �ְ�, 
10�� �Ÿ��� ��å�ΰ� �־� ������ ��å���� �ƽ����� ���� �����ϴ�. 
�� ������ �ο����� �������� ������ �ͽ��ϴ�. �� �� �о��ּż� �����մϴ�~', 
'��õ������ ���� ���굿', 18, 35000, 40000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '����� ���Ͽ�� ������ ����', 
'������ ������� ����: 1. ���� ������ �־� �����ߵ鵵 ������� �ʰ� ���� �� �ֽ��ϴ�. 2. �ݷ��� �� ����� ��ȭ�� �ξ� �ߴ޵Ǿ��ִ� �̱��������� ������� �ؿ� ������ �ֽ��ϴ�. 
3. �� ��ó �������� �� ���� ��å�� ��� �� �ֽ��ϴ�. 4. ģ���� �����ϴ� ȣ�ο� �Բ� ��ȸȭ�� ��� �� �ֽ��ϴ�', 
'����Ư���� �������� ���ǵ���', 19, 40000, 42000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '��å �����̾� �����', 
'��å�� �ַ� ������ ��ó ū �������� ���� ������ ���� �ѹ��� ���� �Ͱ��� ������ �ٸ��ǲ�����!!? ���� ����͸� �ξ��� �ƴ� �������� �ϰ� �־�(�ݷ����������� �ڰ��� ���� ��) �ξ� �����ϰ� �Ĳ��� �ɾ� �����մϴ�~ �Ƚ��ϰ� �ϰ� �ð��ּ���!!:) ',
'����Ư���� ������ �߰', 20, 45000, 50000, 55000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '�� ���̸� ������ �����ϰ� ����ϰ�', 
'�ݷ��ߵ��� �� ���߹޴� �������忡������ �ݷ����� Ű���, ���ε��� �ݷ��ߵ��� �þ��ִ� ���赵 �����ϴ�. �� ��ó�� �ִ� ���� ������ ����õ�� �ݷ��ߵ��� ��å�ϱ⿡ ���� ȯ���Դϴ�. �� ���̸� ������ �����ϰ� ����ϰ�, ����� �������� �ּ��� ���� ������帮�ڽ��ϴ�.', 
'��⵵ ��õ�� �����', 21, 50000, 52000, 55000, 0, 0, 0);

--��� (4��)
insert into sitter values (SEQ_sitter_idx.nextval, '����� �ȶ����� ��ġ��', 
'�ȳ��ϼ���. ���� ��縮Ʈ������ 10�� ���� Ű��ٰ� �۳� �ܿ￡ �ϴó���� ���¾��. 
���󿡼� �� �������� ����ϴ� ���̿��� ������ �ູ�� �Ϸ��Ϸ縦 ������ִ� ���� ���� ���� ū ����̾����ϴ�. 
�ݷ����� ������ ������ϴ� �� ����͸� �غ��ڴ� ��⸦ ���� �Ǿ����. �ݷ����� �������� Ű���� ������ �����Ƿ� ��ȣ�ڴ��� ������ ����� �����ϸ� ������� �����Ƶ帱 �ڽ��� �ֽ��ϴ�.
- ���� �ٸ� �ݷ����� ��� ������ ���̿��� ������ �� �ֽ��ϴ� : ) - �� ��ó�� ������ �Ѱ� ��å�ΰ� �־ �������� ���ϰ� �����ϰ� ��å�� �����մϴ�! 
- ��ȣ�ڴ԰� �������� ������ ���� ���̰� �ִ��� ���ϰ� ������ �� �� �ְ� ����ϰڽ��ϴ�.', 
'����Ư���� �������� ���ǵ���', 22, 48000, 50000, 53000, 0, 0, 0);


insert into sitter values (SEQ_sitter_idx.nextval, '��ο� �Բ� ����', 
'�ȳ��ϼ���. ��θ��Դϴ� ���� �ݷ��� ��δ� 2���̰� 4.5ų�� Ǫ���Դϴ�. 
�����ϰ� �ҽ��� �����̿���. �ǿ� �躯�� �ϴ� ���̶� ��å�� �Ϸ� �� �� �̻� �����ϴ�. 
���� ������ ���� �ڿ����� ���� ������ ģ����� ��︮�� �� ������ϴ�. 
����͸� �ϰ� �� �����, �����̳� ��Ⱓ �ؿܿ� ������ ���� �� �� �������� �ƹ� ���� ������ �̳��� �����̳� 
�ü��� �ñ�� ���� �������� ����� ��ó�� �ñ�� �� �� �ִ� ���� ã�ٰ� �̰��� �˰� �Ǿ����ϴ�. 
�׷��鼭 ���� �� ���� �� �� �� �ְڴٴ� �������� �����ϰ� �Ǿ����. �츮 ���� ���̵��� ������ ���� �̲������� 
��Ʈ�� ��Ƴ��� ħ�볪 ���ĸ� ���� ���� �������� �� �ְ� ������ ��ܵ� ��ġ�� �ξ����ϴ�. ��ΰ� �峭���� ���� �����ؼ� 
�پ��� �峭���� ���� ��ũ �峭���� �־��.? �� �ٷ� �տ��� ���� ������ �ְ� 30���� �� ���� ���� �� ū ������ �ֽ��ϴ�.
�ű⼭ ������ �����̸� �ϰ� ������ �پ�� �� �־��. ��ȣ�ڴԵ��� ������ ���� �����ϰ� �ູ�� �������� �ູ�� �ð� �����ڽ��ϴ�', '����Ư���� ���ϱ� ������', 23, 50000, 51000, 52000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '�� ����ó�� ������մϴ�', 
'�ȳ��ϼ���. ���� ������ ����ϴ� 50�� �ֺ��Դϴ�. 2001����� �ݷ��� �� ������ Ű���԰� �� ���� ��� �������ٸ��� �ǳ� ���½��ϴ�. 
�� ���ο� ���̸� �Ծ��� �ϱ⿣ �� ���̵� �ְ� �����̴� �� �쿬�� ����� ���� �˰ԵǾ����ϴ�. 
����̶� �þ� �����ָ� �� ������ ���̰ڴ� �;� �� ������ �����ϰ� �Ǿ����ϴ�. 
�ϰ� �ð��ֽø� �� ���� �ٷ�� ���ɼ��Ǹ� ���� ����� �ص帮�ڽ��ϴ� �����մϴ�.', 
'����Ư���� ������ ��ϵ�', 24, 38000, 40000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, 'å�Ӱ� �ְ� �����ڽ��ϴ�.', 
'�ȳ��ϼ��� ���÷��� ����� ��*���Դϴ�.? �� ���� �׻� �Բ��ϴ� �ݷ������� �����ϴ�.
�׷��� �������� 8�⵿�� ���� ����� ����(���� ���� 12�� 6kg �߼�ȭ����)��� �������� �ֽ��ϴ�. 
ū���ϰ� �����ģ���� ��ȣ���ε�~ ������� ������ ��ȣ�ϴ� ���� �� �Բ��ϴ� �������Դϴ�. 
�� �������� �����ϰ� ���ݰ� �Ϳ����� �� ���� �� ������ �� ����(�����/ū��/������)�� ���ɰ� ����� ��?X �ް� �ֽ��ϴ� 
���� ���� ���� �Ŀ��� �������� �Բ��ϴ� �ð��� ���� ���� �ϴٺ��� �ݷ��� ������ ������ ���� �Ǿ����� �׷��� �� 
�ݳ� 6���� �� �縳�б����ݰ��������� ���ؼ�... �����50�÷�����ܰ� (��)���÷����� �����Ͽ� �ǽ��ϴ� 
50�÷��� �ݷ��� ���� ������ ��Ī������� �����ڷ� �������� ���α׷��� ������� �ϰ� �Ǿ����ϴ�. 
���� �����ϴ� ���� ��ȣ������ ���ְ������� ��ġ�� ����� ����Ʈ �����Դϴ� �������� �ܵ�� ��嵵 
��å �� �� �ְ� �����ȿ� �ִ� ��å�浵 �����ϰ� �������� �ѷ��ο� �������� ��å�ϱ⿡�� ������ ���������̶�� �����˴ϴ� 
������ ���ƼȰ���� ���÷����� ���ؼ� ���������� �����ϰ� ������ �� �޾ƾ� �ȴٰ� �Ǵܵ˴ϴ� å�Ӱ��ְ� Ȱ���ϰڽ��ϴ� �����մϴ�. ', 
'��⵵ ������ �ȴޱ� �Ż굿', 25, 50000, 55000, 60000, 0, 0, 0);


/************************
���ͺ� ���� ���̵�����
************************/

-- ���� ��� �� �±�

-- nopet -> np
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'np', '�ݷ����� ����');
-- pickup -> pu
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'pu', '�Ⱦ� ����');
-- big -> b
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'b', '������ ����');
-- playground -> pg
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'pg', '���� ����');
-- oldcare -> oc
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'oc', '��� �ɾ�');

-- ���� ��� �� ����

-- �ǳ�����(�ͱ׳���, �����ũ ��) : play
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'play', '�ǳ�����(�ͱ׳���, �����ũ ��)');
-- ���ϻ�å(��å �� �ǿ� �躯 ����) : walk
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'walk', '���ϻ�å(��å �� �ǿ� �躯 ����)');
-- ����óġ(���޽� ���� �̵� ����) : emrgency
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'emrgency', '����óġ(���޽� ���� �̵� ����)');
-- ���� �Ⱦ�(����� ����) : pickup
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'pickup', '���� �Ⱦ�(����� ����)');
-- ��߰���(���� �Ǵ� �������� ����) : hair
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'hair', '��߰���(���� �Ǵ� �������� ����)');
-- �๰ ����(�汸(��)���� ����) : pills
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'pills', '�๰ ����(�汸(��)���� ����)');
-- ��� ����(����� ����) : bath
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'bath', '��� ����(����� ����)');
-- ��⿹��(14�� �̻�) : longcare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'longcare', '��⿹��(14�� �̻�)');
-- ����ɾ�(8���̻�) : oldcare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'oldcare', '����ɾ�(8���̻�)');
-- �����ɾ�(1��̸��� ����) : puppycare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'puppycare', '�����ɾ�(1��̸��� ����)');



--1��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (1,10 );
--2��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,10 );
--3��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,8 );
--4��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (4,10 );
--5��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,10 );
--6��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,7 );
--7��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (7,10 );
--8��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,10 );
--9��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (9,10 );
--10��° ����
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,8 );

/*************************
���ͺ� �±� ���̵�����
*************************/

--1��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 5);
--2��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 3);
--3��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 5);
--4��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 5);
--5��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 5);
--6��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 5);
--7��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 5);
--8��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 3);
--9��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 5);
--10��° ����
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 5);

/**************************
�ı� ���̵�����
**************************/

/*** ���⵿�� : 1 ~ 10���� ***/

-- �ı� 1
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �ü��� �������! ���� ���������� ��������� ���ߴµ� �� �����ϰ� �ִ�ϴ�.'
                    , '2022-08-01', '_', 'adp', 1, 7);
-- �ı� 2
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �����̷� �������! �ֱ��� ��ġ�� ������Դϴ�.'
                    , '2022-08-02', '_', 'adp', 2, 8);
-- �ı� 3
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �����̷� �������! ���������� �ݹ� �����ϰ� �䵵 �� �Ծ��.'
                    , '2022-08-03', '_', 'adp', 3, 9);
-- �ı� 4
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� ���Ʒ� �������! ���⹦�ΰ� �������� ���� �� �����ϴ�.'
                    , '2022-08-04', '_', 'adp', 4, 10);
-- �ı� 5
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �����̷� �������! �������� �׷��� ���� �漺��������.'
                    , '2022-08-05', '_', 'adp', 5, 11);
-- �ı� 6
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� ����� �������! �䵵 �� �԰� �躯Ȱ���� �� �ؿ�! �峭���� �ϳ� ����߰ھ��!!'
                    , '2022-08-06', '_', 'adp', 6, 12);
-- �ı� 7
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� ����� �������! ǳ�갳��� ���� Ȱ���ؿ�.. ��å�� ���� ������߰ھ��.'
                    , '2022-08-07', '_', 'adp', 7, 13);
-- �ı� 8                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� ����̷� �������! ó������ ������ �˰� �����ߴµ� ���� �����ߴ��� ������½ ������½�ؿ�!'
                    , '2022-08-08', '_', 'adp', 8, 14);
-- �ı� 9                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �ڽ���� �������! ġ�Ϳ;ƴ϶����.. ���� �����ϳ׿�. �׷��� �����������.'
                    , '2022-08-09', '_', 'adp', 9, 15);
-- �ı� 10                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '�̸��� �����̷� �������! �̷��� �̻� ��Ű�þӰ�� �ó���..? �츮 �ֱ� �ʹ� �̻���?'
                    , '2022-08-10', '_', 'adp', 10, 16);
                    

/*** ���� �ı� : 11 ~ 40 ***/

--sit_idx=1
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�׻� �ʹ� �̻����ּ���~ ���� �� �������� �ñ�� �־ �ʹ� �����մϴ�',
sysdate, '�ı����','sit', 1, 1);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ϳ� �Ѱ� ������ ���ߴµ� �츮 ť�� ����ϳ�����. ���� ����ϰ� �ູ�ϰ� ������ �� �� �־ �̹����� �������� �����մϴ� �ϻ��� ��� �������� ��ȣ���� �������� ������ �ֽ÷��� ����Ͻô� ����ʹ��� ����� ��� ���п� ������ ��ǰ��縦 �������߽��ϴ�. ������ �� �˰ڽ��ϴ�.',
sysdate, '�ı����','sit', 1, 2);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�� �Ѱᰰ�� �������� ������ �����ֽô� ���Դϴ� ���Ŀ� �񿹺��� �ִٸ� �������� ��å��Ű�ð�~ �η�η� ���� �����մϴ� ��̴� ����� �޲ٸ� ���� �޳������Դϴ�',
sysdate, '�ı����','sit', 1, 3);
--sit_idx=2
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '������ �������� ���ļ� ��������ٵ�, �㳷���� ����ֽð� ��å�� �����ֽô��� ���� ����ϼ��� �� ���ƿ�? ����&������ ���� �÷��ּż� �ʹ� ���Ҿ��! �����̴� �� Ÿ�ڸ��� ��� ���� �ڴ��󱸿� ������ ���� ������ �ʹ� �� ������ �� �� ���� ���� ����帳�ϴ�',
sysdate, '�ı����','sit', 2, 4);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�� �޸��� ã�� ����ʹ��� ���� ���� �ݰ����ϸ� �޷����� ��̸� ���� �Ƚ��ϸ� 2���� ������ �ٳ�Խ��ϴ� ��̴� ���̶� �ٸ����� �� �԰� �� ��� �� �� �� ���� ���� �� �ູ�߽��ϴ� ��̰� ���� �����ϴ� �ͱ׳��� �����̵� ���� ���ּ̳׿�^^ ������ ������� ì���ּż� �������� ����帳�ϴ�',
sysdate, '�ı����','sit', 2, 5);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '2��3���� ª������ �Ⱓ�̾��µ� ������ ���� �����ֽð� �������� �����е� ��ΰ� ������� �������ֽô°� ��������� ^^ Ǫ���̵� �ʹ� ��ſ� �ð��� �������Դ��� �������ڸ��� �����ڳ׿� ������ ���������� �� ã�ƺɰԿ� �����߽��ϴ� ^^',
sysdate, '�ı����','sit', 2, 6);
--sit_idx=3
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�׻� ������� �����ֽô� ����ʹ�~~ �Ź� ���� �����̰� �˾Ƽ� �� ������ ������ �پ�� �� �����ֽñ� ��ٷ���^^ ��ġ�� ���� �ֱⰰ�� �츮 ������ �������ֽð� ������ �����̸� ƴ ���Ƕ����� ���� �÷��ּż� �����մϴ�',
sysdate, '�ı����','sit', 3, 7);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '����ʹ԰� �����е��� ���� �������ּ̳�����~���߰� ��ſ� ������ �ٳ� �� �� ����� ���׿� �����մϴ�~^^',
sysdate, '�ı����','sit', 3, 8);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�������� �湮�ߴµ��� �츮 �����̰� ������ϰ� ��ſ��ϴ°� ���� ���� ���ʹ԰� �������� �����ϴ°� Ʋ�������~~ �ֵ��� ǥ���� Ƽ�� �� ���ݾƿ�^^ ���ʵ� �̸��� �˷��ָ� �˾Ƶ�� ���� �������� �˾Ƽ� ã�� ���ϴ� ������ �������� �� ��Ź�����^^',
sysdate, '�ı����','sit', 3, 9);
--sit_idx=4
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�κ� �������� �ʹ� �����ּż� �����մϴ�~! �������ڸ��� ���Ƽ� ���ٴ°ź��� ���������ּ̱��� �ʹ�����~! �� ��Ź�帱�Կ�!!',
sysdate, '�ı����','sit', 4, 10);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '������ ���� ���ֽð� �� ����ּż� �ֱⰡ �ູ�غ������ �����մϴ�!',
sysdate, '�ı����','sit', 4, 11);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ʹ��� �Ĳ��ϰ� �ɾ����ּ��� ������� ������ �ּż� �� �ϰ� ����� ���Դϴ�.. ���� �ð��� ���� ������ ��*�����ʹ� ������ ���߱⵵ �Ѵ�ϴ�^^ �׻� ������ �����Դϴ�~~',
sysdate, '�ı����','sit', 4, 12);
--sit_idx=5
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  'ó�� �̿��غ� ���񽺿��µ� ����ʹ��� ���� �� ������ �ǳ�� ���� ������� ���� �� �־����ϴ�. ���� ���鼭 ������ ��� ���ϰ� �����߽��ϴ�. ����帳�ϴ�!!',
sysdate, '�ı����','sit', 5, 13);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '���� ǥ���� ���� ����ʹ� �쿡�� �󸶳� �� ��ٿԴ��� �ܹ��� �˼� �־��~~^^ �� �����ؿ�!!',
sysdate, '�ı����','sit', 5, 14);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ߺ������ֽ� ���п� �̴ϰ� �� ������� �ǰ������� ���ƿ� ��å�� ���� �����ּż� �׷��� ���� �ջ��Դϴ٤� ���������� �÷��ּż� ���� ���� ������ ��ĥ�� �־���� �����մϴ� ^^ �� �����帮�ڽ��ϴ�',
sysdate, '�ı����','sit', 5, 15);
--sit_idx=6
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�׻� ���񺸴� �� �����ְ� ���ּ���. �ְ��Դϴ�.^^',
sysdate, '�ı����','sit', 6, 1);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '��湮�߾��^^ �̹����� �ʹ� ��̰� �� �����ٰ� �� �� ���Ƽ� �ʹ� �������������ϴ�. ���� ����ʹ��� ������ ģ���Ͻð� �ɾ �� ���ּſ�. �������� �� ���� �������ϰ� ���ƿԾ��. �������� �� ��Ź�帳�ϴ�^^',
sysdate, '�ı����','sit', 6, 2);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ʹ� �����ϰ� �����ּż� �����մϴ� �ְ���',
sysdate, '�ı����','sit', 6, 3);
--sit_idx=7
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�κΰ� ��~~�� ���ִٿ°Ű��Ƽ� ���� ����帳�ϴ� ���� ������ ���������� �� �����ֽð� �ְ� ���� ���ƿͼ� ����ǥ������ �� Ȱ���ϰ� ��°ɺ��� ���� ���ִٿԴٰ� �̾߱��ϴ°Ű��� ������ �ʹ� ���׿�~~! ���� ��Ź�帮�ڽ��ϴ� ���غ����� ��������!!',
sysdate, '�ı����','sit', 7, 4);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ܿ￩�����Ŀ� �ٽ� �����˰ԵǾ��µ� �ʹ��� �����ϼ� �����ֽð� �̻����ּż� ������ �ٳ�ü� �־���� �������� �ٽ� �� �� �˰�;��.',
sysdate, '�ı����','sit', 7, 5);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�׻� �ʹ� �����Ѣ� �ϰ� �ðܵ� ������ ����Ѣ� ������ �� �߳���ֽð� ������� ������� �����ֽô� �����ҰԾ���� ��� �������� �е��̶� �ıⳲ��͵����׿� ����^^;',
sysdate, '�ı����','sit', 7, 6);
--sit_idx=8
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '���ͺа� �����е� ��� �ʹ� �������� �� �����ֽð� ���������� �ٴٸ� �ʹ� �� ����ּż� ���� ��������Ф� �����ε� �ñ� �� ������ �� ��Ź�帮�� �;��',
sysdate, '�ı����','sit', 8, 7);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '���������� ƴ�������� ��å�����ֽð� ������ ���� �÷��ּż� �Ź� ������ ������^^ �����մϴ�',
sysdate, '�ı����','sit', 8, 8);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  'ó������ ����Ͷ�� ���� �˰� �Ǿ� 8������ �Ʊ� ���㸦 �ð�µ� �̷��Ա��� �ڻ��ϰ� ���ɼ��ǲ�. ���ٲ����� ��� ���߳׿�. �� �������̶� ���ְ� ����ֱ� �ǰ���',
sysdate, '�ı����','sit', 8, 9);
--sit_idx=9
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '��å�� �������ֽð� , �ʹ� �ߵ����ּż� �����մϴ�. �������� ��ȸ�� �ȴٸ� ���Ź�帮�� �ͳ׿�..����~^^*',
sysdate, '�ı����','sit', 9, 10);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '��~~~�� �Ǹ��� ����ͼ̽��ϴ�. � �������ð� �츮 �� �� �� ���޶�� �Ŵ޸��� ������ŭ �Ф� � �����ø� ���� �� �ּ��� ��....',
sysdate, '�ı����','sit', 9, 11);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�ణ �и��Ҿ� ������ �ִ� �������ε�, ������ �ö���� ������� ������ ���� �ڱ� ��ó�� ����ϰ� �� �����׿�. ��հ� ����༭ �����ϱ���. �����մϴ�~!!',
sysdate, '�ı����','sit', 9, 12);
--sit_idx=10
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '����ʹ� ������ �׷��� ������ ���� �ʹ� �����߽��ϴ�~^^ ���⿡ �� ���� ��Ź�帱�Կ�!! �����մϴ�!!',
sysdate, '�ı����','sit', 10, 13);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '�� �����̰� ������ ���ʹ��� �˾ƺ��� �� �پ���׿�^^ �� ì���ּż� �ʹ� �����ؿ�~!',
sysdate, '�ı����','sit', 10, 14);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '����� ��ġ�� ���� ���ƿ� ������ ǥ���� ���� ����� ��� ������ �ູ�ϰ� ������ �Գ׿�. �����մϴ�~',
sysdate, '�ı����','sit', 10, 15);


/************************************
�ı� ��� ���̵�����
************************************/

/*** ���⵿�� ***/

-- �ı� ��� 1-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�ü� �ʹ� �̻ڳ׿�!!', '2022-08-01', 1, 2);  
-- �ı� ��� 1-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-02', 1, 1);    

-- �ı� ��� 2-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '������ �ʹ� �ǰ��غ�����!!', '2022-08-02', 2, 3);     
-- �ı� ��� 2-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-03', 2, 2);

-- �ı� ��� 3-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '���� �ʹ� �ǰ��غ�����!!', '2022-08-03', 3, 4);     
-- �ı� ��� 3-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-04', 3, 3); 

-- �ı� ��� 4-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '���� ���� �����ؿ�!!', '2022-08-04', 4, 5);     
-- �ı� ��� 4-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-05', 4, 4); 

-- �ı� ��� 5-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����̰� �����ϳ׿�!!', '2022-08-05', 5, 6);     
-- �ı� ��� 5-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-06', 5, 5); 

-- �ı� ��� 6-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '���簡 ���� ���� �ö��׿�!!', '2022-08-06', 6, 7);     
-- �ı� ��� 6-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-07', 6, 6); 

-- �ı� ��� 7-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '������ �߻�����!!', '2022-08-07', 7, 8);     
-- �ı� ��� 7-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-08', 7, 7); 

-- �ı� ��� 8-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '����� �������� �ڶ��!!', '2022-08-08', 8, 9);     
-- �ı� ��� 8-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-09', 8, 8); 

-- �ı� ��� 9-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '���⵿�� �Ծ��� ������ �����մϴ�!!', '2022-08-09', 9, 10);     
-- �ı� ��� 9-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-10', 9, 9); 

-- �ı� ��� 10-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '������ ���ο� �����̶� �ູ��!!', '2022-08-11', 10, 1);     
-- �ı� ��� 10-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '�����մϴ�!!', '2022-08-12', 10, 10); 

/*** ���� ***/
--sit_idx: 16�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--1��° ���� 
--review_idx: 11 / sit_idx:16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�¾ƿ�~������ ���� �������̾~~ ��� �ʹ� ���������� ������ ���� �׻� �ڴ� ���� �������̿���..�ʹ� ��������� �츮 ������..�� �Ϳ��� ��Ҹ� �� ���׿�..�ǰ��ϰ� ������ �ݹ� ������',
sysdate, 11, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ƹ���~~�ϴ� �͵� �ʹ� �̻� �ư�����..�� �� ������ ���� ���� �־ �幵�߾..�ֱ����� ǥ������ ����� ���� ��� �Ϳ�����..�߸԰� �ߵ����༭ �ʹ� ���Ҿ..�������� �� ������ �;~~~^^',
sysdate, 11, 16);
--review_idx : 12 / sit_idx: 16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���ִ� ����� �������� ��� �鿡�� �������� ���� ���̿���..��Ģ���� ��Ȱ�� ������ �� ������ �ųʵ� ���� ����� ���� 1�� ���� ���� �ð��� �ʹ� ���ǳ׿�..���� �ູ�ϰ� �����ð� 1���� ������~~^^',
sysdate, 12, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ʹ��� �Ϳ��� ������ �ϴ����� ����� �� ����������..���ٴ� �����ϴ� �� �Ϳ��� ��� ���� ���ϳ׿�..��ϰ� ������ ������ ���� ��û ������ �ش�ϴ�..����ó�� �̻ڰ� �ǰ��ϰ� ũ�� �� �������~',
sysdate, 12, 16);
--review_idx : 13 / sit_idx: 16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ǰ��Ͻ��ٵ� �ı���� �ʹ� ��������..������ �ı��� �ʹ� �ߵ��� ���Ḷ�� ������ ������ �����̾���ϴ�..��� ���� ��������� ������ �ູ�� �������̾��..�ʹ� ����帮�� ������ �� �ƿ�~~',
sysdate, 13, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '��û ����;��� ���� ���� �� ���Ҿ..�� ������� �ֱ��� �������� ���� �ʹ� ���׿�.. ������� ���� �㿡 �� ������~~^^',
sysdate, 13, 16);


--sit_idx: 17�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--2��° ���� 
--review_idx: 14 / sit_idx:17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�¾ƿ�~������ ���� �������̾~~ ��� �ʹ� ���������� ������ ���� �׻� �ڴ� ���� �������̿���..�ʹ� ��������� �츮 ������..�� �Ϳ��� ��Ҹ� �� ���׿�..�ǰ��ϰ� ������ �ݹ� ������',
sysdate, 14, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '��������� ����~��� �ı������� �ֱ��� ���� �� ���� �α� �����̾��...������ �߾Ȱ� �־ �� ���Ҵ�ϴ�.. �Ϳ��� ���� �� ������~~',
sysdate, 14, 17);
--review_idx : 15 / sit_idx: 17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���ִ� ����� �������� ��� �鿡�� �������� ���� ���̿���..��Ģ���� ��Ȱ�� ������ �� ������ �ųʵ� ���� ����� ���� 1�� ���� ���� �ð��� �ʹ� ���ǳ׿�..���� �ູ�ϰ� �����ð� 1���� ������~~^^',
sysdate, 15, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ʹ��� �Ϳ��� ������ �ϴ����� ����� �� ����������..���ٴ� �����ϴ� �� �Ϳ��� ��� ���� ���ϳ׿�..��ϰ� ������ ������ ���� ��û ������ �ش�ϴ�..����ó�� �̻ڰ� �ǰ��ϰ� ũ�� �� �������~~',
sysdate, 15, 17);
--review_idx : 16 / sit_idx: 17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '��������� �츮 ����~~ ���߰� ��� �󸶳� ������ �� ����...�ı��� ��� ���� ���� �;� �Ѵ�ϴ�..�ȶ��ϰ� ����� ���� ���� �ǰ��ϰ� �� ������ �� ������~~^',
sysdate, 16, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�츮 �̻��� ����..�ٽ� ���� �� ���� ����ϰ� �ߵ����༭ �ʹ� �̻ڰ� ���Ҵ�ϴ�..�䵵 �߸԰� ��~~�� �� ��� ��~~�� �̻� ����..��å�ϴ� ����� ���� ������ ���Ť���~~',
sysdate, 16, 17);


--sit_idx: 18�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--3��° ���� 
--review_idx : 17 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� �Ȱ����� �ߵ����� ���� ������~ ������ ��ġ�� �ư��� �ָ� ���� �ɽ��� ƴ ���� ��ſ���ϴ�..�� ������ �߶��ϰ� �پ��� ����� �������׿�..�̻� ��� �״�� �� ũ�� �� ������~^^',
sysdate, 17, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����ؿ�. �츮 ������ ���� ����� ���� �ֱ��� ���� �����̵��̿���..���� �ִ� ���� �ɽ��� ƴ�� �����..������� Ű��ż� �𳭰� ���� ���� �ư��� ���� ���ϳ׿�~�ǰ��ϰ� �� ������ �� ������~~',
sysdate, 17, 18);
--review_idx : 18 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ȱ׷��� �̻� �ϼ̴��� �ñ��ߴµ� �ʹ� �����ؿ�..���� ������ �ѳ��̶� �ູ�ϰ� �������� �⵵�Ҳ���..�ѳ��̰� ������ ���� �Ƹ��ŷ���...�������ð� �� ������~~',
sysdate, 18, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ʹ� �̻� �ڲ� ���� ��� �Ǵ� ����..�߳�� �߸԰� �ߵ����༭ �ʹ� ���ϰ� ������ �־���ϴ�...����ó�� ��� ���� �ް� �� ������ ��ȸ�Ǹ� �� ������~^^',
sysdate, 18, 18);
--review_idx : 19 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ϸ�� ���� ���ϰ� ���� �ư�����..�����ϵ��� �Ϸ�� ��å�ϴ°� �ʹ� ��ſ���ϴ�...�Ⱦ� �������� ����� ���� ��� ���ϰ� �������� ���� �̻��..�ǰ��� �������� ��ȸ�Ǹ� �� ������ �Ϸ�~',
sysdate, 19, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '������ ó������ ���� �ʹ� ���� �ֺ��� �ɵ��� ����� ��Ÿ����µ� ���ݾ� �ٰ������� ���� �Ϳ��� �ư����󱸿�..�ʹ� ª�� �־� �ƽ����� �㿡 �� ������ �ͳ׿�~^^',
sysdate, 19, 18);


--sit_idx: 19�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--4��° ���� 
--review_idx : 20 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�¾ƿ�~������ ���� �������̾~~ ��� �ʹ� ���������� ������ ���� �׻� �ڴ� ���� �������̿���..�ʹ� ��������� �츮 ������..�� �Ϳ��� ��Ҹ� �� ���׿�..�ǰ��ϰ� ������ �ݹ� ������',
sysdate, 20, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ϳ��� �ذ� �츮 �ư� ������ �־��µ� �������� �ñ��ϳ׿�..�ʹ� ����;..����� �ϸ鼭 ���� ������ �����̶��ϴ� ���� �ǰ��� �� ������ �� ������',
sysdate, 20, 19);
--review_idx : 21 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�츮 �Ϳ����� �ư� �ʹ� �����ͳ׿�..���� �ܸ�� �ٸ� ���� �ŷ��� �ִ� �ư�����..�ֱ��� ���� ����������� ���� ���� ������ �ʹ� ���Ҵ�ϴ�..�ư��� �ູ�ϰ� �� �����ð� ��ȸ�Ǹ� �� �ƿ�..�����մϴ�^^',
sysdate, 21, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�߻���� �ʹ� ���� �����̿���..���� �Ȱ����� �ߵ����༭ �ʹ� ���ϰ� ������ �־���ϴ�..�ູ�ϰ� �ǰ��ϰ� ������ �Ǻ��� ����~',
sysdate, 21, 19);
--review_idx : 22 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '������ �츮 �ư� �ʹ� �����;��ؿ�~ ������ �� �ƿ�~^^',
sysdate, 22, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '������ ���� ó�� �������ͼ� ���� ������� ����..���� �Ⱦ������󱸿� ..���ϰ� ����� �����ϴ� ���̵��̶� ���������� �� �� �����ſ���^^ �����մϴ�~^^',
sysdate, 22, 19);


--sit_idx: 20�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--5��° ���� 
--review_idx : 23 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ź� ���� �ı� ���� �ּż� �ʹ� �����ؿ�..���̶� ���� �ʹ� ���ϰ� ��ſ���..�Ϳ��� ���� ���� �������� ���� �ͳ׿�~~^^',
sysdate, 23, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� �ֱ�� �̸��� ��︮�� �ֱ�ֱ��� �ֱ� �ʹ� �Ϳ����..���׸� ������ ������������ �䵵 �߸԰� �ߵ����� ���� �ֱ�..������ �� ������ �ͳ׿� ~~^^',
sysdate, 23, 20);
--review_idx : 24 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ϳ��� �̸� ���п� ���� ������ ��ſ� �� ���� ���½��ϴ�..���� �컶��� �ʹ� �����ͳ׿�..�̸��� �Բ� �ǰ��ϰ� �ູ�ϰ� �����ñ� �ٶ�����..���� �ʹ� �����߾..�� �ƾ~^^',
sysdate, 24, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̸��� �Բ��� 1���� ���� ���� ��ο��� �ູ�̾��..�� �Ϳ��� �󱼰� �ڰ�� �Ҹ����� ���� �׸��׿�.. ���ֿ� ������ �̸���~',
sysdate, 24, 20);
--review_idx : 25 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�������� �ı� ��������.. ���̰� �ʹ� ���� �ͳ׿�..�����̿� ���� �����̶� ���� ã�ƺ��� �׸����ϰ� �ִ�ϴ�..�ѵ��� �� ������ �ʹ� �����ߴ�ϴ�..���̶� �ǰ��ϰ� �ູ�ϰ� �ܿ� �� �����ð� ������ ���� �ƿ�~~^^',
sysdate, 25, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���̶� �� ������ ������ �ʹ� �����ϳ׿�..���� Ȱ�� ��ġ�� �ֱ��� ���Ƽ� �ʹ� �Ϳ����� ���̵��̿����ϴ�..���� �����鵵 �ֱ�� ������ ���� ������ϴ�..�ı� ����帮�� ������ �� �ư��� �� �����ϴ� ��̴ϴ�..�ູ�ϰ� �����ð� �� �ƿ�~^^',
sysdate, 25, 20);


--sit_idx: 21�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--6��° ���� 
--review_idx : 26 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�Ϳ��� ���� ���п� ���� ��̰� ���¾..����� ���� �߶��� ���� �� ����ͳ׿�..���̶� �ູ�ϰ� �����ð� �� �˰� �ͳ׿�~~^^',
sysdate, 26, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����մϴ�..�̻� ���� �� ���� ���տ� �Ƹ��Ÿ��׿�..���� ���� ���� �� �ູ�ߴ�ϴ�~�̻� ���� �� �� �� �ֱ� �ٷ���~~^^',
sysdate, 26, 21);
--review_idx : 27 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ʶ��� ��Ŷ� ��ſ� 1���̿���� ���縸 ������ ������ ���� �԰� ���ų����ٵ�... ������ �� ��̳��� ����~~^^',
sysdate, 27, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̻��� ĵ���~~ �߹̾�� �ȹ������ ������ ���ݴ� ģ������~~',
sysdate, 27, 21);
--review_idx : 28 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ʹ��̻� �츮�Ӷ� ��ӵ� �ð����� ���ﰡ�� �ʹ� �����߾�� �Ф�',
sysdate, 28, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̻� �Ѳ�~~ �߸Ծ �� �̻��� �Ѳٿ���~~ ü���� �۾Ƶ� �߹����� �Ѳ� �����ƺ��� �׻� �ǰ��ϰ� �ູ�ض�',
sysdate, 28, 21);


--sit_idx: 22�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--7��° ���� 
--review_idx : 29 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���~~ �ǰ��ϰ� �������� �׻� �������� ������ �ֱ����� ���̿��� ������ �� �ƿ�~~^^',
sysdate, 29, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ӶѴ� �������� �μչ��� ȯ���մϴ� ',
sysdate, 29, 22);
--review_idx : 30 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� �޺��̿ͼ� ���� ����?���׿?~^^ �޺���~~ ���� ������ ���� ��Ͷ� �������� ������ٲ�',
sysdate, 30, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�������� ������, ���� ���п� ���� ȣ���߾��~~ ������ �ֱ����� ������, ȥ�� ������ ���� ���� ���߾�~~ ���� �߸԰� ������ �� ���� ^^',
sysdate, 30, 22);
--review_idx : 31 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�и��� �ư����µ� ������ ���డ �Ǽ� ��¦����~^^ ���̾�~~ �̹��� �߹̾�� ���� ����ٴϴ��� ����߾�~~ ������ ��϶� �ų��� �پ���� *^^*',
sysdate, 31, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '������~~ �� �߸԰�, ������ �߸԰� �� �ǰ�������~~ ����� �ܴ���',
sysdate, 31, 22);


--sit_idx: 23�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--8��° ���� 
--review_idx : 32 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����̻� �޺��� ���� ���� �߹̶� ���� �ʹ� �����ϳ׿�~~ ������ ���� �������� ���ھ�� ���� ������ �ٽúƿ�^^',
sysdate, 32, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� �ٸ����̵鵵 �� �ʹ��ʹ� �̻�����, �츮�ӶѴ� ž3�ȿ� ����~~ �ʹ� �̻ڰ�, �̻۰� �̻����� �ϰ�, ���̻۵��� ���� ���̿��� ���� ���� �ʹ��ʹ� �����ϰ� �����ϳ׿�~ ������ ������ ������� Ű��ż� ������ �̻ڰ� ũ�� �ִ°� ���ƿ�~~ ������ �� ��ȸ�Ǹ� �츮�Ӷ� �����Ż�Ǵ°� �� ����ͳ׿�~~',
sysdate, 32, 23);
--review_idx : 33 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���Ż� ������~~ ������ ��� ���� �ް� �ڶ� Ƽ�� ���� ���� ���ϴ�~~',
sysdate, 33, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� �ų��� ���� �̻۾� ���� ���� ���� ����ϴ�. �߹̶��� ���� ���� ��Ű�鼭 �������� ���� ���п� ��å ���� ���� ������ ��ǰ� ���ƿ�^^ ���������� ���� ��� ��������� �ݿ��Ͽ� �ƿ�~~',
sysdate, 33, 23);
--review_idx : 34 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̻���� ��ǰ�� ��� �ִٰ� ������ ���� �����ϳ׿�~~ �ǰ��ϰ� ���ִ� ������ �� ������^^',
sysdate, 34, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���������� ���п� � ���� �߽��ϴ�~~ �ǰ��ϰ� �ູ�ϰ� ������ �ٶ�����',
sysdate, 34, 23);


--sit_idx: 24�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--9��° ���� 
--review_idx : 35 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ȶ��� ź���̶� �ູ�ϼ���~~ ���κ� ����� �����ż� ź���̰� ���� ������ ���ƿ� �ٽ� �ð� �ּż� �����մϴ�',
sysdate, 35, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, 'ä���̰� ���� �� �ȸԾ ������ ���Ҿ��µ� ���� ���� �߸Ծ��� ��� ������ �Ƚ�?��?�̻ڰ� ���� ä���� �׻� �ູ�ϱ�~~',
sysdate, 35, 24);
--review_idx : 36 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̻� �Ƿ��� ��� ��û �����ϳ׿�~~ �ʹ� �̻۾ư� �ð��ּż� �ູ�߾�� �Ƿ��� �̻ڰ� �ູ�ϱ�~~',
sysdate, 36, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�̻� ������ ������ ���� �䷷�ϳ׿�~~ ������ ��ġ���� �⺻�� ���� �̻� ���̿���� ������ �ٽ� ���� ^^',
sysdate, 36, 24);
--review_idx : 37 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '��������� ����!~? �����ϰ� �Ա⵵ �߸Դ� �Լ���? ������ ���� ���Ƽ� �ı����� �Դٰ��� �����̱⸸ �ص� �� ¢�°� ����� ���������� ����ϴ�? ����? 9���� �� ������',
sysdate, 37, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '������ ��ġ~? �����°� ���� ������ ��ġ���ϴ�~ �������� ���� ��ȯ�������� ���� �Ÿ��� �־ ����; ��ȣ�ڲ� ���ö� ������ ���ϰڰ�? �׻� �ǰ��ϰ� ~ �߸԰� ����! �� �ߵ�� ��~��',
sysdate, 37, 24);


--sit_idx: 25�� �ı�1(review_idx), �ı�2, �ı�3 , ���2��
--10��° ���� 
--review_idx : 38 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�ֱ����� ���ϰ� ������ �丮!~����θ��°͵� ���� �ʹ� ������ ����ٰ� �ؼ� ���ݸ� �����ϱ� �Ⱦ��������� �丮�� �ǰ��ϰ� ����� �������� ���ؾ��ϴϱ��.������ �����ϰ� ���߿� �� �� ������ �� ������',
sysdate, 38, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����Ӵϳ�!~ ������ ������ ������ �ް� �ൿ�� �ϰ� ������ �Ǵϱ� �� �ͼ��ϰ� ���������� �峭�Ⱑ �ߵ��ؼ� �� �ߵ ���� �縻���� �ͱ׳��̵� �ϰ� ��û ����ְ� ��Ƽ� �ǰﵵ �Ұſ��� �������� ���� ��ȯ�� �̶��ϴ�',
sysdate, 38, 25);
--review_idx : 39 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���ڰ� ������� ���ξ�!~? �ڱ� �ɰǿ� �ƹ��� �յ� ����� ���� �����ϰ� ����� �Ż�? 2���� �ϸ鼭 �������� ���� �ڰ�? �׻� �ǰ��ϰ� �������� ������ �� �����',
sysdate, 39, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '���� ���!~? �ֱ��� ���� ��Ų�ʵ� ���ϰ� �� ������� �ֱ⿹��? ��� ���� ��ĥ �ȵǾ����� ����ͳ׿� ������ �ߵ�� ������ ������� ������ �� ������ ',
sysdate, 39, 25);
--review_idx : 40 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����ڰ� ���ڰ� ���� ����!~? ���ϰ� �̽ð����� ������ �ڰ� �ְ���? �ڴ¸���� ���ڰ�? ��¸���� ���������? ���� ���ϰ� ����� ���� �ͳ׿�? ���������� �ǰ��ϰ� �������� �������� ������',
sysdate, 40, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '�����°� ������� ����߾�~~? 2�ڵ��� ���� �����鼭 �� ��ſ����? �ɾ��ϴµ� �������� ���� �ߵ�� �ֱ��� ¯?�̶��ϴ�? ��å�� ���ϰ� ��ȸ���� �󸶳� ������ �ۿ� ������ ������ �α� �������? �̸����, ���ŵ���,��������?? �׻� �ǰ��ϰ� �������� ������ �� ������',
sysdate, 40, 25);


/*****************************
�ı� ���ƿ� ���̵�����
*****************************/

/*** ���⵿�� ***/

-- �ı� ���ƿ� 1-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 2);  
-- �ı� ���ƿ� 1-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 3);    
-- �ı� ���ƿ� 1-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 4); 

-- �ı� ���ƿ� 2-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 3);  
-- �ı� ���ƿ� 2-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 4);    
-- �ı� ���ƿ� 2-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 5);  

-- �ı� ���ƿ� 3-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 4);  
-- �ı� ���ƿ� 3-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 5);    
-- �ı� ���ƿ� 3-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 6);  

-- �ı� ���ƿ� 4-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 5);  
-- �ı� ���ƿ� 4-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 6);    
-- �ı� ���ƿ� 4-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 7);  

-- �ı� ���ƿ� 5-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 6);  
-- �ı� ���ƿ� 5-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 7);    
-- �ı� ���ƿ� 5-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 8);  

-- �ı� ���ƿ� 6-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 7);  
-- �ı� ���ƿ� 6-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 8);    
-- �ı� ���ƿ� 6-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 9);  

-- �ı� ���ƿ� 7-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 8);  
-- �ı� ���ƿ� 7-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 9);    
-- �ı� ���ƿ� 7-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 10);  

-- �ı� ���ƿ� 8-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 9);  
-- �ı� ���ƿ� 8-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 10);    
-- �ı� ���ƿ� 8-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 1);  

-- �ı� ���ƿ� 9-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 10);  
-- �ı� ���ƿ� 9-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 1);    
-- �ı� ���ƿ� 9-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 2);  

-- �ı� ���ƿ� 10-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 1);  
-- �ı� ���ƿ� 10-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 2);    
-- �ı� ���ƿ� 10-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 3);


/*** ���� ***/
--1��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 11, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 11, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 11, 3);

--2��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 12, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 12, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 12, 6);

--3��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 13, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 13, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 13, 9);

--4��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 14, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 14, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 14, 12);

--5��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 15, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 15, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 15, 15);

--6��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 16, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 16, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 16, 3);

--7��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 17, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 17, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 17, 6);

--8��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 18, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 18, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 18, 9);

--9��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 19, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 19, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 19, 12);

--10��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 20, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 20, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 20, 15);

--11��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 21, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 21, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 21, 3);

--12��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 22, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 22, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 22, 6);

--13��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 23, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 23, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 23, 9);

--14��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 24, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 24, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 24, 12);

--15��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 25, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 25, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 25, 15);

--16��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 26, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 26, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 26, 3);

--17��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 27, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 27, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 27, 6);

--18��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 28, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 28, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 28, 9);

--19��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 29, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 29, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 29, 12);

--20��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 30, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 30, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 30, 15);

--21��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 31, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 31, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 31, 3);

--22��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 6);

--23��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 33, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 33, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 33, 9);

--24��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 34, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 34, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 34, 12);

--25��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 35, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 35, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 35, 15);

--26��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 36, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 36, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL,1, 36, 3);

--27��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 37, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 37, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 37, 6);

--28��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 38, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 38, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 38, 9);

--29��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 39, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 39, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 39, 12);

--30��° �ı�
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 40, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 40, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 40, 15);


