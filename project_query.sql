select * from member;

-- ���̵�����
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kong1234', 'Kong1234!', 'nor', 'kong@naver.com', '06122 / ���� ������ ������ 111�� 3 / 1207ȣ', '����', '010-2017-0717', sysdate, '2017/07/17', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'malang1234', 'Malang1234!', 'nor', 'malang@naver.com', '13958 / ��� �Ⱦ�� ���ȱ� ������ 1141-6 / 405ȣ', '����', '010-2018-0907', sysdate, '2018/09/07', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ratte1234', 'Ratte1234!', 'nor', 'ratte@naver.com', '07651 / ���� ������ ������ 348 / 1004ȣ', '��', '010-2017-0124', sysdate, '2017/01/24', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'moon1234', 'Moon1234!', 'nor', 'moon@naver.com', '07803 / ���� ������ ���״�� 269-15 / 907ȣ', '����', '010-2013-0624', sysdate, '2013/06/24', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'gold1234', 'Gold1234!', 'nor', 'gold@naver.com', '16414 / ��� ������ �Ǽ��� ������35���� 60 / 503ȣ', '�ݺ�', '010-2021-1225', sysdate, '2021/12/25', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ganzi1234', 'ganzi1234!', 'nor', 'ganzi@naver.com', '22762 / ��õ ���� û��Ŀ���� 252 / 1503ȣ', '����', '010-2014-0505', sysdate, '2014/05/05', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'some1234', 'Some1234!', 'nor', 'some@naver.com', '14743 / ��� ��õ�� ���η� 20 / 1301ȣ', '����', '010-2014-0714', sysdate, '2014/07/14', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'choco1234', 'Choco1234!', 'nor', 'choco@naver.com', '08608 / ���� ��õ�� ���ɷ� 40 / 1101ȣ', '����', '010-2014-1224', sysdate, '2014/12/24', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ruby1234', 'Ruby1234!', 'nor', 'ruby@naver.com', '22002 / ��õ ������ ��Ʈ���ʹ��97���� 56 / 1601ȣ', '���', '010-2008-1024', sysdate, '2008/10/24', 'M');

-- ���� �ϳ��� �߰��ؼ� �����ּ���.. �̸��ϸ� �ڱⲨ �ϳ� ���ְ� ���̹�, ���� ���ܸ� �� ����.. �ּҴ� ����� �ϴ� ��� ���� �������� �ɷ�.. ��ȭ��ȣ�� ������ϵ� ���� ������..
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jung1234', 'jung1234!', 'nor', 'sjw4070@naver.com', '07724 / ���� ������ �ʷϸ�����22�� 35 / 402ȣ', 'ä����', '010-9380-0974', sysdate, '1989/01/27', 'M');