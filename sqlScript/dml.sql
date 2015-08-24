--DML


-- insert
insert 
	into author(author_id, author_name, author_desc)
	values( seq_author.nextval, '박경리', '어쩌구 저쩌구' );
	
insert 
	into author(author_id, author_name)
	values( seq_author.nextval, '박경리2');

select * from author;

-- update
update AUTHOR SET AUTHOR_NAME = '박경리4', AUTHOR_DESC = ''
	where author_id = 5;

commit; 	
rollback;

-- delete
delete from author
 where author_id = 5;