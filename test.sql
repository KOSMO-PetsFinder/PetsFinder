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

-- ���� ��¥ ��ȸ ( 1 ~ 4 )
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

-- ���� ��¥ ��ȸ �� ��ü ����
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







-- ���� ��ȸ ( ���� ������ 1����, 1 ~ 4 )
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

-- ���� ��ȸ �� ��ü ����
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
    



-- Ư�� ���� �±׸� ������ �ִ� ���� �Ϸù�ȣ ��ȸ ( 3���� 4�� ��� �ִ� )
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

-- Ư�� ���� �±׸� ������ �ִ� ���� ��ȸ
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


-- Ư�� ���� �±׸� ������ �ִ� ���� ���
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
            
        ORDER BY s.sit_idx DESC
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

-- ���� ���� ������ �� ������ �̱�
-- �±�
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











-- ����
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




	 Ư�� ���� �±׸� ������ �ִ� ���� ��ȸ 
	<select id="tagSearch" resultType="petsfinder.petsitter.PetSitterDTO">
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
	</select>

	<select id="tagSearchCount" resultType="int">
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
	    )
	</select>
