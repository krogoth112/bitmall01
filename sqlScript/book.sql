insert INTO BOOK (book_ID, TITLE, AUTHOR_ID)
	values (seq_book.nextval, '황무지', 13); 
	
select * from book;

select book_id, title, author_id from book;

update book set title='그럼에도 불구하고 너', author_id=9 where book_id=2;

delete from book;

commit;