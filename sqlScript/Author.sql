--create
drop table author purge;
drop table author CASCADE CONSTRAINT;
create table author (
	author_id number(10),
	name varchar2(100) not null,
	bio varchar2(500),
	primary key(id)
);

-- insert

insert
	into author
	values(seq_author.nextval, 'test', 'test');
	
commit;

select * from author;

select author_id, name, bio from author;

delete from author where;

update author
	set	name = 'test2',
			bio = 'test2'
			where id = 44;