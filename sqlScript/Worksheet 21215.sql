commit;


SELECT * FROM (
SELECT A.*,
	ROWNUM AS RNUM,
	FLOOR((ROWNUM- - 1)/ 15 +1) AS PAGE, 
	COUNT(*) OVER() AS TOTCNT FROM (
	select a.no, a.title, a.content, a.reg_date, a.view_cnt, a.member_no, a.member_name from BOARD a order by a.no desc
  )A
) WHERE PAGE = 1;
select count(*) from board;


