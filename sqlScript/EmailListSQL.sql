DROP TABLE email_list;
DROP SEQUENCE email_list_no_seq;

CREATE TABLE email_list
(
   no           NUMBER (8),
   first_name   VARCHAR2 (50),
   last_name    VARCHAR2 (50),
   email        VARCHAR2 (80)
);

ALTER TABLE email_list
ADD ( CONSTRAINT email_list_no_pk PRIMARY KEY ( no ) );

CREATE SEQUENCE email_list_no_seq START WITH 1
                                  INCREMENT BY 1
                                  MAXVALUE 99999999
                                  NOCACHE
                                  NOCYCLE;
								  
								  
insert 
into email_list
values ( email_list_no_seq.nextval, '이', '대혁','newmin');

select * from email_list;