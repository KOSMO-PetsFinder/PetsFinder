--펫 더미데이터
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '귀엽지만 장난을 잘치고 집에서 하루쟁일 뛰어다니고 많이먹음');
    

--시터 더미데이터
insert into sitter values (SEQ_sitter_idx.nextval, '저는 시터경력 10년차입니다', '은아랑 놀고 싶어요', '경기도 수원시', 13, 30000, 35000, 40000, 0, 0, 0);
    
insert into sitter values (SEQ_sitter_idx.nextval, '저는 말랭이입니다', '영은이랑 놀거에요', '경기도 안양시', 2, 35000, 40000, 45000, 0, 0, 0);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_ㄴCLIENT) 
    values (SEQ_sitter_idx .nextval, '저는 시터경력 10년차입니다', '당신의 강아?를 잘모시겠습니다', '경기도 수원시', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);
    

-- 시터 후기 더미데이터
insert into sitter_review(sitreview_idx,sitreview_regdate,sitreview_content,sitreview_photo,sitreview_startpoint,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, sysdate, '후기 완전 대만족입니다 엄청 친절하시고 울 강쥐가 스트레스를 많이 풀엇는지 더 잘 웃더라구용 다음에 또 여행가게된다면 다시 이용하겠습니다 정말 감사했습니다',
    '사진', 5, 6, 1);


-- 시터 후기 댓글 더미데이터
insert into sitrev_Comment(sitrevcomm_idx, sitrevcomm_content, sitrevcomm_regdate, sitreview_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '오 정말 만족스러웠나보네요 ㅎㅎ 후기 믿고 저도 신청해봅니다.', sysdate, 
            1,2);
            
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
-- 예) 현재 sit_idx가 13번인 시터에게 가능한 서비스가 1, 4번이고 그 내용을 가져온다!

INSERT INTO AVAILABLE_SERVICES values (2, 8);

select typsrv_idx from available_services where sit_idx = 13;

select typsrv_expln from type_service where typsrv_idx in (select typsrv_idx from available_services where sit_idx = 13);