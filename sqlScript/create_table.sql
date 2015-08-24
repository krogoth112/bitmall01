create TABLE book (
	book_id NUMBER(5),
	title varchar2(50),
	author varchar2(20),
	pub_date date	
);

alter table book add (pubs varchar2(100));
alter table book modify (title varchar2(100));
alter table book drop (author);
alter table book add (author varchar2(100));
alter table book set unused(author);
alter table book drop unused columns;

insert into book(book_id, title, author, pub_date)
values (3, '토지', '박경리', sysdate);

insert 
	into book
values (2, '토지', '박경리', sysdate);

insert 
	into book
values (2, '슬램덩크', '다케이코', to_date('2006-04-05', 'yyyy-mm-dd'));

select * from book;

truncate table book;

comment on table book is 'this is comment';
select * from user_tab_comments;

rename book2 to article;

create table book2 
as (
	select * from book
); 

select * from book2;