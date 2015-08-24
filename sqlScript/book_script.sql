drop table author CASCADE CONSTRAINT;
drop TABLE book cascade CONSTRAINT;
drop sequence seq_author;
drop sequence seq_book;
drop table book;
drop table author;

create table author (
	author_id number(10),
	name varchar2(100) not null,
	bio varchar2(500),
	primary key(author_id)
);

create TABLE book (
	book_id NUMBER(5),
	title varchar2(50) not NULL,
	pub_date date	 default sysdate,
	rate	number check (rate in (1,2,3,4,5) ),
	author_id number(10),
	primary key(book_id),
	constraint c_book_fk foreign key ( author_id )
	references author(author_id)
	on delete cascade
);

-- insert into

--sequence
create sequence seq_author start with 1 increment by 1;
create sequence seq_book start with 1 increment by 1;
select seq_author.nextval from dual;
select seq_author.currval from dual;





