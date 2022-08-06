select * from member;

-- 더미데이터
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'kong1234', 'Kong1234!', 'nor', 'kong@naver.com', '06122 / 서울 강남구 논현로 111길 3 / 1207호', '콩이', '010-2017-0717', sysdate, '2017/07/17', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'malang1234', 'Malang1234!', 'nor', 'malang@naver.com', '13958 / 경기 안양시 만안구 경수대로 1141-6 / 405호', '말랭', '010-2018-0907', sysdate, '2018/09/07', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ratte1234', 'Ratte1234!', 'nor', 'ratte@naver.com', '07651 / 서울 강서구 강서로 348 / 1004호', '라떼', '010-2017-0124', sysdate, '2017/01/24', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'moon1234', 'Moon1234!', 'nor', 'moon@naver.com', '07803 / 서울 강서구 공항대로 269-15 / 907호', '달이', '010-2013-0624', sysdate, '2013/06/24', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'gold1234', 'Gold1234!', 'nor', 'gold@naver.com', '16414 / 경기 수원시 권선구 수성로35번길 60 / 503호', '금복', '010-2021-1225', sysdate, '2021/12/25', 'M');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ganzi1234', 'ganzi1234!', 'nor', 'ganzi@naver.com', '22762 / 인천 서구 청라커낼로 252 / 1503호', '간지', '010-2014-0505', sysdate, '2014/05/05', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'some1234', 'Some1234!', 'nor', 'some@naver.com', '14743 / 경기 부천시 경인로 20 / 1301호', '솜이', '010-2014-0714', sysdate, '2014/07/14', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'choco1234', 'Choco1234!', 'nor', 'choco@naver.com', '08608 / 서울 금천구 벚꽃로 40 / 1101호', '쪼코', '010-2014-1224', sysdate, '2014/12/24', 'F');

INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'ruby1234', 'Ruby1234!', 'nor', 'ruby@naver.com', '22002 / 인천 연수구 아트센터대로97번길 56 / 1601호', '루비', '010-2008-1024', sysdate, '2008/10/24', 'M');

-- 각자 하나씩 추가해서 보내주세요.. 이메일만 자기꺼 하나 해주고 네이버, 구글 제외면 더 좋음.. 주소는 가라로 하던 상관 없고 있음직한 걸로.. 전화번호도 생년월일도 가라도 괜찮음..
INSERT INTO member 
(member_idx, member_id, member_pass, member_type, member_email, member_addr, member_name, member_phone, member_reg, member_birth, member_gender ) 
VALUES
(SEQ_MEMBER_IDX.NEXTVAL, 'jung1234', 'jung1234!', 'nor', 'sjw4070@naver.com', '07724 / 서울 강서구 초록마을로22길 35 / 402호', '채정우', '010-9380-0974', sysdate, '1989/01/27', 'M');