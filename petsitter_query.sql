--�� ���̵�����
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '�Ϳ����� �峭�� ��ġ�� ������ �Ϸ����� �پ�ٴϰ� ���̸���');
    

--���� ���̵�����
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '���� ���Ͱ�� 10�����Դϴ�', '����� ����?�� �߸�ðڽ��ϴ�', '��⵵ ������', 1, 1000, 2000, 3000, 4000, 5000, 6000, 1);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '���� ���Ͱ�� 5�����Դϴ�', '����� ����?�� �߸�ðڽ��ϴ�', '��⵵ �Ⱦ��', 2, 1000, 2000, 3000, 4000, 5000, 6000, 1);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '���� ���Ͱ�� 10�����Դϴ�', '����� ����?�� �߸�ðڽ��ϴ�', '��⵵ ������', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);
    

-- ���� �ı� ���̵�����
insert into sitter_review(sitreview_idx,sitreview_regdate,sitreview_content,sitreview_photo,sitreview_startpoint,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, sysdate, '�ı� ���� �븸���Դϴ� ��û ģ���Ͻð� �� ���㰡 ��Ʈ������ ���� Ǯ������ �� �� �����󱸿� ������ �� ���డ�Եȴٸ� �ٽ� �̿��ϰڽ��ϴ� ���� �����߽��ϴ�',
    '����', 5, 6, 1);


-- ���� �ı� ��� ���̵�����
insert into sitrev_Comment(sitrevcomm_idx, sitrevcomm_content, sitrevcomm_regdate, sitreview_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '�� ���� ���������������׿� ���� �ı� �ϰ� ���� ��û�غ��ϴ�.', sysdate, 
            1,2);