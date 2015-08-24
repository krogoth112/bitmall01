create table board_article 
(
	no number(15) not null,
	title varchar2(100) not null,
	user_no NUMBER(38) not null,
	content varchar2(2000),
	view_cnt number(38),
	like_cnt number(38),
	dislick_cnt number(38),
	reply_cnt number(38),
	reg_date date,
	PRIMARY KEY (NO)
);

CREATE TABLE MEMBER
(
   NO         NUMBER (8),
   NAME       VARCHAR2 (30),
   EMAIL      VARCHAR2 (80),
   PASSWORD   VARCHAR2 (30),
   GENDER     VARCHAR2 (10),
   primary key (no)
);

drop table MEMBER


create table board_user
(
	user_no NUMBER(38) not null,
	user_id VARCHAR2(40) not null UNIQUE,
	name VARCHAR2(30) not null,
	hp VARCHAR2(30) not null,
	gender VARCHAR2(15),
	email VARCHAR2(50) not null UNIQUE,
	join_date DATE not null,
	PRIMARY KEY (user_no)
);

drop TABLE board_user;
drop table board_article;
drop SEQUENCE board_article_SEQ;

drop SEQUENCE board_user_SEQ;	
	
commit;

CREATE SEQUENCE reply_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;


CREATE SEQUENCE board_article_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;

CREATE SEQUENCE board_user_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;

CREATE TABLE MEMBER
(
   NO         NUMBER (8),
   NAME       VARCHAR2 (30),
   EMAIL      VARCHAR2 (80),
   PASSWORD   VARCHAR2 (30),
   GENDER     VARCHAR2 (10)
)
NOCACHE
LOGGING;


insert into board_article values (board_article_SEQ.nextval, '가입인사', '이준기','오늘 가입했습니다 잘 부탁드려요',0,0,0,0, sysdate); 


 
select user_no, title, content, user_id, view_cnt, like_cnt, dislick_cnt, reg_date FROM BOARD_ARTICLE b;

insert into bo
delete from board_article where no='1';





	