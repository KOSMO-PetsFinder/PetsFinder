--펫 더미데이터
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '귀엽지만 장난을 잘치고 집에서 하루쟁일 뛰어다니고 많이먹음');

insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo, pet_species) 
    values (SEQ_pet_idx.nextval, 13, '금복이', '5', 'Y', 'F', 'Australian Shepherd', '귀엽지만 장난을 잘치고 집에서 하루쟁일 뛰어다니고 많이먹음', '펫사진', 'dog');


--시터 더미데이터
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 10년차입니다', '은아랑 놀고 싶어요', '경기도 수원시', 13, 30000, 35000, 40000, 0, 0, 0);
    
insert into sitter values (SEQ_sitter_idx.nextval, '저는 말랭이입니다', '영은이랑 놀거에요', '경기도 안양시', 2, 35000, 40000, 45000, 0, 0, 0);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_ㄴCLIENT) 
    values (SEQ_sitter_idx .nextval, '저는 시터경력 10년차입니다', '당신의 강아?를 잘모시겠습니다', '경기도 수원시', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);

insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 2년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다.', '경기도 구리시', 2, 26000, 35000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 3년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다.', '경기도 안양시', 3, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 4년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '경기도 수원시', 4, 30000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 5년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '경기도 안산시', 5, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 6년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '경기도 성남시', 6, 33000, 38000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 7년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '경기도 의정부시', 7, 30000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 8년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '경기도 부천시', 8, 30000, 32000, 40000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 9년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '서울시 금천구', 9, 35000, 40000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 10년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '서울시 마포구', 10, 40000, 45000, 50000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 11년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '서울시 영등포', 11, 40000, 42000, 45000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 12년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '서울시 서초구', 12, 40000, 45000, 52000, 0, 0, 0);
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 13년차입니다', '당신의 반려견의 행복한 하루를 책임지겠습니다. ', '서울시 강동구', 13, 50000, 55000, 60000, 0, 0, 0);

-- 시터 후기 더미데이터
insert into review_board(review_idx,review_content,review_regdate,review_photo,review_flag,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, '후기 완전 대만족입니다 엄청 친절하시고 울 강쥐가 스트레스를 많이 풀엇는지 더 잘 웃더라구용 다음에 또 여행가게된다면 다시 이용하겠습니다 정말 감사했습니다',
    sysdate, '후기사진', 'sit', 3, 2);
    
insert into review_board(review_idx,review_content,review_regdate,review_photo,review_flag,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, '1후기 완전 대만족입니다 엄청 친절하시고 울 강쥐가 스트레스를 많이 풀엇는지 더 잘 웃더라구용 다음에 또 여행가게된다면 다시 이용하겠습니다 정말 감사했습니다',
    sysdate, '후기사진', 'sit', 3, 6);


-- 시터 후기 댓글 더미데이터
insert into review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '오 정말 만족스러웠나보네요 ㅎㅎ 후기 믿고 저도 신청해봅니다.', sysdate, 
            1,2);
insert into review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
    values (SEQ_reviewcomm_idx.nextval, '오 좋네요', sysdate, 1, 3);
            
-- 시터 및 멤버 정보 출력
select * from sitter s inner join member m on s.member_idx = m.member_idx where m.member_idx = 13;
select * from (select * from sitter s inner join member m on s.member_idx = m.member_idx where m.member_idx = 13) tb left outer join review_board rb on tb.sit_idx = rb.sit_idx;
select * from (select * from member where member_type = 'sit') where member_idx = 13;
select * from member where member_type = 'sit';

-- 시터 등록 시 태그

-- nopet -> np
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'np', '반려동물 없음');
-- pickup -> pu
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'pu', '픽업 가능');
-- big -> b
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'b', '대형견 가능');
-- playground -> pg
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'pg', '마당 있음');
-- oldcare -> oc
INSERT INTO TYPE_Tag values (SEQ_typTag_idx.NEXTVAL, 'oc', '노견 케어');

select * from type_tag;

-- 시터 등록 시 서비스

-- 실내놀이(터그놀이, 노즈워크 등) : play
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'play', '실내놀이(터그놀이, 노즈워크 등)');
-- 매일산책(산책 및 실외 배변 가능) : walk
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'walk', '매일산책(산책 및 실외 배변 가능)');
-- 응급처치(응급시 병원 이동 가능) : emrgency
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'emrgency', '응급처치(응급시 병원 이동 가능)');
-- 집앞 픽업(비용은 협의) : pickup
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'pickup', '집앞 픽업(비용은 협의)');
-- 모발관리(눈물 또는 빗질관리 가능) : hair
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'hair', '모발관리(눈물 또는 빗질관리 가능)');
-- 약물 복용(경구(입)복용 가능) : pills
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'pills', '약물 복용(경구(입)복용 가능)');
-- 목욕 가능(비용은 협의) : bath
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'bath', '목욕 가능(비용은 협의)');
-- 장기예약(14일 이상) : longcare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'longcare', '장기예약(14일 이상)');
-- 노견케어(8년이상) : oldcare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'oldcare', '노견케어(8년이상)');
-- 퍼피케어(1년미만의 퍼피) : puppycare
INSERT INTO TYPE_SERVICE values (SEQ_typSrv_idx.NEXTVAL, 'puppycare', '퍼피케어(1년미만의 퍼피)');

select * from available_services;

INSERT INTO AVAILABLE_SERVICES values (4, 9);

select s.*, typsrv_idx from sitter s, available_services a where a.sit_idx = s.sit_idx and a.sit_idx = 3;

select rb.*, m.member_name from review_board rb, member m where rb.member_idx = m.member_idx;































-----유기동물 더미데이터 -------
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'페르시안','M','06122 / 인천광역시 연수구 선학동 산49-1 / 1207호',
		sysdate,1,'adopt','사진경로','3년6개월 추정',1,'cat','검정, 흰색');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'메인쿤','F','06122 / 서울 강남구 논현로111길 3 / 1207호',
		sysdate,1,'prtct','사진경로','1년6개월 추정',1,'cat','검정, 갈색, 흰색, 순함');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'브리티시 쇼트헤어','F','06122 / 경기도 광주시 장지동 539-4 / 1207호',
		sysdate,1,'prtct','사진경로','6개월',1,'cat','검정, 갈색, 순함');       
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'샴고양이','M','06122 / 경기도 의정부시 가능동 593-3 / 1207호',
		sysdate,1,'prtct','사진경로','2년7개월 추정',0,'cat','흰색, 최근 유기 된듯함');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'불도그','F','06122 / 경기도 의정부시 용현동 379-32 / 1207호',
		sysdate,1,'prtct','사진경로','2년9개월 추정',1,'dog','검은색 흰색, 입질이 심하고 마을도로 배회');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'저먼 셰퍼드','F','06122 / 경기도 의정부시 고산동 산1 / 1207호',
		sysdate,1,'prtct','사진경로','3년2개월 추정',0,'dog','검은색, 박스유기');        
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'래브라도 리트리버','M','06122 / 경기도 남양주시 다산동 6242 / 1207호',
		sysdate,1,'prtct','사진경로','7년6개월 추정',1,'dog','박스에 넣어 찻길에 유기함. 인간이길 포기한 인간이 죽길 바랬나봄 보란듯이 잘 살아서 좋은데로 입양가길');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'골든 리트리버','F','06122 / 경기도 이천시 마장면 목리 3-3 / 1207호',
		sysdate,1,'adopt','사진경로','3개월 추정',1,'dog','흰색, 3개월 추정, 로드킬 당함(뒷다리 다침)');
insert into abandonedAnimal values
		(SEQ_abani_idx.nextval,'푸들','F','06122 / 충청북도 음성군 삼성면 양덕리 산46-2 / 1207호',
		sysdate,1,'prtct','사진경로','5년5개월 추정',0,'dog','흰색, 뒷다리 약간 불편해함');       

alter table abandonedAnimal modify ABANI_LOC varchar2(100);
select * from abandonedAnimal;


---------입양후기 게시판 더미데이터 ---------------
INSERT INTO review_board(review_idx, review_content, review_regdate, review_photo,
                        review_flag, member_idx,abani_idx)
                    VALUES(SEQ_review_idx.nextval, '담이가 제가 와준지 일년이 되어서 
담이를 제게 보내주신 카라 분들께도 감사 인사를 전하고 싶었어요 !
담이는 아주 건강히 (중간에 추가 접종 완료했고, 종합검사도 진행 했습니다) 평화롭게 지내고 있어요
무지개 건너는 그 날까지 제가 잘 보살피겠습니다 !
담이를 제게 보내주셔서 감사합니다 !
많은 아이들 구조 해주시고 보살펴 주셔서 감사해요 (:.', sysdate,'파일경로',
                    'adp',2,1);
INSERT INTO review_board(review_idx, review_content, review_regdate, review_photo,
                        review_flag, member_idx,abani_idx)
                    VALUES(SEQ_review_idx.nextval, '뭉게를 가족으로 맞아주셔서 감사드립니다! 뭉게와 매일매일이 행복하길 바랍니다!
뭉게는 쉐보레에서 지원한 트레일블레이저를 타고 더봄센터에서 가족의 곁으로 안전하게 이동할 수 있었습니다. 항상 동물들이 집에 가는 여정에 함께해 주시는 쉐보레에 감사드립니다.', sysdate,'파일경로',
                    'adp',3,8);

select * from review_board;



---------------입양목록 더미데이터 
INSERT INTO ADOPTION_list(ADOPlist_idx, ADOPlist_date, abani_idx, member_idx)
                           VALUES(SEQ_ADOPlist_idx.nextval, sysdate, 1, 2);
INSERT INTO ADOPTION_list(ADOPlist_idx, ADOPlist_date, abani_idx, member_idx)
                           VALUES(SEQ_ADOPlist_idx.nextval, sysdate, 8, 3);


select * from ADOPTION_list;


------------후기 게시판 댓글 더미데이터 
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다1' ,sysdate, 1, 1);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다2' ,sysdate, 2, 4);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다3' ,sysdate, 1, 1);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다4' ,sysdate, 1, 5);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다5' ,sysdate, 2, 5);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx,member_idx)
                           VALUES(SEQ_reviewcomm_idx.nextval,'댓글입니다
                           댓글입니다
                           댓글입니다6' ,sysdate, 2, 4);

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

select * from sitter;
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


-- 예약
select * from sitter;
select * from member where member_idx = 13;

insert into sit_book values (seq_sit_book_idx.currval, 4, '2022/08/10', '2022/08/12');
insert into sit_book values (seq_sit_book_idx.nextval, 4, '2022/08/14', '2022/08/16');
insert into sit_book values (seq_sit_book_idx.nextval, 4, '2022/08/18', '2022/08/20');
insert into sit_book values (seq_sit_book_idx.nextval, 3, '2022/08/13', '2022/08/14');
insert into sit_book values (seq_sit_book_idx.nextval, 3, '2022/08/16', '2022/08/17');
insert into sit_book values (seq_sit_book_idx.nextval, 3, '2022/08/19', '2022/08/21');

delete from sit_book;
select * from sit_book where sit_idx = 3;

select sit_idx from sit_book where (sbook_start <= '2022/08/12' and sbook_end > '2022/08/12' ) or (sbook_start < '2022/08/14' and sbook_end >= '2022/08/14' );
select * from sitter where sit_idx not in (select sit_idx from sit_book where (sbook_start <= '2022/08/12' and sbook_end > '2022/08/12' ) or (sbook_start < '2022/08/14' and sbook_end >= '2022/08/14' ));