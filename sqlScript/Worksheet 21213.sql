insert into BOARD (NO, TITLE, USER_NO, CONTENT, VIEW_CNT, LIKE_CNT, DISLICK_CNT, REPLY_CNT, REG_DATE)

insert (NO, TITLE, USER_NO, CONTENT, VIEW_CNT, LIKE_CNT, DISLICK_CNT, REPLY_CNT, REG_DATE) from BOARD;

insert (NO, TITLE, USER_NO, CONTENT, REG_DATE) into BOARD 
(BOARD_SEQ, 'TITLEasdasdasd', '12', '', sysdate); 

insert into BOARD b(NO, TITLE, CONTENT, member_no, member_name, REG_DATE)
values (BOARD_ARTICLE_SEQ.nextval, 'TITLE', 'asdasdasdasd', 73, '이준기', sysdate);
insert into MEMBER values (member_no_seq.nextval, 'asdasd', 'newmind3@gmail.com', 'asdsadasd', 'mele');

delete 
from BOARD   
where member_no = (select no
				from MEMBER
				where no=74) and no = 41;
				
delete from BOARD a where a.USER_NO = (select no from MEMBER where no=58) and a.no = 33;
				
select * from BOARD a, member b where a.member_no = b.no;
commit;
select a.no, a.title, a.content, a.reg_date, a.view_cnt, b.name  from BOARD a, member b where a.member_no = b.no;
select no from MEMBER;
select * from BOARD;

create table BOARD 
(
	no number(15) not null,
	title varchar2(100) not null,
	content varchar2(2000),
	member_no NUMBER(38) not null,
	member_name varchar2(30) not null,
	view_cnt number(38),
	reg_date date,
	PRIMARY KEY (NO),
	constraint MEMBER_fk foreign key ( member_no )
	references member(NO)
);

create table reply
(
	NO NUMBER(8),
	ARTICLE_NO NUMBER(8),
	member_no NUMBER(38) not null,
	member_name VARCHAR2(30) not null,
	CONTENT VARCHAR2(200),
	reg_date date not null,
	PRIMARY KEY (NO),
	constraint BOARD_NO_FK foreign key ( ARTICLE_NO )
	references BOARD(NO)
);

insert into reply VALUES (reply_seq.nextval, '213', '76', '이준기', '환영합니다', sysdate);
select * from reply where  ARTICLE_NO = 213;
select * from board;
SELECT * FROM REPLY;


drop table BOARD;
drop table REPLY;
drop TABLE member;
CREATE TABLE MEMBER
(
   NO         NUMBER (8),
   NAME       VARCHAR2 (30),
   EMAIL      VARCHAR2 (80) UNIQUE ,
   PASSWORD   VARCHAR2 (30),
   GENDER     VARCHAR2 (10),
   primary key (no)
);

delete from BOARD where user_no = 1 and no = 5;
select * from BOARD b;
select * from MEMBER m;
commit;


select a.no, a.title, a.content, a.reg_date, a.view_cnt, b.no, b.name  from BOARD a, member b where a.member_no = b.no;

update BOARD SET view_cnt=view_cnt+1 where no=81;
insert into BOARD b(no, TITLE, CONTENT, member_no, member_name, REG_DATE, VIEW_CNT) values (BOARD_ARTICLE_SEQ.nextval, '121212', 'tttttt', 76, '둔키2', sysdate, '0');

update BOARD set title='44444', content='55555' where no=87;
commit;


select a.no, a.title, a.content, a.reg_date, a.view_cnt, a.member_no, a.member_name  from board a where title LIKE '%기%' or content LIKE '%9%';
select * from board;











