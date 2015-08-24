SELECT * FROM (

SELECT A.*, 

ROWNUM AS RNUM,

FLOOR((ROWNUM-1)/5+1) AS PAGE,

COUNT(*) OVER() AS TOTCNT FROM (select * from BOARD order by no desc) A

) WHERE PAGE = 1;

SELECT no, title, memberNo, memberName, viewCnt, regDate
FROM (
			SELECT A.*, 
			ROWNUM AS RNUM,
			FLOOR((ROWNUM-1)/5+1) AS PAGE,
			COUNT(*) OVER() AS TOTCNT FROM (select no, title, member_no as memberNo, member_name as memberName, view_cnt as viewCnt, reg_date as regdate from BOARD order by no desc) A	) 
WHERE PAGE = 1;
			
			
