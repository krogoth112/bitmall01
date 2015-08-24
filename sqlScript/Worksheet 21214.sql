commit;

select * from board;
delete from BOARD where member_no = (select no from MEMBER where no=76) and no = 84;
commit;

select * from member;


insert into BOARD b(view_cnt, NO, TITLE, CONTENT, member_no, member_name, REG_DATE) values (0, BOARD_ARTICLE_SEQ.nextval, 'TITLE 13:27', 'asdasdasdasd', 76, '이준기', sysdate);

SELECT * FROM (SELECT A.*, ROWNUM AS RNUM,FLOOR((ROWNUM- 1)/ 15 +1) AS PAGE,COUNT(*) OVER() AS TOTCNT 
				 FROM (select a.no, a.title, a.content, a.reg_date, a.view_cnt, a.member_no, a.member_name from BOARD a order by a.no desc) A ) WHERE PAGE = 2;
				 
select count(*) from BOARD b;
commit;

create TABLE reply (
	book_id NUMBER(5),
	title varchar2(50),
	pub_date date DEFAULT sysdate,
	rate	number check (rate in (1,2,3,4,5) ),
	author_id number(10),
	primary key(book_id),
	constraint c_book_fk foreign key ( author_id )
	references author(author_id)
	on delete cascade
);



