--dm1
insert
	into austor
	valuse(seq_author, '박경리' , '....');
	
--savepoint a
savepoint a;


--savepoint b
savepoint b;

--dml3
update author
set author

-- test
rollback to a;
rollback to b;
select * from author;