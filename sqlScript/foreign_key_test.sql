drop table author; -- cascade constraint
drop table book;

create TABLE book (
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

create table author (
	author_id number(10),
	author_name varchar2(100) not null,
	author_desc varchar2(500),
	primary key(author_id)
);

-- test
--alter table book add constraint c_book_fk foreign key ( author_id )
--	references author(author_id);
	
alter table book drop constraint c_book_fk;

alter table author drop primary key cascade;

alter table book drop (author_id);

drop table author;

-- insert test
insert 
	into author
	values (1, '박경리', '');

select * from author;

insert 
	into book
	values (1, '토지', sysdate, 5, 1);
	
select * from book;

delete 
  from author 
  where author_id = 1;

--sequence
create sequence seq_author start with 1 increment by 1;
create sequence seq_book start with 1 increment by 1;
select seq_author.nextval from dual;
select seq_author.currval from dual;

select * from author;

insert
	into author
values (seq_author.nextval , '박경리2', '');

--insert
--	into author
--values (3, '박경리2', '');