/******************************
멤버 더미데이터
******************************/
-- 회원 1
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa001', 'Aaa001!!', 'nor'
                    , 'aaa001@naver.com', '07727 / 서울 강서구 화곡동 1076-9 / 1001호', '유택일', '010-1111-1111'
                    , '2022-07-20', '1991-08-08', 'F');
-- 회원 2               
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa002', 'Aaa002!!', 'nor'
                    , 'aaa002@naver.com', '08771 / 서울 관악구 신림동 1484-10 / 1002호', '유택이', '010-2222-2222'
                    , '2022-07-21', '1992-08-08', 'M');
-- 회원 3            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa003', 'Aaa003!!', 'nor'
                    , 'aaa003@naver.com', '08803 / 서울 관악구 남현동 1053-4 / 1003호', '유택삼', '010-3333-3333'
                    , '2022-07-22', '1993-08-08', 'F');
                    
-- 회원 4            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa004', 'Aaa004!!', 'nor'
                    , 'aaa004@naver.com', '02632 / 서울 동대문구 장안동 241-13 / 1004호', '유택사', '010-4444-4444'
                    , '2022-07-23', '1994-08-08', 'M');

-- 회원 5            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa005', 'Aaa005!!', 'nor'
                    , 'aaa005@naver.com', '15827 / 경기 군포시 금정동 706-19 / 1005호', '유택오', '010-5555-5555'
                    , '2022-07-24', '1995-08-08', 'F');         

-- 회원 6
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa006', 'Aaa006!!', 'nor'
                    , 'aaa006@naver.com', '12169 / 경기 남양주시 화도읍 묵현리 580 / 1006호', '유택육', '010-6666-6666'
                    , '2022-07-25', '1996-08-08', 'M');
-- 회원 7               
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa007', 'Aaa007!!', 'nor'
                    , 'aaa007@naver.com', '14618 / 경기 부천시 상동 237-36 / 1007호', '유택칠', '010-7777-7777'
                    , '2022-07-26', '1997-08-08', 'F');
-- 회원 8            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa008', 'Aaa008!!', 'nor'
                    , 'aaa008@naver.com', '16588 / 경기 수원시 권선구 세류동 537-5 / 1008호', '유택팔', '010-8888-8888'
                    , '2022-07-27', '1998-08-08', 'M');
                    
-- 회원 9            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa009', 'Aaa009!!', 'nor'
                    , 'aaa009@naver.com', '14950 / 경기 시흥시 은행동 105-13 / 1009호', '유택구', '010-9999-9999'
                    , '2022-07-28', '1999-08-08', 'F');

-- 회원 10            
INSERT INTO MEMBER (member_idx,	member_id, member_pass, member_type
                    , member_email, member_addr, member_name, member_phone
                    , member_reg, member_birth, member_gender)
            VALUES ( SEQ_member_idx.nextval, 'aaa010', 'Aaa010!!', 'nor'
                    , 'aaa010@naver.com', '14033 / 경기 안양시 만안구 안양동 426-33 / 1010호', '유택십', '010-0000-0000'
                    , '2022-07-29', '2000-08-08', 'M');

-- 회원 11      
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kong1234', 'Kong1234!', 'nor', 'kong@gmail.com', '06122 / 서울 강남구 논현로 111길 3 / 1207호', '콩이', '010-2017-0717', sysdate, '2017/07/17', 'M');

-- 회원 12
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'malang1234', 'Malang1234!', 'nor', 'malang@naver.com', '13958 / 경기 안양시 만안구 경수대로 1141-6 / 405호', '말랭', '010-2018-0907', sysdate, '2018/09/07', 'F');

-- 회원 13
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ratte1234', 'Ratte1234!', 'nor', 'ratte@gmail.com', '07651 / 서울 강서구 강서로 348 / 1004호', '라떼', '010-2017-0124', sysdate, '2017/01/24', 'M');

-- 회원 14
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'moon1234', 'Moon1234!', 'nor', 'moon@naver.com', '07803 / 서울 강서구 공항대로 269-15 / 907호', '달이', '010-2013-0624', sysdate, '2013/06/24', 'M');

-- 회원 15
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'gold1234', 'Gold1234!', 'nor', 'gold@naver.com', '16414 / 경기 수원시 권선구 수성로35번길 60 / 503호', '금복', '010-2021-1225', sysdate, '2021/12/25', 'M');

/*** member_type : sit 10개  ( 회원 16 ~ 25 ) ***/

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'wintersea', 'Wintersea1234!', 'sit', 'wintersea@gmail.com', '21510 / 인천 남동구 간석로 2 / 2동', '손민수', '010-8954-2887', sysdate, '1989/07/22', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jennyp', 'Jennyp1234!', 'sit', 'jennyp@daum.net', '03325 / 서울 은평구 갈현로 181-7 / 3동', '이진희', '010-2336-8407', sysdate, '1994/02/10', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'blackplanet', 'Blackplanet1234!', 'sit', 'blackplanet@gmail.com', '21316 / 인천 부평구 갈산로 16 / 4동', '유이슬', '010-4487-8825', sysdate, '2000/01/15', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'milero', 'Milero1234!', 'sit', 'milero@naver.com', '07237 / 서울 영등포구 국회대로66길 11 / 15동', '박상민', '010-8878-2796', sysdate, '1991/05/11', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'studykim', 'Studykim1234!', 'sit', 'studykim@naver.com', '04903 / 서울 광진구 답십리로88길 6 / 13동', '백성열', '010-2578-1115', sysdate, '1988/06/28', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'valuevalue', 'Valuevalue1234!', 'sit', 'valuevalue@gmail.com', '14786 / 경기 부천시 범안로 252 / 2동 203호', '김남길', '010-8888-2883', sysdate, '1980/03/02', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kmc1004', 'Kmc1004!', 'sit', 'kmc1004@daum.net', '07340 / 서울 영등포구 국제금융로 79 / 101동', '강창모', '010-2186-5781', sysdate, '1982/01/26', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'bigdata', 'Bigdata1234!', 'sit', 'bigdata@gmail.com', '01072 / 서울 강북구 노해로8가길 7 / 4002동', '민재호', '010-5558-3434', sysdate, '2002/01/09', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'alphago', 'Alphago1234!', 'sit', 'alphago@naver.com', '03902 / 서울 마포구 가양대로 131 / 15동', '전향진', '010-2248-1176', sysdate, '1995/04/25', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'lemon123', 'Lemon123!', 'sit', 'lemon123@naver.com', '16461 / 경기 수원시 팔달구 매산로 4 / 12동', '서다운', '010-88730-1729', sysdate, '1995/07/28', 'F');

-- 회원 26
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ganzi1234', 'ganzi1234!', 'nor', 'ganzi@naver.com', '22762 / 인천 서구 청라커낼로 252 / 1503호', '간지', '010-2014-0505', sysdate, '2014/05/05', 'F');

-- 회원 27
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'some1234', 'Some1234!', 'nor', 'some@naver.com', '14743 / 경기 부천시 경인로 20 / 1301호', '솜이', '010-2014-0714', sysdate, '2014/07/14', 'F');

-- 회원 28
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'choco1234', 'Choco1234!', 'nor', 'choco@naver.com', '08608 / 서울 금천구 벚꽃로 40 / 1101호', '쪼코', '010-2014-1224', sysdate, '2014/12/24', 'F');

-- 회원 29
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ruby1234', 'Ruby1234!', 'nor', 'ruby@naver.com', '22002 / 인천 연수구 아트센터대로97번길 56 / 1601호', '루비', '010-2008-1024', sysdate, '2008/10/24', 'M');

-- 회원 30
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jung1234', 'jung1234!', 'nor', 'sjw4070@naver.com', '07724 / 서울 강서구 초록마을로22길 35 / 402호', '채정우', '010-9380-0974', sysdate, '1989/01/27', 'M');

-- 회원 31
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'young6316', 'young6316@', 'nor', 'tjakffod@naver.com', '14090 / 경기 안양시 만안구 소곡로 78 / 101동', '서영은', '010-8339-6316', sysdate, '1996/03/16', 'F');

-- 회원 32
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'heon93', 'sshhoo1123', 'nor', 'honey@naver.com', '22750 / 인천 서구 크리스탈로 148 / 373동', '오승헌', '010-9255-4611', sysdate, '1993/06/05', 'M');

-- 회원 33
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'rladmsdkz', 'Kosmo1234!', 'nor', '00kimeunah00@naver.com', '18146 / 경기 오산시 경기대로 15 / 1004동', '김은아', '010-1234-5678', sysdate, '1995/04/08', 'F');

-- 회원 34
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'wonjerry', 'kosmo1111!', 'nor', 'kenny9303@naver.com', '03752 / 서울 서대문구 경기대로5길 4 / 1동', '이원재', '010-2682-4951', sysdate, '1993/03/20', 'M');

-- 회원 35
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'sosohee', 'Sosohee1234!', 'nor', 'sosohee@naver.com', '08349 / 서울 구로구 개봉로11가길 5 / 1동', '김소현', '010-8549-7451', sysdate, '1999/04/20', 'F');

/** 시터 Pet **/

INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 16, '코코', 6, 'Y', 'M','불도그', '은아 광팬', '펫사진', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 17, '보리', 3, 'Y', 'M','골든 리트리버', '소심함', '펫사진', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 18, '두부', 2, 'N', 'F','푸들', '활발함', '펫사진','dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 19, '호두', 7, 'Y', 'M','포메라이안', '식탐이 강함', '펫사진', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 20, '사랑이', 8, 'Y', 'F','치와와', '낯을 많이 가림', '펫사진', 'dog');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 21, '몽이', 1, 'N', 'M','페르시안', '장난끼가 많음', '펫사진', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 22, '토리', 4, 'Y', 'M','샴', '목욕을 싫어함', '펫사진', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 23, '마루', 5, 'Y', 'F','벵갈', '사교성이 좋음', '펫사진', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 24, '구름', 2, 'Y', 'F','코숏', '호기심이 많음','펫사진', 'cat');
INSERT INTO pet(pet_idx,member_idx,pet_name,pet_age,pet_neut,pet_gender,pet_kind,pet_char,pet_photo,pet_species) 
values (SEQ_pet_idx.NEXTVAL, 25, '해피', 7, 'Y', 'M','스코티시 폴드', '배만져주는걸 좋아함', '펫사진', 'cat');


/******************************
유기동물 더미데이터
******************************/

-- 유기동물 1(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '불도그', 'F', '서울특별시 관악구 신림동 739'
                                , '2022-07-10', '1', 'prtct', '_'
                                , '4살', 1, 'dog', '머리는 크고 네모졌으며 코는 뭉뚝합니다. 어깨는 떡 벌어졌고, 다리는 튼튼합니다.');
-- 유기동물 2(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '페르시안', 'M', '서울특별시 관악구 봉천동 1712'
                                , '2022-07-11', '1', 'prtct', '_'
                                , '6살', 1, 'cat', '몸통은 짧지만 두껍고 다리도 두꺼우며 목도 짧고 굵습니다. 꼬리도 짧고 귀는 작습니다.');                                
-- 유기동물 3(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '골든리트리버', 'F', '경기도 군포시 속달동 산1-1'
                                , '2022-07-12', '1', 'prtct', '_'
                                , '5살', 1, 'dog', '근육질의 몸에 건강하고 산뜻한 느낌을 줍니다. 금색의 윤기나는 털을 가지고 있는데, 속털은 방수성이고 겉털은 탄력성이 있습니다.');
-- 유기동물 4(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '샴', 'F', '경기도 하남시 상사창동 198-3'
                                , '2022-07-13', '0', 'prtct', '_'
                                , '3살', 0, 'cat', '날씬한 몸에 짧고 가는 털을 가지고 있습니다. 애교가 많은 편입니다.');   
-- 유기동물 5(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '푸들', 'M', '서울특별시 강동구 고덕동 9-6'
                                , '2022-07-14', '1', 'prtct', '_'
                                , '9살', 1, 'dog', '활발하고 활동량이 많으며 장난을 즐기는 편입니다.');
-- 유기동물 6(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '스핑크스', 'M', '서울특별시 서대문구 연희동 129-13'
                                , '2022-07-15', '1', 'prtct', '_'
                                , '7살', 1, 'cat', '큰 눈과 귀가 특징이며, 추위나 더위에 약합니다. 털이 없는 대신, 피부에 유분기가 있습니다.'); 
/***************************************************************************************/                                
                                
-- 유기동물 7(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '말티즈', 'F', '경기도 광명시 하안동 산120-4'
                                , '2022-07-16', '1', 'adopt', '_'
                                , '10살', 1, 'dog', '작은 체구와 깨끗하고 하얀 털을 가진 귀여운 친구입니다.');
-- 유기동물 8(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '랙돌', 'M', '경기도 고양시 일산동구 마두동 794'
                                , '2022-07-17', '1', 'adopt', '_'
                                , '2살', 1, 'cat', '푸른 눈을 가지고 있으며 뚜렷한 털 색깔이 특징입니다.');                             
-- 유기동물 9(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '퍼그', 'F', '경기도 파주시 탄현면 법흥리 1790-8'
                                , '2022-07-18', '1', 'adopt', '_'
                                , '4살', 1, 'dog', '덩치가 크고 둥글고 눌러진듯한 얼굴과 이마에 주름이 많습니다.');
-- 유기동물 10(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '스코티시폴드', 'F', '인천광역시 계양구 동양동 609-1'
                                , '2022-07-19', '1', 'adopt', '_'
                                , '7살', 1, 'cat', '동그란 머리가 특징이며 눈은 반짝이고 선명합니다.');   
-- 유기동물 11(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '진돗개', 'F', '경기도 시흥시 계수동 643-2'
                                , '2022-07-20', '1', 'adopt', '_'
                                , '2살', 1, 'dog', '긴다리를 가지고 있고, 귀에 상처가 있습니다. 특징으로는 물을 싫어하고, 주변을 청결히 하는 습관이 있습니다.');

-- 유기동물 12(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '노르웨이숲', 'M', '서울특별시 용산구 청파동2가 1-8'
                                , '2022-07-21', '1', 'adopt', '_'
                                , '11살', 1, 'cat', '삼각형 모양의 머리에 두껍고 근육이 잘 발달된 목을 가지고 있습니다. 귀는 중간 정도 크기이며 턱은 둥근편입니다.');   
-- 유기동물 13(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '풍산개', 'F', '서울특별시 종로구 동숭동 1-151'
                                , '2022-07-22', '1', 'adopt', '_'
                                , '9살', 1, 'dog', '조용한 성격에 회색 털을 가진 날렵한 친구입니다.');
-- 유기동물 14(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '브리티시숏헤어', 'F', '서울특별시 종로구 충신동 120-1'
                                , '2022-07-23', '0', 'adopt', '_'
                                , '8살', 0, 'cat', '조심스럽고 순한 성격으로, 조용하며 인내심이 강합니다.');   
-- 유기동물 15(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '치와와', 'F', '서울특별시 서초구 양재동 산66-3'
                                , '2022-07-24', '1', 'adopt', '_'
                                , '9살', 1, 'dog', '치와와임에도 공격성은 없고, 눈이 크고 애교가 많은 친구입니다.');
-- 유기동물 16(입양완료)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '터키시앙고라', 'M', '서울특별시 서초구 반포동 1013'
                                , '2022-07-25', '1', 'adopt', '_'
                                , '3살', 1, 'cat', '상냥한 성격을 가지고 있지만 가끔 배고프면 예민합니다.');
/***************************************************************************************/   
-- 유기동물 17(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '도베르만', 'F', '서울특별시 용산구 서빙고동 241-21'
                                , '2022-07-26', '1', 'prtct', '_'
                                , '3살', 0, 'dog', '활동량이 많고 털이 많이 빠지는 편이에요.');
-- 유기동물 18(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '러시안블루', 'M', '서울특별시 도봉구 창동 27'
                                , '2022-07-27', '1', 'prtct', '_'
                                , '5살', 1, 'cat', '푸른빛이 도는 회색털과 초록색 눈을 가진 귀여운 친구입니다.');                                
-- 유기동물 19(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '닥스훈트', 'F', '서울특별시 송파구 삼전동 92-7'
                                , '2022-07-28', '1', 'prtct', '_'
                                , '10살', 0, 'dog', '다리가 짧고 애교가 많습니다. 산책할 때 땅을 파는 습관이 있습니다.');
-- 유기동물 20(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '킨카로우', 'F', '경기도 성남시 중원구 상대원동 153'
                                , '2022-07-29', '0', 'prtct', '_'
                                , '8살', 0, 'cat', '짧은 다리와 꺾인 귀를 가진 것이 특징입니다.');   
-- 유기동물 21(입양대기중)
INSERT INTO abandonedAnimal VALUES ( SEQ_abani_idx.nextval, '요크셔테리어', 'M', '경기도 성남시 분당구 정자동 135-1'
                                , '2022-07-30', '1', 'prtct', '_'
                                , '4살', 1, 'dog', '지능이 높고 애교가 많은 친구입니다. 길고 곧게 솟은 털이 매력인 친구입니다.');
                                
                                


/*******************************
시터 더미데이터
*******************************/

insert into sitter values (SEQ_sitter_idx.nextval, '정성을 다해 사랑으로 돌봐드려요', 
'집에 오는 아가들이 잘 따르고 편안해 할 때와 너무 만족해 하시며 고마워 하시는 견주님들을 볼 때 너무 보람있고 행복한 일이라고 느끼고 있습니다.
앞으로도 처음 그 마음처럼 사랑과 정성으로 아이들을 돌보겠습니다~~^^', 
'인천광역시 남동구 간석동', 16, 33000, 35000, 40000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '사랑으로 돌봐드리겠습니다', 
'남의 손에 맡긴다는게 반려견견과 보호자님에게 얼마나 중요한 일이지를 잘 알기에 저와 같은 애견 가정을 돕고 때로는 저도 도움 받는 길을 찾고자 지원하게 됐습니다. 
저희 아파트는 1년 된 신축아파트라 단지내 조경과 산책로가 아주 잘 되어있습니다', 
'서울특별시 은평구 갈현동', 17, 38000, 40000, 42000, 0, 0, 0);


insert into sitter values (SEQ_sitter_idx.nextval, '순둥이 동구네로 놀러오세요~~', 
'저희 집은 지하철역 바로 앞 초역세권으로 재건축 한 신축아파트이며 집 앞 상가에 우리 동구가 어릴 때부터 다니고 있는 24시간 동물병원이 있으며, 도보 5분 거리에 둘레길이 있고, 
10분 거리에 산책로가 있어 쾌적한 산책에는 아쉬움이 전혀 없습니다. 
꼭 소중한 인연으로 여러분을 만나고 싶습니다. 긴 글 읽어주셔서 감사합니다~', 
'인천광역시 부평구 갈산동', 18, 35000, 40000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '경험과 노하우로 안전한 시팅', 
'저희집 펫시팅의 장점: 1. 옥상 정원이 있어 대형견들도 답답하지 않게 지낼 수 있습니다. 2. 반려견 및 펫시팅 문화가 훨씬 발달되어있는 미국에서부터 펫시팅을 해온 경험이 있습니다. 
3. 집 근처 공원에서 숲 힐링 산책을 즐길 수 있습니다. 4. 친구를 좋아하는 호두와 함께 사회화를 배울 수 있습니다', 
'서울특별시 영등포구 여의도동', 19, 40000, 42000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '산책 프리미엄 펫시터', 
'산책은 주로 자차로 근처 큰 공원들을 가기 때문에 동네 한바퀴 도는 것과는 차원이 다르실꺼예요!!? 저는 펫시터를 부업이 아닌 전업으로 하고 있어(반려동물관리사 자격증 과정 중) 훨씬 세심하고 꼼꼼한 케어 가능합니다~ 안심하고 믿고 맡겨주세요!!:) ',
'서울특별시 광진구 중곡동', 20, 45000, 50000, 55000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '내 아이를 돌보듯 따뜻하고 편안하게', 
'반려견들이 더 존중받는 뉴질랜드에서부터 반려견을 키우고, 지인들의 반려견들을 맡아주던 경험도 많습니다. 집 근처에 있는 여러 공원과 반포천은 반려견들이 산책하기에 좋은 환경입니다. 내 아이를 돌보듯 따뜻하고 편안하게, 사랑과 정성으로 최선을 다해 보살펴드리겠습니다.', 
'경기도 부천시 계수동', 21, 50000, 52000, 55000, 0, 0, 0);

--긴글 (4개)
insert into sitter values (SEQ_sitter_idx.nextval, '사랑과 안락함이 넘치는', 
'안녕하세요. 저는 골든리트리버를 10년 동안 키우다가 작년 겨울에 하늘나라로 보냈어요. 
세상에서 그 누구보다 사랑하는 아이였기 때문에 행복한 하루하루를 만들어주는 것이 저의 가장 큰 기쁨이었습니다. 
반려견을 보내고 힘들어하던 중 펫시터를 해보자는 용기를 내게 되었어요. 반려견을 애지중지 키워본 경험이 있으므로 보호자님의 마음을 충분히 이해하며 사랑으로 돌보아드릴 자신이 있습니다.
- 현재 다른 반려견이 없어서 온전히 아이에게 집중할 수 있습니다 : ) - 집 근처에 공원과 한강 산책로가 있어서 언제든지 편하고 쾌적하게 산책이 가능합니다! 
- 보호자님과 적극적인 소통을 통해 아이가 최대한 편하게 지내다 갈 수 있게 노력하겠습니다.', 
'서울특별시 영등포구 여의도동', 22, 48000, 50000, 53000, 0, 0, 0);


insert into sitter values (SEQ_sitter_idx.nextval, '녹두와 함께 놀자', 
'안녕하세요. 녹두맘입니다 저의 반려견 녹두는 2살이고 4.5킬로 푸들입니다. 
조용하고 소심한 성격이에요. 실외 배변을 하는 아이라 산책을 하루 네 번 이상 나갑니다. 
자주 나가다 보니 자연스레 동네 강아지 친구들과 어울리고 잘 지낸답니다. 
펫시터를 하게 된 동기는, 여행이나 장기간 해외에 나갔다 오게 될 때 강아지를 아무 데나 보내게 겁나고 병원이나 
시설에 맡기는 것이 껄끄러워 편안한 집처럼 맡기고 갈 수 있는 곳을 찾다가 이곳을 알게 되었습니다. 
그러면서 저도 이 일을 잘 할 수 있겠다는 생각으로 시작하게 되었어요. 우리 집은 아이들의 관절을 위해 미끄럼방지 
매트를 깔아놨고 침대나 소파를 무리 없이 오르내릴 수 있게 강아지 계단도 설치해 두었습니다. 녹두가 장난감을 워낙 좋아해서 
다양한 장난감과 노즈 워크 장난감이 있어요.? 집 바로 앞에는 작은 공원이 있고 30미터 더 가면 단지 내 큰 공원이 있습니다.
거기서 강아지 공놀이를 하고 마음껏 뛰어놀 수 있어요. 보호자님들의 걱정이 없게 안전하고 행복한 돌봄으로 행복한 시간 보내겠습니다', '서울특별시 강북구 수유동', 23, 50000, 51000, 52000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '내 아이처럼 펫시팅합니다', 
'안녕하세요. 저는 동물을 사랑하는 50대 주부입니다. 2001년부터 반려견 두 마리를 키워왔고 두 아이 모두 무지개다리를 건너 보냈습니다. 
또 새로운 아이를 입양을 하기엔 제 나이도 있고 망설이던 중 우연히 펫시터 일을 알게되었습니다. 
잠깐이라도 맡아 돌봐주면 참 보람된 일이겠다 싶어 이 직업을 선택하게 되었습니다. 
믿고 맡겨주시면 내 아이 다루듯 성심성의를 다해 펫시팅 해드리겠습니다 감사합니다.', 
'서울특별시 마포구 상암동', 24, 38000, 40000, 45000, 0, 0, 0);

insert into sitter values (SEQ_sitter_idx.nextval, '책임감 있게 돌보겠습니다.', 
'안녕하세요 펫플래닛 펫시터 권*택입니다.? 제 집에 항상 함께하는 반려동물은 없습니다.
그러나 제집에는 8년동안 가끔 놀러오는 버디(시추 숫컷 12살 6kg 중성화수술)라는 강아지가 있습니다. 
큰딸하고 가까운친구가 보호자인데~ 유기견을 데려와 보호하다 정이 들어서 함께하는 강아지입니다. 
그 강아지는 조용하고 점잖고 귀여워서 제 집에 올 적마다 제 가족(집사람/큰딸/작은딸)의 관심과 사랑을 듬?X 받고 있습니다 
저도 정년 퇴임 후에는 강아지와 함께하는 시간을 많이 공유 하다보니 반려견 돌봄에 관심을 갖게 되었으며 그러던 중 
금년 6월말 경 사립학교연금관리공단을 통해서... 서울시50플러스재단과 (주)펫플래닛이 연계하여 실시하는 
50플러스 반려견 돌봄 전문가 매칭지원사업 참여자로 직무교육 프로그램을 수료까지 하게 되었습니다. 
제가 거주하는 집은 서호공원과 아주가까운곳에 위치한 대단위 아파트 단지입니다 강아지가 잔디밭 운동장도 
산책 할 수 있고 단지안에 있는 산책길도 조용하고 녹음으로 둘러싸여 강아지가 산책하기에는 더없이 좋은공간이라고 생각됩니다 
앞으로 펫시티활동은 펫플래닛을 통해서 많은정보를 공유하고 교육을 더 받아야 된다고 판단됩니다 책임감있게 활동하겠습니다 감사합니다. ', 
'경기도 수원시 팔달구 매산동', 25, 50000, 55000, 60000, 0, 0, 0);


/************************
시터별 서비스 더미데이터
************************/

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



--1번째 시터
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
--2번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (2,10 );
--3번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (3,8 );
--4번째 시터
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
--5번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,8 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (5,10 );
--6번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (6,7 );
--7번째 시터
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
--8번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,9 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (8,10 );
--9번째 시터
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
--10번째 시터
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,1 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,2 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,3 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,4 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,5 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,6 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,7 );
INSERT INTO AVAILABLE_SERVICES (sit_idx, typSrv_idx) VALUES (10,8 );

/*************************
시터별 태그 더미데이터
*************************/

--1번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (1, 5);
--2번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (2, 3);
--3번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (3, 5);
--4번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (4, 5);
--5번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (5, 5);
--6번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (6, 5);
--7번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (7, 5);
--8번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (8, 3);
--9번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 4);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (9, 5);
--10번째 시터
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 1);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 2);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 3);
INSERT INTO sitter_tag (sit_idx, typTag_idx) VALUES (10, 5);

/**************************
후기 더미데이터
**************************/

/*** 유기동물 : 1 ~ 10까지 ***/

-- 후기 1
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 택수로 지었어요! 지난 가족때문에 마음고생이 심했는데 잘 적응하고 있답니다.'
                    , '2022-08-01', '_', 'adp', 1, 7);
-- 후기 2
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 영은이로 지었어요! 애교가 넘치는 고양이입니다.'
                    , '2022-08-02', '_', 'adp', 2, 8);
-- 후기 3
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 승헌이로 지었어요! 과묵하지만 금방 적응하고 밥도 잘 먹어요.'
                    , '2022-08-03', '_', 'adp', 3, 9);
-- 후기 4
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 은아로 지었어요! 유기묘인걸 모를정도로 저를 잘 따릅니다.'
                    , '2022-08-04', '_', 'adp', 4, 10);
-- 후기 5
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 도형이로 지었어요! 진돗개라 그런지 정말 충성스러워요.'
                    , '2022-08-05', '_', 'adp', 5, 11);
-- 후기 6
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 정우로 지었어요! 밥도 잘 먹고 배변활동도 잘 해요! 장난감을 하나 사줘야겠어요!!'
                    , '2022-08-06', '_', 'adp', 6, 12);
-- 후기 7
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 원재로 지었어요! 풍산개답게 정말 활발해요.. 산책을 매일 시켜줘야겠어요.'
                    , '2022-08-07', '_', 'adp', 7, 13);
-- 후기 8                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 상원이로 지었어요! 처음에는 아픈줄 알고 걱정했는데 이제 적응했는지 동에번쩍 서에번쩍해요!'
                    , '2022-08-08', '_', 'adp', 8, 14);
-- 후기 9                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 코스모로 지었어요! 치와와아니랄까봐.. 정말 예민하네요. 그래도 사랑스러워요.'
                    , '2022-08-09', '_', 'adp', 9, 15);
-- 후기 10                    
INSERT INTO review_board (review_idx, review_content
                    , review_regdate, review_photo, review_flag, member_idx, abani_idx)
            VALUES ( SEQ_review_idx.nextval, '이름은 유겸이로 지었어요! 이렇게 이쁜 터키시앙고라 봤나요..? 우리 애기 너무 이쁘죠?'
                    , '2022-08-10', '_', 'adp', 10, 16);
                    

/*** 시터 후기 : 11 ~ 40 ***/

--sit_idx=1
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '항상 너무 이뻐해주세요~ 루이 늘 마음편히 맡길수 있어서 너무 감사합니다',
sysdate, '후기사진','sit', 1, 1);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '일년 넘게 만나지 못했는데 우리 큐는 기억하나봐요. ㅎㅎ 편안하고 행복하게 지내다 올 수 있어서 이번에도 진심으로 감사합니다 일상의 모든 순간들을 보호자의 마음으로 전달해 주시려고 노력하시는 펫시터님의 사랑과 배려 덕분에 맘편히 욕실공사를 마무리했습니다. 조만간 또 뵙겠습니다.',
sysdate, '후기사진','sit', 1, 2);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '늘 한결같이 강아지를 정성껏 돌봐주시는 분입니다 오후에 비예보가 있다며 부지런히 산책시키시고~ 두루두루 정말 감사합니다 쏘미는 펫엄마 꿈꾸며 깊은 꿈나라중입니다',
sysdate, '후기사진','sit', 1, 3);
--sit_idx=2
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '가을이 에너지가 넘쳐서 힘드셨을텐데, 밤낮으로 놀아주시고 산책도 시켜주시느라 정말 고생하셨을 것 같아요? 사진&일지도 자주 올려주셔서 너무 좋았어요! 가을이는 차 타자마자 뻗어서 내내 자더라구요 ㅎㅎㅎ 예쁨 받으며 너무 잘 지내다 온 것 같아 정말 감사드립니다',
sysdate, '후기사진','sit', 2, 4);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '몇 달만에 찾은 펫시터님을 보고 아주 반가워하며 달려가는 쏘미를 보고 안심하며 2박의 여행을 다녀왔습니다 쏘미는 집이랑 다름없이 잘 먹고 잘 놀고 잘 잔 것 같아 제가 더 행복했습니다 쏘미가 제일 좋아하는 터그놀이 공놀이도 많이 해주셨네요^^ 가족이 사랑으로 챙겨주셔서 진심으로 감사드립니다',
sysdate, '후기사진','sit', 2, 5);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '2박3일이 짧지않은 기간이었는데 일지도 자주 보내주시고 무엇보다 가족분들 모두가 사랑으로 보살펴주시는게 느껴졌어요 ^^ 푸딩이도 너무 즐거운 시간을 보내구왔는지 집에오자마자 꿀잠자네요 ㅎㅎㅎ 다음번에도 꼭 찾아뵐게요 감사했습니다 ^^',
sysdate, '후기사진','sit', 2, 6);
--sit_idx=3
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '항상 사랑으로 돌봐주시는 펫시터님~~ 매번 저희 생강이가 알아서 댁 현관문 앞으로 뛰어가서 문 열어주시길 기다려요^^ 덩치만 컸지 애기같은 우리 생강이 예뻐해주시고 일지며 사진이며 틈 나실때마다 자주 올려주셔서 감사합니다',
sysdate, '후기사진','sit', 3, 7);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '펫시터님과 가족분들이 정말 예뻐해주셨나봐요~빠삐가 즐거운 나들이 다녀 온 듯 기분이 좋네요 감사합니다~^^',
sysdate, '후기사진','sit', 3, 8);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '오랜만에 방문했는데도 우리 생강이가 편안해하고 즐거워하는걸 보면 역시 시터님과 가족들을 좋아하는게 틀림없어요~~ 애들은 표정에 티가 가 나잖아요^^ 서초동 이모라고 알려주면 알아듣고 이제 집앞으로 알아서 찾아 들어갑니다 ㅋㅋㅋ 다음에도 잘 부탁드려요^^',
sysdate, '후기사진','sit', 3, 9);
--sit_idx=4
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '두부 갈때마다 너무 잘해주셔서 감사합니다~! 집에들어가자마자 좋아서 날뛰는거보니 정말잘해주셨구나 싶더라고요~! 또 부탁드릴게요!!',
sysdate, '후기사진','sit', 4, 10);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '일지도 자주 써주시고 잘 놀아주셔서 애기가 행복해보였어요 감사합니다!',
sysdate, '후기사진','sit', 4, 11);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '너무나 꼼꼼하게 케어해주세요 사랑으로 돌보아 주셔서 늘 믿고 맏기는 곳입니다.. 가끔 시간이 맞지 않으면 유*진시터님 일정에 맞추기도 한답니다^^ 항상 감사한 마음입니다~~',
sysdate, '후기사진','sit', 4, 12);
--sit_idx=5
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '처음 이용해본 서비스였는데 펫시터님을 아주 잘 만나서 피노와 밝은 모습으로 만날 수 있었습니다. 일지 보면서 걱정을 덜어서 편하게 여행했습니다. 감사드립니다!!',
sysdate, '후기사진','sit', 5, 13);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '아이 표정을 보면 펫시터님 댁에서 얼마나 잘 놀다왔는지 단번에 알수 있어요~~^^ 늘 감사해요!!',
sysdate, '후기사진','sit', 5, 14);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '잘보살펴주신 덕분에 미니가 더 밝아지고 건강해진것 같아요 산책을 자주 시켜주셔서 그런지 힘이 뿜뿜입니다ㅎ 돌봄일지를 올려주셔서 걱정 없이 일정을 마칠수 있었어요 감사합니다 ^^ 또 연락드리겠습니다',
sysdate, '후기사진','sit', 5, 15);
--sit_idx=6
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '항상 저희보다 더 성의있게 봐주세요. 최고입니다.^^',
sysdate, '후기사진','sit', 6, 1);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '재방문했어요^^ 이번에도 너무 즐겁게 잘 보내다가 온 것 같아서 너무 만족스러웠습니다. 혜진 펫시터님은 언제나 친절하시고 케어를 잘 해주셔요. 걱정없이 잘 일정 마무리하고 돌아왔어요. 다음에도 잘 부탁드립니다^^',
sysdate, '후기사진','sit', 6, 2);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '너무 다정하게 돌봐주셔서 감사합니다 최고에요',
sysdate, '후기사진','sit', 6, 3);
--sit_idx=7
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '두부가 너~~무 잘있다온거같아서 깊이 감사드립니다 ㅎㅎ 일지도 정성스럽게 잘 남겨주시고 애가 집에 돌아와서 좋은표정으로 더 활발하게 노는걸보니 아주 잘있다왔다고 이야기하는거같아 마음이 너무 좋네요~~! 자주 부탁드리겠습니다 새해복많이 받으세요!!',
sysdate, '후기사진','sit', 7, 4);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '겨울여행이후에 다시 만나뵙게되었는데 너무나 세심하세 돌봐주시고 이뻐해주셔서 맘편히 다녀올수 있었어요 다음에도 다시 또 꼭 뵙고싶어요.',
sysdate, '후기사진','sit', 7, 5);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '항상 너무 감사한♡ 믿고 맡겨도 언제나 든든한♡ 저보다 더 잘놀아주시고 가족모두 사랑으로 돌봐주시니 걱정할게없어요 사실 가족같은 분들이라 후기남길것도없네요 저는^^;',
sysdate, '후기사진','sit', 7, 6);
--sit_idx=8
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '시터분과 가족분들 모두 너무 애정으로 잘 돌봐주시고 에너자이저 바다를 너무 잘 놀아주셔서 정말 감사드려요ㅠㅠ 앞으로도 맡길 일 있으면 또 부탁드리고 싶어요',
sysdate, '후기사진','sit', 8, 7);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '궂은날에도 틈날때마다 산책시켜주시고 일지도 자주 올려주셔서 매번 마음이 놓여요^^ 감사합니다',
sysdate, '후기사진','sit', 8, 8);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '처음으로 펫시터라는 분을 알게 되어 8개월된 아기 강쥐를 맡겼는데 이렇게까지 자상하게 성심성의껏. 봐줄꺼라고는 상상도 못했네요. 넘 말괄량이라 봐주고 놀아주길 피곤해',
sysdate, '후기사진','sit', 8, 9);
--sit_idx=9
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '산책도 자주해주시고 , 너무 잘돌봐주셔서 감사합니다. 다음에도 기회가 된다면 재부탁드리고 싶네요..꼬옥~^^*',
sysdate, '후기사진','sit', 9, 10);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '너~~~무 훌륭한 펫시터셨습니다. 운동 하지마시고 우리 애 좀 더 봐달라고 매달리고 싶을만큼 ㅠㅠ 운동 끝나시면 연락 좀 주세요 흙....',
sysdate, '후기사진','sit', 9, 11);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '약간 분리불안 증상이 있는 강아지인데, 일지에 올라오는 동영상과 사진을 보니 자기 집처럼 편안하게 잘 지내네요. 재밌게 놀아줘서 좋아하구요. 감사합니다~!!',
sysdate, '후기사진','sit', 9, 12);
--sit_idx=10
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '펫시터님 언제나 그렇듯 세심한 돌봄 너무 감사했습니다~^^ 내년에 또 돌봄 부탁드릴게요!! 감사합니다!!',
sysdate, '후기사진','sit', 10, 13);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '울 생강이가 이제는 시터님집 알아보고 막 뛰어들어가네요^^ 잘 챙겨주셔서 너무 감사해요~!',
sysdate, '후기사진','sit', 10, 14);
INSERT INTO review_board (review_idx,review_content, review_regdate,review_photo,review_flag,sit_idx,member_idx) 
values (SEQ_review_idx.NEXTVAL,  '펫시팅 마치고 집에 돌아온 마롱이 표정을 보니 사랑을 듬뿍 받으며 행복하게 지내고 왔네요. 감사합니다~',
sysdate, '후기사진','sit', 10, 15);


/************************************
후기 댓글 더미데이터
************************************/

/*** 유기동물 ***/

-- 후기 댓글 1-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '택수 너무 이쁘네요!!', '2022-08-01', 1, 2);  
-- 후기 댓글 1-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-02', 1, 1);    

-- 후기 댓글 2-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '영은이 너무 건강해보여요!!', '2022-08-02', 2, 3);     
-- 후기 댓글 2-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-03', 2, 2);

-- 후기 댓글 3-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '은아 너무 건강해보여요!!', '2022-08-03', 3, 4);     
-- 후기 댓글 3-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-04', 3, 3); 

-- 후기 댓글 4-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '정우 정말 씩씩해요!!', '2022-08-04', 4, 5);     
-- 후기 댓글 4-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-05', 4, 4); 

-- 후기 댓글 5-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '도형이가 씩씩하네요!!', '2022-08-05', 5, 6);     
-- 후기 댓글 5-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-06', 5, 5); 

-- 후기 댓글 6-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '원재가 살이 많이 올랐네요!!', '2022-08-06', 6, 7);     
-- 후기 댓글 6-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-07', 6, 6); 

-- 후기 댓글 7-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '승헌이 잘생겼어요!!', '2022-08-07', 7, 8);     
-- 후기 댓글 7-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-08', 7, 7); 

-- 후기 댓글 8-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '상원아 무럭무럭 자라라!!', '2022-08-08', 8, 9);     
-- 후기 댓글 8-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-09', 8, 8); 

-- 후기 댓글 9-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '유기동물 입양한 가족들 응원합니다!!', '2022-08-09', 9, 10);     
-- 후기 댓글 9-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-10', 9, 9); 

-- 후기 댓글 10-1
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '간지야 새로운 가족이랑 행복해!!', '2022-08-11', 10, 1);     
-- 후기 댓글 10-2
INSERT INTO review_Comment VALUES ( SEQ_reviewcomm_idx.nextval, '감사합니다!!', '2022-08-12', 10, 10); 

/*** 시터 ***/
--sit_idx: 16의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--1번째 시터 
--review_idx: 11 / sit_idx:16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '맞아여~콩지는 저희 막내딸이어여~~ 언니 너무 좋아하지만 콩지는 저랑 항상 자는 저희 막내딸이에여..너무 사랑스러운 우리 막내딸..고 귀여운 목소리 그 립네여..건강하게 지내다 금방 만나장',
sysdate, 11, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '아르르~~하는 것도 너무 이쁜 아가에여..너 무 멋지게 생겨 보고만 있어도 흐뭇했어여..애교스런 표정으로 엎드려 있음 어찌나 귀여운지..잘먹고 잘따라줘서 너무 좋았어여..다음에도 또 만나고 싶어여~~~^^',
sysdate, 11, 16);
--review_idx : 12 / sit_idx: 16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '견주님 사랑과 관심으로 모든 면에서 나무랄데 없는 아이에여..규칙적인 생활로 습관도 잘 잡히고 매너도 좋고 사랑도 많아 1월 같이 보낼 시간이 너무 기대되네여..연말 행복하게 보내시고 1월에 만나여~~^^',
sysdate, 12, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '너무나 귀여운 봉순이 하는짓도 모습도 다 사랑스러웠어여..혓바닥 빼꼼하는 고 귀여운 모습 눈에 선하네여..언니가 봉순이 못보고 가서 엄청 서운해 해답니댜..지금처럼 이쁘게 건강하게 크고 또 놀려오렴~',
sysdate, 12, 16);
--review_idx : 13 / sit_idx: 16
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '피곤하실텐데 후기까지 너무 감사드려여..콩지가 식구들 너무 잘따라서 저녁마다 집안이 웃음꽃 만발이었답니다..모든 것이 사랑스러운 콩지랑 행복한 일주일이었어여..너무 감사드리고 콩지랑 또 뵈여~~',
sysdate, 13, 16);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '엄청 보고싶었던 루이 만나 넘 좋았어여..더 밝아지고 애교도 많아진걸 보니 너무 좋네여.. 사랑스런 루이 담에 또 만나여~~^^',
sysdate, 13, 16);


--sit_idx: 17의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--2번째 시터 
--review_idx: 14 / sit_idx:17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '맞아여~콩지는 저희 막내딸이어여~~ 언니 너무 좋아하지만 콩지는 저랑 항상 자는 저희 막내딸이에여..너무 사랑스러운 우리 막내딸..고 귀여운 목소리 그 립네여..건강하게 지내다 금방 만나장',
sysdate, 14, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '사랑스러운 구즈~모든 식구들한테 애교도 많고 잘 따라서 인기 만점이었어여...무릎에 잘안겨 있어서 더 좋았답니다.. 귀여운 구즈 또 만나자~~',
sysdate, 14, 17);
--review_idx : 15 / sit_idx: 17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '견주님 사랑과 관심으로 모든 면에서 나무랄데 없는 아이에여..규칙적인 생활로 습관도 잘 잡히고 매너도 좋고 사랑도 많아 1월 같이 보낼 시간이 너무 기대되네여..연말 행복하게 보내시고 1월에 만나여~~^^',
sysdate, 15, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '너무나 귀여운 봉순이 하는짓도 모습도 다 사랑스러웠어여..혓바닥 빼꼼하는 고 귀여운 모습 눈에 선하네여..언니가 봉순이 못보고 가서 엄청 서운해 해답니댜..지금처럼 이쁘게 건강하게 크고 또 놀려오렴~~',
sysdate, 15, 17);
--review_idx : 16 / sit_idx: 17
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '사랑스러운 우리 꼬야~~ 꼬야가 없어서 얼마나 허전한 지 몰라여...식구들 모두 꼬야 보고 싶어 한답니다..똑똑하고 사랑도 많은 꼬야 건강하게 잘 지내고 또 만나자~~^',
sysdate, 16, 17);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '우리 이쁜이 초코..다시 만날 때 부터 기억하고 잘따라줘서 너무 이쁘고 좋았답니다..밥도 잘먹고 너~~무 잘 놀고 너~~무 이쁜 초코..산책하다 놀러오고 싶음 언제든 오렴ㅋㅋ~~',
sysdate, 16, 17);


--sit_idx: 18의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--3번째 시터 
--review_idx : 17 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '낯도 안가리고 잘따르고 순한 반죽이~ 에너지 넘치는 아가라 주말 내내 심심할 틈 없이 즐거웠답니다..공 가지고 발랄하게 뛰어놀던 모습이 생각나네여..이쁜 모습 그대로 잘 크고 또 만나자~^^',
sysdate, 17, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '감사해여. 우리 소중이 땡이 사랑도 많고 애교도 많은 순둥이들이에여..같이 있는 내내 심심할 틈이 없었어여..사랑으로 키우셔서 모난곳 없이 착한 아가들 눈에 선하네여~건강하게 잘 지내고 또 만나자~~',
sysdate, 17, 18);
--review_idx : 18 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '안그래도 이사 하셨는지 궁금했는데 너무 감사해여..좋은 곳에서 한남이랑 행복하게 지내지길 기도할께요..한남이가 요즘들어 눈에 아른거려여...잘지내시고 또 만나여~~',
sysdate, 18, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '너무 이뻐 자꾸 사진 찍게 되는 초코..잘놀고 잘먹고 잘따라줘서 너무 편하게 데리고 있었답니다...지금처럼 사랑 많이 받고 잘 지내고 기회되면 또 만나여~^^',
sysdate, 18, 18);
--review_idx : 19 / sit_idx: 18
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '하루는 정말 순하고 착한 아가에여..일주일동안 하루랑 산책하는게 너무 즐거웠답니다...안약 넣을때도 목욕할 때도 어찌나 순하고 의젓한지 정말 이뻤어여..건강히 잘지내고 기회되면 또 만나자 하루~',
sysdate, 19, 18);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '몽글이 처음에는 겁이 너무 많아 주변만 맴도는 모습에 안타까웠는데 조금씩 다가가보니 아주 귀여운 아가더라구여..너무 짧게 있어 아쉬웠고 담에 또 만나고 싶네여~^^',
sysdate, 19, 18);


--sit_idx: 19의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--4번째 시터 
--review_idx : 20 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '맞아여~콩지는 저희 막내딸이어여~~ 언니 너무 좋아하지만 콩지는 저랑 항상 자는 저희 막내딸이에여..너무 사랑스러운 우리 막내딸..고 귀여운 목소리 그 립네여..건강하게 지내다 금방 만나장',
sysdate, 20, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '귀여움 극강 우리 아가 감기기운 있었는데 괜찮은지 궁금하네여..너무 보고싶어여..펫시터 하면서 느낀 유일한 단점이랍니다 ㅋㅋ 건강히 잘 지내다 또 만나자',
sysdate, 20, 19);
--review_idx : 21 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '우리 귀염둥이 아가 너무 보구싶네여..멋진 외모와 다른 반전 매력이 있는 아가에여..애교도 많고 사랑스러워서 같이 지낸 날들이 너무 좋았답니다..아가랑 행복하게 잘 지내시고 기회되면 또 뵈여..감사합니다^^',
sysdate, 21, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '잘생기고 너무 순한 리온이에여..낯도 안가리고 잘따라줘서 너무 편하게 데리고 있었답니다..행복하고 건강하게 지내고 또보자 리온~',
sysdate, 21, 19);
--review_idx : 22 / sit_idx: 19
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '누나도 우리 아가 너무 보구싶어해여~ 다음에 또 뵈여~^^',
sysdate, 22, 19);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '연유가 어제 처음 낯선데와서 조금 힘들었나 봐여..저도 안쓰럽더라구여 ..순하고 사람을 좋아하는 아이들이라 다음번에는 더 잘 지낼거에여^^ 감사합니다~^^',
sysdate, 22, 19);


--sit_idx: 20의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--5번째 시터 
--review_idx : 23 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '매번 좋은 후기 남겨 주셔서 너무 감사해여..벤이랑 있음 너무 편하고 즐거워여..귀엽고 착한 벤이 오래도록 보고 싶네여~~^^',
sysdate, 23, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '정말 애기란 이름이 어울리는 애기애기한 애기 너무 귀여웠어여..조그만 입으로 오도독오도독 밥도 잘먹고 잘따르던 순한 애기..다음에 또 만나고 싶네여 ~~^^',
sysdate, 23, 20);
--review_idx : 24 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '귀여운 미르 덕분에 저희 가족두 즐거운 설 연휴 보냈습니다..정이 흠뻑들어 너무 보구싶네여..미르와 함께 건강하고 행복하게 지내시길 바랄께여..저도 너무 감사했어여..또 뵈어여~^^',
sysdate, 24, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '미르와 함께한 1월은 저희 가족 모두에게 행복이었어여..고 귀여운 얼굴과 코고는 소리까지 벌써 그립네여.. 담주에 만나자 미르야~',
sysdate, 24, 20);
--review_idx : 25 / sit_idx: 20
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '정성스런 후기 감사드려여.. 봄이가 너무 보고 싶네여..딸아이와 봄이 사진이랑 영상 찾아보고 그리워하고 있답니다..한동안 제 무릎이 너무 허전했답니다..봄이랑 건강하고 행복하게 겨울 잘 보내시고 따뜻한 봄에 뵈여~~^^',
sysdate, 25, 20);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '숑이랑 뽀 없으니 집안이 너무 허전하네여..정말 활기 넘치구 애교도 많아서 너무 귀여웠던 아이들이였습니다..저희 가족들도 애기들 때문에 많이 웃었답니다..후기 감사드리고 다음에 또 아가들 볼 생각하니 기뽑니다..행복하게 지내시고 또 뵈여~^^',
sysdate, 25, 20);


--sit_idx: 21의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--6번째 시터 
--review_idx : 26 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '귀여운 꼬미 덕분에 아주 즐겁게 지냈어여..사랑도 많고 발랄한 꼬미 또 보고싶네여..꼬미랑 행복하게 지내시고 또 뵙고 싶네여~~^^',
sysdate, 26, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '감사합니다..이쁜 콩지 얼굴 벌써 눈앞에 아른거리네여..보는 내낸 제가 더 행복했답니다~이쁜 콩지 또 볼 수 있길 바래여~~^^',
sysdate, 26, 21);
--review_idx : 27 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '똘똘이 까매랑 즐거운 1박이였어요 설사만 안했음 맛난거 많이 먹고 더신났을텐데... 다음엔 더 재미나게 놀자~~^^',
sysdate, 27, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '이쁜이 캔디야~~ 야미언니 안무서우니 다음엔 조금더 친해지자~~',
sysdate, 27, 21);
--review_idx : 28 / sit_idx: 21
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '너무이쁜 우리앙뚜 약속된 시간보다 일찍가서 너무 서운했어요 ㅠㅠ',
sysdate, 28, 21);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '이쁜 뿌꾸~~ 잘먹어서 더 이뻣던 뿌꾸예요~~ 체구는 작아도 야물딱진 뿌꾸 엄마아빠랑 항상 건강하고 행복해라',
sysdate, 28, 21);


--sit_idx: 22의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--7번째 시터 
--review_idx : 29 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '헤니~~ 건강하게 잘지내죠 항상 생각나는 멋지고 애교많은 아이예요 다음에 또 뵈요~~^^',
sysdate, 29, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '앙뚜는 언제든지 두손벌려 환영합니다 ',
sysdate, 29, 22);
--review_idx : 30 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '리한 달봉이와서 저도 힐링?獰邂六?~^^ 달봉아~~ 집도 가까우니 자주 놀러와라 맛난간식 만들어줄께',
sysdate, 30, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '인형같은 배지밀, 배추 덕분에 눈이 호강했어요~~ 은근히 애교쟁이 지밀이, 혼자 생각이 많은 착한 배추야~~ 맘마 잘먹고 다음에 또 보자 ^^',
sysdate, 30, 22);
--review_idx : 31 / sit_idx: 22
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '분명히 아가였는데 의젓한 숙녀가 되서 깜짝놀랬어요~^^ 꼬미야~~ 이번에 야미언니 병원 따라다니느라 고생했어~~ 다음에 언니랑 신나게 뛰어놀자 *^^*',
sysdate, 31, 22);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '단지야~~ 약 잘먹고, 영양제 잘먹고 얼렁 건강해지자~~ 사랑해 꿀단지',
sysdate, 31, 22);


--sit_idx: 23의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--8번째 시터 
--review_idx : 32 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '세상이쁜 달봉이 집에 가니 야미랑 제가 너무 서운하네요~~ 여행을 자주 가셨으면 좋겠어요 ㅎㅎ 조만간 다시뵈요^^',
sysdate, 32, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '물론 다른아이들도 다 너무너무 이쁘지만, 우리앙뚜는 탑3안에 들어요~~ 너무 이쁘고, 이쁜게 이쁜짓만 하고, 안이쁜데가 없는 아이여서 가고 나니 너무너무 허전하고 서운하네요~ 누나랑 엄마가 사랑으로 키우셔서 더더욱 이쁘게 크고 있는거 같아요~~ 다음에 또 기회되면 우리앙뚜 멋진신사되는거 또 보고싶네요~~',
sysdate, 32, 23);
--review_idx : 33 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '진신사 리온이~~ 누나들 사랑 많이 받고 자란 티가 아주 많이 납니다~~',
sysdate, 33, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '단지 신나서 웃는 이쁜얼굴 자주 봐서 저도 좋답니다. 야미랑도 서로 영역 지키면서 잘지내고 저도 덕분에 산책 자주 오래 나가서 운동되고 좋아요^^ 오리가슴살 간식 밤새 만들어놨어요 금요일에 뵈요~~',
sysdate, 33, 23);
--review_idx : 34 / sit_idx: 23
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '이쁜헤니 제품에 계속 있다가 없으니 많이 허전하네요~~ 건강하게 잘있다 다음에 또 만나자^^',
sysdate, 34, 23);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '에너자이저 덕분에 운동 많이 했습니다~~ 건강하고 행복하게 지내길 바랄께요',
sysdate, 34, 23);


--sit_idx: 24의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--9번째 시터 
--review_idx : 35 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '똑똑한 탄쿵이랑 행복하세요~~ 주인분 사랑이 많으셔서 탄쿵이가 복이 많은거 같아요 다시 맡겨 주셔서 감사합니다',
sysdate, 35, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '채식이가 밥을 잘 안먹어서 걱정이 많았었는데 집에 가서 잘먹었단 얘기 들으니 안심?獰楮?이쁘고 착한 채식이 항상 행복하길~~',
sysdate, 35, 24);
--review_idx : 36 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '이쁜 뽀롱이 없어서 엄청 섭섭하네요~~ 너무 이쁜아가 맡겨주셔서 행복했어요 뽀롱이 이쁘고 행복하길~~',
sysdate, 36, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '이쁜 사탕이 가고나니 집이 썰렁하네요~~ 에너지 넘치지만 기본이 아주 이쁜 아이였어요 다음에 다시 봐요 ^^',
sysdate, 36, 24);
--review_idx : 37 / sit_idx: 24
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '사랑스러운 베리!~? 듬직하고 먹기도 잘먹는 먹순이? 베리가 겁이 많아서 식구들이 왔다갔다 움직이기만 해도 좀 짖는것 빼고는 나무랄데도 없답니다? 베아? 9월에 또 만나자',
sysdate, 37, 24);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '염둥이 뭉치~? 앙증맞고 아주 영리한 뭉치랍니다~ 언제던지 오면 대환영이지만 워낙 거리가 멀어서 보고싶어도 보호자께 오시란 말씀도 못하겠고? 항상 건강하게 ~ 잘먹고 형아! 말 잘듣고 안~뇽',
sysdate, 37, 24);


--sit_idx: 25의 후기1(review_idx), 후기2, 후기3 , 댓글2개
--10번째 시터 
--review_idx : 38 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '애교많고 착하고 점잖은 토리!~말썽부리는것도 없고 너무 먹으면 살찐다고 해서 조금만 먹으니까 안쓰러웠지만 토리가 건강하게 살려면 몸관리를 잘해야하니까요.엄빠와 건행하고 나중에 볼 수 있으면 또 만나자',
sysdate, 38, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '에구머니나!~ 단지가 예쁨을 스스로 받게 행동을 하고 오후쯤 되니까 더 익숙하고 편해졌는지 장난기가 발동해서 제 발등도 물고 양말갖고 터그놀이도 하고 엄청 재미있게 놀아서 피곤도 할거예요 언제든지 오면 대환영 이랍니다',
sysdate, 38, 25);
--review_idx : 39 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '예쁘고 사랑스런 만두양!~? 자기 믈건에 아무도 손도 못대게 아주 소중하게 여기는 신사? 2박을 하면서 누나랑만 같이 자고? 항상 건강하게 잘지내고 다음에 또 놀러오렴',
sysdate, 39, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '예쁜 밤비!~? 애교도 많고 스킨십도 잘하고 넘 사랑스런 애기예요? 밤비가 간지 며칠 안되었지만 보고싶네요 누나말 잘듣고 씩씩한 모습으로 다음에 또 만나장 ',
sysdate, 39, 25);
--review_idx : 40 / sit_idx: 25
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '눈동자가 예쁘고 착한 보니!~? 보니가 이시간에는 오빠랑 자고 있겠지? 자는모습도 예쁘고? 노는모습도 사랑스럽고? 문득 보니가 더욱더 보고 싶네요? 만날때까지 건강하게 잘지내고 조만간에 만나자',
sysdate, 40, 25);
INSERT INTO review_Comment(reviewcomm_idx, reviewcomm_content, reviewcomm_regdate, review_idx, member_idx) 
values (SEQ_reviewcomm_idx.NEXTVAL, '앙증맞고 사랑스런 웬디야아~~? 2박동안 같이 지내면서 넘 즐거웠어요? 케어하는데 어려움없이 말도 잘듣고 애교도 짱?이랍니다? 산책도 잘하고 사회성이 얼마나 좋은지 밖에 데리고 나가면 인기 끝내줘요? 미모돼죠, 몸매돼죠,성격좋죠?? 항상 건강하게 잘지내고 다음에 또 만나자',
sysdate, 40, 25);


/*****************************
후기 좋아요 더미데이터
*****************************/

/*** 유기동물 ***/

-- 후기 좋아요 1-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 2);  
-- 후기 좋아요 1-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 3);    
-- 후기 좋아요 1-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 1, 4); 

-- 후기 좋아요 2-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 3);  
-- 후기 좋아요 2-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 4);    
-- 후기 좋아요 2-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 2, 5);  

-- 후기 좋아요 3-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 4);  
-- 후기 좋아요 3-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 5);    
-- 후기 좋아요 3-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 3, 6);  

-- 후기 좋아요 4-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 5);  
-- 후기 좋아요 4-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 6);    
-- 후기 좋아요 4-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 4, 7);  

-- 후기 좋아요 5-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 6);  
-- 후기 좋아요 5-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 7);    
-- 후기 좋아요 5-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 5, 8);  

-- 후기 좋아요 6-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 7);  
-- 후기 좋아요 6-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 8);    
-- 후기 좋아요 6-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 6, 9);  

-- 후기 좋아요 7-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 8);  
-- 후기 좋아요 7-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 9);    
-- 후기 좋아요 7-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 7, 10);  

-- 후기 좋아요 8-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 9);  
-- 후기 좋아요 8-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 10);    
-- 후기 좋아요 8-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 8, 1);  

-- 후기 좋아요 9-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 10);  
-- 후기 좋아요 9-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 1);    
-- 후기 좋아요 9-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 9, 2);  

-- 후기 좋아요 10-1
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 1);  
-- 후기 좋아요 10-2
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 2);    
-- 후기 좋아요 10-3
INSERT INTO review_like VALUES ( SEQ_reviewlike_idx.nextval, 1, 10, 3);


/*** 시터 ***/
--1번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 11, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 11, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 11, 3);

--2번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 12, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 12, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 12, 6);

--3번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 13, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 13, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 13, 9);

--4번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 14, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 14, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 14, 12);

--5번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 15, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 15, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 15, 15);

--6번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 16, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 16, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 16, 3);

--7번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 17, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 17, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 17, 6);

--8번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 18, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 18, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 18, 9);

--9번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 19, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 19, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 19, 12);

--10번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 20, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 20, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 20, 15);

--11번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 21, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 21, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 21, 3);

--12번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 22, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 22, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 22, 6);

--13번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 23, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 23, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 23, 9);

--14번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 24, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 24, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 24, 12);

--15번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 25, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 25, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 25, 15);

--16번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 26, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 26, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 26, 3);

--17번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 27, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 27, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 27, 6);

--18번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 28, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 28, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 28, 9);

--19번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 29, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 29, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 29, 12);

--20번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 30, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 30, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 30, 15);

--21번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 31, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 31, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 31, 3);

--22번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 32, 6);

--23번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 33, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 33, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 33, 9);

--24번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 34, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 34, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 34, 12);

--25번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 35, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 35, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 35, 15);

--26번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 36, 1);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 36, 2);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL,1, 36, 3);

--27번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 37, 4);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 37, 5);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 37, 6);

--28번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 38, 7);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 38, 8);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 38, 9);

--29번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 39, 10);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 39, 11);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 39, 12);

--30번째 후기
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 1, 40, 13);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 40, 14);
INSERT INTO review_like(reviewlike_idx,reviewlike_stt,review_idx,member_idx) 
values (SEQ_reviewlike_idx.NEXTVAL, 0, 40, 15);


