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