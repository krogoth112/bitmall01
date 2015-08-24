drop table book;

create TABLE book (
	book_id NUMBER(5),
	title varchar2(50),
	author varchar2(20),
	pub_date date	,
	rate	number check (rate in (1,2,3,4,5) ),
	primary key(book_id)
);

insert
	into book(book_id, title, author, pub_date, rate)
	values ( 3, '토지', '박경리', sysdate, 6);
	
select * from book;