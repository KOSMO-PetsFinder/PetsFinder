select * from sitter;

select 
    s.member_idx,
    s.sit_idx, sit_title, sit_intro, sit_addr, s_fee, m_fee, b_fee, sit_client, sit_starpoint, sit_starcount,
    member_name, 
    pet_idx, pet_age, pet_name, pet_gender
from 
    sitter s
inner join 
    pet p on s.member_idx = p.member_idx 
inner join 
    member m on s.member_idx = m.member_idx
where s.member_idx=25;

select typtag_expln from type_tag where typtag_idx in (select typtag_idx from sitter_tag where sit_idx = 2);
select * from sitter where sit_idx = 2;

select * from sitter_tag where sit_idx = 2;

select * from available_services where sit_idx = 2;

select * from sitter_photo where sit_idx = 2;

SELECT count(*) as rCount FROM (
    select
        a.*, NVL(b.countlike, 0) as countlike
    from
        ( select 
            r.*, m.member_name member_namer, member_photo
        from 
            review_board r, member m 
        where 
            r.member_idx = m.member_idx and sit_idx = 3
        order by review_idx desc ) a
    left outer join
        ( select
            review_idx, count(review_idx) countlike
        from 
            review_like
        where
            reviewLike_stt = 1 
        group by review_idx ) b
    on a.review_idx = b.review_idx
) tb;

SELECT * FROM sitter s
		LEFT OUTER JOIN sitter_photo sp
		ON s.sit_idx = sp.sit_idx 
		where s.sit_idx between 1 and 4
		order by s.sit_idx asc