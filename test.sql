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

select * from sitter_photo where sit_idx = 7;

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

select * from sitter_photo;

(select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx));
SELECT * FROM sitter s 
		FULL OUTER JOIN (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp 
		ON s.sit_idx = sp.sit_idx 
		WHERE s.sit_idx BETWEEN 1 AND 4
		ORDER BY s.sit_idx DESC;
        
        
select c.*, d.member_name member_name from 
		(select a.adoplist_idx, b.* from ADOPTION_list a, 
		review_board b where a.abani_idx=b.abani_idx and review_flag ='adp' order by review_idx desc) c, 
		member d where c.member_idx=d.member_idx;
        
        
select a.adoplist_idx, b.* from ADOPTION_list a, 
		review_board b where a.abani_idx=b.abani_idx and review_flag ='adp' order by review_idx desc;
        
select * from ADOPTION_list;  

-- 예약 날짜 조회 ( 1 ~ 4 )
select * from (
    select a.*, rownum rNum from (
        select 
            s.*, sitphoto_idx, sitphoto_photo
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
                    (sbook_start <= '2022-08-13' and sbook_end > '2022-08-13') 
                    or 
                    (sbook_start < '2022-08-14' and sbook_end > '2022-08-14')
            )
        ORDER BY s.sit_idx DESC
    ) a
)
WHERE rNum between 1 and 4;

-- 예약 날짜 조회 시 전체 개수
select 
    count(*)
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
            (sbook_start <= '2022-08-13' and sbook_end > '2022-08-13') 
            or 
            (sbook_start < '2022-08-14' and sbook_end > '2022-08-14')
    );







-- 시터 조회 ( 시터 사진은 1개만, 1 ~ 4 )
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

-- 시터 조회 시 전체 개수
select count(*) from (
        SELECT 
            s.*, sitphoto_idx, sitphoto_photo
        FROM 
            sitter s
        FULL OUTER JOIN 
            (select * from sitter_photo where sitphoto_idx in (select min(sitphoto_idx) from sitter_photo group by sit_idx)) sp
        ON 
            s.sit_idx = sp.sit_idx
        order by s.sit_idx desc
    );
    



-- 특정 시터 태그를 가지고 있는 시터 일련번호 조회 ( 3번과 4번 모두 있는 )
select 
    sit_idx 
from (
    select 
        sit_idx, count(sit_idx) 
    from (
        select 
            sit_idx 
        from 
            sitter_tag 
        where 
            typtag_idx 
        in (4, 3)
        ) 
    group by 
        sit_idx 
    having 
        count(sit_idx) = 2
    ) 
order by sit_idx asc;

-- 특정 시터 태그를 가지고 있는 시터 조회
select 
    * 
from (
    select 
        a.*, rownum rNum 
    from (
            SELECT 
                s.*, sitphoto_idx, sitphoto_photo
            FROM 
                sitter s
            FULL OUTER JOIN (
                select 
                    * 
                from 
                    sitter_photo 
                where 
                    sitphoto_idx 
                in (
                    select 
                        min(sitphoto_idx) 
                    from 
                        sitter_photo 
                    group by sit_idx
                    )
                ) sp
            ON 
                s.sit_idx = sp.sit_idx
            order by s.sit_idx desc
        ) a
    where 
        a.sit_idx 
    in (
        select 
            sit_idx 
        from (
            select 
                sit_idx, count(sit_idx) 
            from (
                select 
                    sit_idx 
                from 
                    sitter_tag 
                where 
                    typtag_idx 
                in (
                4, 3
                )
            ) 
            group by 
                sit_idx 
            having 
                count(sit_idx) = 2
        ) 
    )
    order by rNum asc
)
where rNum between 1 and 4;


-- 특정 시터 태그를 가지고 있는 시터 명수
select 
    count(*)
from (
        SELECT 
            s.*, sitphoto_idx, sitphoto_photo
        FROM 
            sitter s
        FULL OUTER JOIN (
            select 
                * 
            from 
                sitter_photo 
            where 
                sitphoto_idx 
            in (
                select 
                    min(sitphoto_idx) 
                from 
                    sitter_photo 
                group by sit_idx
                )
            ) sp
        ON 
            s.sit_idx = sp.sit_idx
        order by s.sit_idx desc
    ) a
where 
    a.sit_idx 
in (
    select 
        sit_idx 
    from (
        select 
            sit_idx, count(sit_idx) 
        from (
            select 
                sit_idx 
            from 
                sitter_tag 
            where 
                typtag_idx 
            in (
            4, 3
            )
        ) 
        group by 
            sit_idx 
        having 
            count(sit_idx) = 2
    )
);








--
SELECT * FROM (
    SELECT 
        a.*, rownum rNum
    FROM (
        SELECT
            s.*, sitphoto_idx, sitphoto_photo
        FROM
            sitter s 
        FULL OUTER JOIN (
            SELECT 
                * 
            FROM
                sitter_photo 
            WHERE
                sitphoto_idx 
            IN (
                SELECT
                    min(sitphoto_idx) 
                FROM
                    sitter_photo 
                GROUP BY sit_idx
            )
        ) sp 
        ON 
            s.sit_idx = sp.sit_idx         
        WHERE
            s.sit_idx NOT IN (
                SELECT
                    sit_idx
                FROM
                    sit_book 
                WHERE (
                    (sbook_start <= '2022-08-14' and sbook_end > '2022-08-14') 
                    or 
                    (sbook_start < '2022-08-15' and sbook_end > '2022-08-15')
                    ) and sbook_status not in ('can')
            ) 
            
            and s.sit_idx in (
                select 
                    sit_idx 
                from (
                    select 
                        sit_idx, count(sit_idx) 
                    from (
                        select 
                            sit_idx 
                        from 
                            sitter_tag 
                        where 
                            typtag_idx 
                        in (
                          1,2,3,4 
                        )
                    ) 
                    group by 
                        sit_idx 
                    having 
                        count(sit_idx) = 4
                )
            )
            
        ORDER BY s_fee asc
    ) a
)
;

select sit_idx from sitter_tag where typtag_idx in (4, 3, 1) group by sit_idx having count(sit_idx) = 3;



SELECT
    count(*)
FROM
    sitter s 
FULL OUTER JOIN (
    SELECT 
        * 
    FROM
        sitter_photo 
    WHERE
        sitphoto_idx 
    IN (
        SELECT
            min(sitphoto_idx) 
        FROM
            sitter_photo 
        GROUP BY sit_idx
    )
) sp 
ON 
    s.sit_idx = sp.sit_idx         
WHERE
    s.sit_idx NOT IN (
        SELECT
            sit_idx
        FROM
            sit_book 
        WHERE 
            (sbook_start <= '2022-08-14' and sbook_end > '2022-08-14') 
            or 
            (sbook_start < '2022-08-15' and sbook_end > '2022-08-15')
    ) 
    
    and s.sit_idx in (
        select 
            sit_idx 
        from (
            select 
                sit_idx, count(sit_idx) 
            from (
                select 
                    sit_idx 
                from 
                    sitter_tag 
                where 
                    typtag_idx 
                IN (
                    SELECT 
                        typtag_idx 
                    FROM 
                        type_tag 
                    WHERE 
                        typtag_type 
                    IN (
                        'b', 'pg'
                    )
                )
            ) 
            group by 
                sit_idx 
            having 
                count(sit_idx) = 2
        )
    )
            
;



select typtag_idx from type_tag where typtag_type in ('b', 'pg');
select sit_idx from (select sit_idx from sitter_tag where typtag_idx IN (
    SELECT typtag_idx FROM type_tag WHERE typtag_type IN ('b', 'pg')));

-- 여러 행의 데이터 한 행으로 뽑기
-- 태그
select * from sitter_tag;
SELECT sit_idx FROM (
    SELECT
        sit_idx, 
        LISTAGG(typtag_idx, ', ')
        WITHIN GROUP ( ORDER BY typtag_idx asc ) as tagList
    FROM sitter_tag
    GROUP BY sit_idx
    ) 
WHERE tagList like '%1, 2, 5%';


SELECT
    sit_idx 
FROM (
    SELECT
        sit_idx, count(sit_idx) 
    FROM (
        SELECT 
            sit_idx 
        FROM
            sitter_tag 
        WHERE
            typtag_idx 
        IN (
            1, 2, 3, 4, 5
        )
    ) 
    GROUP BY
        sit_idx 
    HAVING
        count(sit_idx) = 5
);











-- 사진
select sit_idx, sitphoto_photo from sitter_photo;
SELECT
    sit_idx,
    LISTAGG(sitphoto_photo, ', ')
    WITHIN GROUP (ORDER BY sitphoto_idx asc) as photos
FROM sitter_photo
GROUP BY sit_idx;


SELECT 
    s.*, photos, tagList
FROM 
    sitter s 
LEFT OUTER JOIN (
    SELECT
        sit_idx,
        LISTAGG(sitphoto_photo, ', ')
        WITHIN GROUP (ORDER BY sitphoto_idx asc) as photos
    FROM 
        sitter_photo
    GROUP BY sit_idx
) a ON s.sit_idx = a.sit_idx 
LEFT OUTER JOIN (
    SELECT
        sit_idx, 
        LISTAGG(typtag_idx, ', ')
        WITHIN GROUP ( ORDER BY typtag_idx asc ) as tagList
    FROM sitter_tag
    GROUP BY sit_idx
) b ON s.sit_idx = b.sit_idx
ORDER BY s.sit_idx DESC;




	 특정 시터 태그를 가지고 있는 시터 조회 
		SELECT 
			* 
		FROM (
		    SELECT
		        a.*, rownum rNum 
		    FROM (
		            SELECT 
		                s.*, sitphoto_idx, sitphoto_photo
		            FROM 
		                sitter s
		            FULL OUTER JOIN (
		                SELECT
		                    * 
		                FROM
		                    sitter_photo 
		                WHERE
		                    sitphoto_idx 
		                IN (
		                    SELECT
		                        min(sitphoto_idx) 
		                    FROM
		                        sitter_photo 
		                    GROUP BY sit_idx
		                    )
		                ) sp
		            ON 
		                s.sit_idx = sp.sit_idx
		            ORDER BY s.sit_idx DESC
		        ) a
		    WHERE
		        a.sit_idx 
		    IN (
		        SELECT
		            sit_idx 
		        FROM (
		            SELECT
		                sit_idx, count(sit_idx) 
		            FROM (
		                SELECT
		                    sit_idx 
		                FROM
		                    sitter_tag 
		                <if test="typtag != null and !typtag.equals('')">
		                WHERE
		                    typtag_idx 
		                IN (
		                	#{ param1 }
		                )
		                </if>
		            ) 
		            GROUP BY
		                sit_idx 
		            HAVING
		                count(sit_idx) = #{ param2 }
		        ) 
		    )
		    ORDER BY rNum ASC
		)
		WHERE rNum BETWEEN #{ param3 } AND #{ param4 };


		SELECT
	        count(*)
	    FROM (
	            SELECT 
	                s.*, sitphoto_idx, sitphoto_photo
	            FROM 
	                sitter s
	            FULL OUTER JOIN (
	                SELECT
	                    * 
	                FROM
	                    sitter_photo 
	                WHERE
	                    sitphoto_idx 
	                IN (
	                    SELECT
	                        min(sitphoto_idx) 
	                    FROM
	                        sitter_photo 
	                    GROUP BY sit_idx
	                    )
	                ) sp
	            ON 
	                s.sit_idx = sp.sit_idx
	            ORDER BY s.sit_idx DESC
	        ) a
	    WHERE
	        a.sit_idx 
	    IN (
	        SELECT
	            sit_idx 
	        FROM (
	            SELECT
	                sit_idx, count(sit_idx) 
	            FROM (
	                SELECT
	                    sit_idx 
	                FROM
	                    sitter_tag 
	                <if test="typtag != null and !typtag.equals('')">
	                WHERE
	                    typtag_idx 
	                IN (
	                	#{ param1 }
	                )
	                </if>
	            ) 
	            GROUP BY
	                sit_idx 
	            HAVING
	                count(sit_idx) = #{ param2 }
	        ) 
	    );


  		select 
		    p.*, NVL(a.cnt,0) review_count 
		from 
		    product p
		left OUTER JOIN 
		    (select 
		        product_idx, count(*) cnt 
		    from 
		        review_board 
		    where 
		        product_idx in(
		        select
                    product_idx
                from 
                    product) 
		    group by 
		        product_idx) a
		on 
		    p.product_idx=a.product_idx
        where product_category='ess'
        order by p.product_idx desc;

select sb.sit_idx, s.member_idx, member_name, sbook_start, sbook_end, sbook_status
                from sit_book sb 
                left outer join sitter s on s.sit_idx = sb.sit_idx 
                left outer join member m on m.member_idx = sb.member_idx;

select m.member_name s_name, a.member_name r_name, sbook_start, sbook_end, sbook_status from member m
right outer join (select sb.sit_idx, s.member_idx, member_name, sbook_start, sbook_end, sbook_status
                from sit_book sb 
                left outer join sitter s on s.sit_idx = sb.sit_idx 
                left outer join member m on m.member_idx = sb.member_idx
                order by sbook_idx desc
                ) a
on m.member_idx = a.member_idx;

select * from sit_book;



select 
  p.*, photos, NVL(b.cnt,0) review_count 
from 
  product p
left OUTER JOIN 
  (select 
      product_idx, LISTAGG(PDT_IMAGE_FILE, ', ')
      WITHIN GROUP (ORDER BY PDT_IMAGE_IDX desc) as photos
  from 
      product_image 
  GROUP BY product_idx
 ) a ON p.product_idx = a.product_idx 
 LEFT OUTER JOIN (
     SELECT
         product_idx, count(*) cnt
     FROM review_board
     GROUP BY product_idx
 ) b ON p.product_idx = b.product_idx;
 
 
 
select * from review_board where review_flag = 'adp' and member_idx = 15;

select rb.*, member_name member_namer, member_photo from review_board rb left outer join member m on rb.member_idx = m.member_idx where review_flag = 'sit' and m.member_idx = 1;
select rb.*, member_name member_namer, member_photo from review_board rb left outer join member m on rb.member_idx = m.member_idx where review_idx = 11;

select 
    a.abani_idx, abani_kind, abani_loc, abani_regdate, abani_neut, abani_stat,
    abani_photo, abani_age, abani_vaccin, abani_species, abani_char, 
    NVL(b.member_idx, 0) adoptmember_idx, 
    decode(a.abani_gender,'F','암컷','M','수컷','불명') abani_gender
from 
    abandonedAnimal a 
left OUTER JOIN 
    ADOPTION_list b 
on 
    a.abani_idx = b.abani_idx 
where a.abani_idx = 1;

select 
    c.cart_idx, c.product_quanity, p.product_idx, p.product_name,
    p.product_price,decode(p.product_category,'ess','필수 용품','mdc','의약품','gds','굿즈') product_cate,
    p.product_stock, p.photos from cart c,(select
    p.*,Tb.photos 
from 
    product p, (select
                    product_idx, LISTAGG(pdt_image_file,'|') WITHIN GROUP(ORDER BY pdt_image_file) photos 
                from 
                    product_image 
                group by 
                    product_idx) Tb 
where 
    p.product_idx=Tb.product_idx) p where c.product_idx=p.product_idx and c.member_idx=31;

select count(*) from cart where member_idx = 31;

SELECT sitapl_idx, sitapl_name, sitapl_gender, to_char(sitapl_birth, 'yyyy-mm-dd') as sitapl_birth,
			sitapl_tel, sitapl_addr, sitapl_smkStt, sitapl_havepet, sitapl_exp, member_idx
		FROM sitter_application ORDER BY sitapl_idx DESC;
        
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
alter sequence seq_sitter_idx increment by 1;
select seq_sitter_idx.nextval from dual;

select 
    s.member_idx,
    s.sit_idx, sit_title, sit_intro, sit_addr, s_fee, m_fee, b_fee, sit_client, sit_starpoint, sit_starcount,
    member_name, member_email,
    pet_idx, pet_age, pet_name, pet_gender
from 
    sitter s
left outer join 
    pet p on s.member_idx = p.member_idx 
inner join 
    member m on s.member_idx = m.member_idx
where sit_idx = 11;


SELECT 
    sbook_idx, sb.sit_idx, sbook_date, to_char(sbook_start, 'yyyy-mm-dd') sbook_start, to_char(sbook_end, 'yyyy-mm-dd') sbook_end,
    sbook_status, p_celldata, totalprice, sb.member_idx member_idx, member_name, sit_addr
FROM 
    sit_book sb
INNER JOIN
    sitter s
ON
    sb.sit_idx = s.sit_idx
INNER JOIN
    member m
ON
    s.member_idx = m.member_idx
WHERE 
    sb.member_idx = 30
ORDER BY sbook_start asc;
    
