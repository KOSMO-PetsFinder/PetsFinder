--�� ���̵�����
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '�Ϳ����� �峭�� ��ġ�� ������ �Ϸ����� �پ�ٴϰ� ���̸���');

insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo, pet_species) 
    values (SEQ_pet_idx.nextval, 13, '�ݺ���', '5', 'Y', 'F', 'Australian Shepherd', '�Ϳ����� �峭�� ��ġ�� ������ �Ϸ����� �پ�ٴϰ� ���̸���', '�����', 'dog');


--���� ���̵�����
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 10�����Դϴ�', '���ƶ� ��� �;��', '��⵵ ������', 13, 30000, 35000, 40000, 0, 0, 0);
    
insert into sitter values (SEQ_sitter_idx.nextval, '���� �������Դϴ�', '�����̶� ��ſ���', '��⵵ �Ⱦ��', 2, 35000, 40000, 45000, 0, 0, 0);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_��CLIENT) 
    values (SEQ_sitter_idx .nextval, '���� ���Ͱ�� 10�����Դϴ�', '����� ����?�� �߸�ðڽ��ϴ�', '��⵵ ������', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);

insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 2�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�.', '��⵵ ������', 2, 26000, 35000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 3�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�.', '��⵵ �Ⱦ��', 3, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 4�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '��⵵ ������', 4, 30000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 5�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '��⵵ �Ȼ��', 5, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 6�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '��⵵ ������', 6, 33000, 38000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 7�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '��⵵ �����ν�', 7, 30000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 8�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '��⵵ ��õ��', 8, 30000, 32000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 9�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '����� ��õ��', 9, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 10�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '����� ������', 10, 40000, 45000, 50000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 11�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '����� ������', 11, 40000, 42000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 12�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '����� ���ʱ�', 12, 40000, 45000, 52000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '���� ���Ͱ�� 13�����Դϴ�', '����� �ݷ����� �ູ�� �Ϸ縦 å�����ڽ��ϴ�. ', '����� ������', 13, 50000, 55000, 60000, 0, 0, 0);

-- ���� �ı� ���̵�����
insert into review_board(review_idx,review_content,review_regdate,review_photo,review_flag,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, '�ı� ���� �븸���Դϴ� ��û ģ���Ͻð� �� ���㰡 ��Ʈ������ ���� Ǯ������ �� �� �����󱸿� ������ �� ���డ�Եȴٸ� �ٽ� �̿��ϰڽ��ϴ� ���� �����߽��ϴ�',
    sysdate, '�ı����', 'sit', 3, 2);
    
insert into review_board(review_idx,review_content,review_regdate,review_photo,review_flag,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, '1�ı� ���� �븸���Դϴ� ��û ģ���Ͻð� �� ���㰡 ��Ʈ������ ���� Ǯ������ �� �� �����󱸿� ������ �� ���డ�Եȴٸ� �ٽ� �̿��ϰڽ��ϴ� ���� �����߽��ϴ�',
    sysdate, '�ı����', 'sit', 3, 6);


-- ���� �ı� ��� ���̵�����
insert into review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '�� ���� ���������������׿� ���� �ı� �ϰ� ���� ��û�غ��ϴ�.', sysdate, 
            1,2);
insert into review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
    values (SEQ_reviewcomm_idx.nextval, '�� ���׿�', sysdate, 1, 3);
            
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

INSERT INTO AVAILABLE_SERVICES values (4, 9);

select s.*, typsrv_idx from sitter s, available_services a where a.sit_idx = s.sit_idx and a.sit_idx = 3;

select rb.*, m.member_name from review_board rb, member m where rb.member_idx = m.member_idx;































-----���⵿�� ���̵����� -------
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'�丣�þ�','M','06122 / ��õ������ ������ ���е� ��49-1 / 1207ȣ',
		sysdate,1,'adopt','�������','3��6���� ����',1,'cat','����, ���');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'������','F','06122 / ���� ������ ������111�� 3 / 1207ȣ',
		sysdate,1,'prtct','�������','1��6���� ����',1,'cat','����, ����, ���, ����');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'�긮Ƽ�� ��Ʈ���','F','06122 / ��⵵ ���ֽ� ������ 539-4 / 1207ȣ',
		sysdate,1,'prtct','�������','6����',1,'cat','����, ����, ����');       
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'�������','M','06122 / ��⵵ �����ν� ���ɵ� 593-3 / 1207ȣ',
		sysdate,1,'prtct','�������','2��7���� ����',0,'cat','���, �ֱ� ���� �ȵ���');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'�ҵ���','F','06122 / ��⵵ �����ν� ������ 379-32 / 1207ȣ',
		sysdate,1,'prtct','�������','2��9���� ����',1,'dog','������ ���, ������ ���ϰ� �������� ��ȸ');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'���� ���۵�','F','06122 / ��⵵ �����ν� ��굿 ��1 / 1207ȣ',
		sysdate,1,'prtct','�������','3��2���� ����',0,'dog','������, �ڽ�����');        
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'����� ��Ʈ����','M','06122 / ��⵵ �����ֽ� �ٻ굿 6242 / 1207ȣ',
		sysdate,1,'prtct','�������','7��6���� ����',1,'dog','�ڽ��� �־� ���濡 ������. �ΰ��̱� ������ �ΰ��� �ױ� �ٷ����� �������� �� ��Ƽ� �������� �Ծ簡��');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'��� ��Ʈ����','F','06122 / ��⵵ ��õ�� ����� �� 3-3 / 1207ȣ',
		sysdate,1,'adopt','�������','3���� ����',1,'dog','���, 3���� ����, �ε�ų ����(�޴ٸ� ��ħ)');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'Ǫ��','F','06122 / ��û�ϵ� ������ �Ｚ�� ����� ��46-2 / 1207ȣ',
		sysdate,1,'prtct','�������','5��5���� ����',0,'dog','���, �޴ٸ� �ణ ��������');       

alter table abandonedAnimal modify ABANI_LOC varchar2(100);
select * from abandonedAnimal;


---------�Ծ��ı� �Խ��� ���̵����� ---------------
INSERT INTO review_board(review_idx, review_content, review_regdate, review_photo,
                        review_flag, member_idx,abani_idx)
                    VALUES(SEQ_review_idx.nextval, '���̰� ���� ������ �ϳ��� �Ǿ 
���̸� ���� �����ֽ� ī�� �е鲲�� ���� �λ縦 ���ϰ� �;���� !
���̴� ���� �ǰ��� (�߰��� �߰� ���� �Ϸ��߰�, ���հ˻絵 ���� �߽��ϴ�) ��ȭ�Ӱ� ������ �־��
������ �ǳʴ� �� ������ ���� �� �����ǰڽ��ϴ� !
���̸� ���� �����ּż� �����մϴ� !
���� ���̵� ���� ���ֽð� ������ �ּż� �����ؿ� (:.', sysdate,'���ϰ��',
                    'adp',2,1);
INSERT INTO review_board(review_idx, review_content, review_regdate, review_photo,
                        review_flag, member_idx,abani_idx)
                    VALUES(SEQ_review_idx.nextval, '���Ը� �������� �¾��ּż� ����帳�ϴ�! ���Կ� ���ϸ����� �ູ�ϱ� �ٶ��ϴ�!
���Դ� ���������� ������ Ʈ���Ϻ������� Ÿ�� �������Ϳ��� ������ ������ �����ϰ� �̵��� �� �־����ϴ�. �׻� �������� ���� ���� ������ �Բ��� �ֽô� �������� ����帳�ϴ�.', sysdate,'���ϰ��',
                    'adp',3,8);

select * from review_board;



---------------�Ծ��� ���̵����� 
INSERT INTO ADOPTION_list(ADOPlist_idx, ADOPlist_date, abani_idx, member_idx)
                           VALUES(SEQ_ADOPlist_idx.nextval, sysdate, 1, 2);
INSERT INTO ADOPTION_list(ADOPlist_idx, ADOPlist_date, abani_idx, member_idx)
                           VALUES(SEQ_ADOPlist_idx.nextval, sysdate, 8, 3);


select * from ADOPTION_list;


------------�ı� �Խ��� ��� ���̵����� 
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�1' ,sysdate, 1, 1);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�2' ,sysdate, 2, 4);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�3' ,sysdate, 1, 1);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�4' ,sysdate, 1, 5);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�5' ,sysdate, 2, 5);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'����Դϴ�
                           ����Դϴ�
                           ����Դϴ�6' ,sysdate, 2, 4);

select * from review_Comment;


  		select a.*,  NVL(b.countlike, 0) as countlike
		from (select r.*, m.member_name member_namer
	        from review_board r, member m 
	        where r.member_idx=m.member_idx and abani_idx=1
	        order by review_idx desc) a 
		left OUTER JOIN (select  review_idx, count(review_idx) countlike 
                   	 	from review_like  where reviewLike_stt=1 group by review_idx) b 
		on a.review_idx=b.review_idx;

  		select 
		    a.*, b.member_name member_namec, b.member_photo
		from (select * 
		    from review_Comment 
		    where review_idx 
		    in(select review_idx 
		        from review_board 
		        where abani_idx=1)) a, member b 
		where a.member_idx=b.member_idx;





















select * from member where member_idx = 13;
select * from pet where member_idx = 13;

select * from sitter where member_idx = 2;
select * from review_board where sit_idx = 4;
select * from review_comment where member_idx = 2;
select typsrv_idx from available_services where sit_idx = 4;
select typtag_idx from sitter_tag where sit_idx = 4;
select typtag_expln from type_tag where typtag_idx in (select typtag_idx from sitter_tag where sit_idx = 4);
insert into sitter_tag values (4, 1);
insert into sitter_tag values (4, 2);
insert into sitter_tag values (4, 3);
insert into sitter_tag values (4, 5);
commit;

	select 
    s.member_idx,
    s.sit_idx, sit_title, sit_intro, sit_addr, s_fee, m_fee, b_fee, sit_client, sit_startpoint, sit_startcount,
    member_name, pet_idx, pet_age, pet_name, pet_gender
	from 
	    sitter s
	inner join pet p on s.member_idx = p.member_idx 
	inner join member m on s.member_idx = m.member_idx
	where s.member_idx= 13;
    
        select 
			typsrv_expln , typSrv_service 
		from 
			type_service 
		where 
			typsrv_idx 
			in 
				(
					select 
						typsrv_idx from available_services 
					where 
						sit_idx = 3
				)
		order by typsrv_idx asc;




    
    
    
    
select * from available_services where sit_idx = 3;
insert into available_services values (3, 10);

select typsrv_expln , typSrv_service from type_service 
	where typsrv_idx in (select typsrv_idx from available_services 
	where sit_idx = 3) order by typsrv_idx asc;
    
select r.*, m.member_name member_namer
	        from review_board r, member m 
	        where r.member_idx=m.member_idx and sit_idx=3
	        order by review_idx desc;
            
select 
    a.*, NVL(b.countlike, 0) as countlike
from
    ( select 
        r.*, m.member_name member_namer
    from 
        review_board r, member m 
    where 
        r.member_idx=m.member_idx and sit_idx=3
    order by review_idx desc ) a
left outer join
    ( select
        review_idx, count(review_idx) countlike
    from 
        review_like
    where
        reviewLike_stt = 1 
    group by review_idx ) b
on a.review_idx = b.review_idx;

select
        review_idx, count(review_idx) countlike
    from 
        review_like
    where
        reviewLike_stt = 1 
    group by review_idx;
    
	select rb.*, m.member_name member_namer from review_board rb
	inner join member m on rb.member_idx = m.member_idx
	where rb.sit_idx = 3;
    
    
insert into review_like values (SEQ_REVIEWLIKE_idx.nextval, 1, 9, 3);
insert into review_like values (SEQ_REVIEWLIKE_idx.nextval, 1, 9, 5);


-- ����
select * from sitter;
select * from member where member_idx = 13;

insert into sit_book values (seq_sbook_idx.nextval, 4, '2022/08/13', '2022/08/15');
insert into sit_book values (seq_sbook_idx.nextval, 4, '2022/08/16', '2022/08/18');
insert into sit_book values (seq_sbook_idx.nextval, 4, '2022/08/20', '2022/08/22');
insert into sit_book values (seq_sbook_idx.nextval, 3, '2022/08/13', '2022/08/14');
insert into sit_book values (seq_sbook_idx.nextval, 3, '2022/08/18', '2022/08/19');
insert into sit_book values (seq_sbook_idx.nextval, 3, '2022/08/21', '2022/08/23');

delete from sit_book;
select * from sit_book where sit_idx = 3;

-- ���� ���� sit_idx ��ȸ
select sit_idx from sit_book where (sbook_start <= '2022/08/12' and sbook_end > '2022/08/12' ) or (sbook_start < '2022/08/14' and sbook_end >= '2022/08/14' );

-- ���� ���� sitter ���� ��ȸ 
select 
    s.*, sitphoto_idx, sitphoto_photo, rownum rNum
from 
    sitter s 
FULL OUTER JOIN 
    (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp 
ON 
    s.sit_idx = sp.sit_idx         
where 
    s.sit_idx not in (
        select 
            sit_idx
        from 
            sit_book 
        where 
            (sbook_start <= '2022/08/12' and sbook_end > '2022/08/12') 
            or 
            (sbook_start < '2022/08/14' and sbook_end >= '2022/08/14')
    )
    
ORDER BY s.sit_idx DESC;

-- ���� ���� ��ȸ �� rNum�� �������� �߶� ���
select a.* from (
    select 
        s.*, sitphoto_idx, sitphoto_photo, rownum rNum
    from 
        sitter s 
    FULL OUTER JOIN 
        (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp 
    ON 
        s.sit_idx = sp.sit_idx         
    where 
        s.sit_idx not in (
            select 
                sit_idx
            from 
                sit_book 
            where 
                (sbook_start <= '2022/08/12' and sbook_end > '2022/08/12') 
                or 
                (sbook_start < '2022/08/14' and sbook_end >= '2022/08/14')
        )
        
    ORDER BY s.sit_idx DESC
    ) a
WHERE a.rNum between 1 and 4;



SELECT s.*, sitphoto_idx, sitphoto_photo, rownum rNum FROM sitter s
		FULL OUTER JOIN (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp
		ON s.sit_idx = sp.sit_idx
		order by s.sit_idx desc;

-- ��ü ��ȸ
select * from (
    select a.*, rownum rNum from (
        SELECT 
            s.*, sitphoto_idx, sitphoto_photo
        FROM 
            sitter s
		FULL OUTER JOIN 
            (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp
		ON 
            s.sit_idx = sp.sit_idx
		order by s.sit_idx desc
    ) a
)
where rNum between 1 and 4;