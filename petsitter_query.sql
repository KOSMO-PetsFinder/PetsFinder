--펫 더미데이터
insert into pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char) 
    values (SEQ_pet_idx.nextval, 1, 'Toast', '5', 'Y', 'F', 'Australian Shepherd', '귀엽지만 장난을 잘치고 집에서 하루쟁일 뛰어다니고 많이먹음');
    

--시터 더미데이터
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '저는 시터경력 10년차입니다', '당신의 강아?를 잘모시겠습니다', '경기도 수원시', 1, 1000, 2000, 3000, 4000, 5000, 6000, 1);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '저는 시터경력 5년차입니다', '당신의 강아?를 잘모시겠습니다', '경기도 안양시', 2, 1000, 2000, 3000, 4000, 5000, 6000, 1);
    
insert into sitter (sit_idx, sit_title, sit_intro, sit_addr, member_idx, s_fee_day, s_fee_night, m_fee_day, 
    m_fee_night, b_fee_day, b_fee_night, sit_CLIENT) 
    values (SEQ_sitter_idx .nextval, '저는 시터경력 10년차입니다', '당신의 강아?를 잘모시겠습니다', '경기도 수원시', 41, 1000, 2000, 3000, 4000, 5000, 6000, 50);
    

-- 시터 후기 더미데이터
insert into sitter_review(sitreview_idx,sitreview_regdate,sitreview_content,sitreview_photo,sitreview_startpoint,sit_idx,member_idx) 
    values(SEQ_review_idx.nextval, sysdate, '후기 완전 대만족입니다 엄청 친절하시고 울 강쥐가 스트레스를 많이 풀엇는지 더 잘 웃더라구용 다음에 또 여행가게된다면 다시 이용하겠습니다 정말 감사했습니다',
    '사진', 5, 6, 1);


-- 시터 후기 댓글 더미데이터
insert into sitrev_Comment(sitrevcomm_idx, sitrevcomm_content, sitrevcomm_regdate, sitreview_idx, member_idx)
    values(SEQ_reviewcomm_idx.nextval, '오 정말 만족스러웠나보네요 ㅎㅎ 후기 믿고 저도 신청해봅니다.', sysdate, 
            1,2);