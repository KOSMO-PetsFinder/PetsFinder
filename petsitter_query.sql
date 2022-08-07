--�� ���̵�����
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '�Ϳ����� �峭�� ��ġ�� ������ �Ϸ����� �پ�ٴϰ� ���̸���');
    

--���� ���̵�����
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 10�����Դϴ�', '���ƶ� ��� �;��', '��⵵ ������', 13, 30000, 35000, 40000, 0, 0, 0);
    
insert into sitter values (SEQ_sitter_idx.nextval, '���� �������Դϴ�', '�����̶� ��ſ���', '��⵵ �Ⱦ��', 2, 35000, 40000, 45000, 0, 0, 0);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_��CLIENT) 
    values (SEQ_sitter_idx .nextval, '���� ���Ͱ�� 10�����Դϴ�', '����� ����?�� �߸�ðڽ��ϴ�', '��⵵ ������', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);
    

-- ���� �ı� ���̵�����
insert into sitter_review(sitreview_idx,sitreview_regdate,sitreview_content,sitreview_photo,sitreview_startpoint,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, sysdate, '�ı� ���� �븸���Դϴ� ��û ģ���Ͻð� �� ���㰡 ��Ʈ������ ���� Ǯ������ �� �� �����󱸿� ������ �� ���డ�Եȴٸ� �ٽ� �̿��ϰڽ��ϴ� ���� �����߽��ϴ�',
    '����', 5, 6, 1);


-- ���� �ı� ��� ���̵�����
insert into sitrev_Comment(sitrevcomm_idx, sitrevcomm_content, sitrevcomm_regdate, sitreview_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '�� ���� ���������������׿� ���� �ı� �ϰ� ���� ��û�غ��ϴ�.', sysdate, 
            1,2);
            
-- ���� �� ��� ���� ���
select * from sitter s inner join member m on s.member_idx = m.member_idx where m.member_idx = 13;
select * from (select * from sitter s inner join member m on s.member_idx = m.member_idx where m.member_idx = 13) tb left outer join review_board rb on tb.sit_idx = rb.sit_idx;
select * from (select * from member where member_type = 'sit') where member_idx = 13;
select * from member where member_type = 'sit';

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

select * from type_tag;

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

select * from available_services;
-- ��) ���� sit_idx�� 13���� ���Ϳ��� ������ ���񽺰� 1, 4���̰� �� ������ �����´�!

INSERT INTO AVAILABLE_SERVICES values (2, 8);

select typsrv_idx from available_services where sit_idx = 13;

select typsrv_expln from type_service where typsrv_idx in (select typsrv_idx from available_services where sit_idx = 13);