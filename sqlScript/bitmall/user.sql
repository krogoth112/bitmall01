select * FROM MEMBER m;
insert into MEMBER (NO, EMAIL, PASSWORD, NAME, PHONE_NUMBER, ZIPCODE, ADDRESS, STATUS, TYPE) 
VALUES(Member_SEQ.nextval, 'email', 'password', 'name', 'phone_number', 'zipcode', 'address', 'status', 'type');

CREATE SEQUENCE Member_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 9999999
NOCACHE
NOCYCLE;

select * from MEMBER m;
update MEMBER SET type='admin' where no=3;
select * from CATEGORY_PRODUCT c;
insert into CATEGORY_PRODUCT (NO, NAME) 
VALUES(CATEGORY_PRODUCT_SEQ.nextval, 'mainboard');