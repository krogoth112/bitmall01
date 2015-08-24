CREATE TABLE reply
(
   no            NUMBER (8) NOT NULL,
   article_No    VARCHAR2 (200) NOT NULL,
   rereply_NO    NUMBER (8),
   content       VARCHAR2 (4000) NOT NULL,
   member_no     NUMBER (8) NOT NULL,
   member_name   VARCHAR2 (30) NOT NULL,
   reg_date      DATE NOT NULL
);

ALTER TABLE board
   ADD (reply_count NUMBER (10));

insert into board (NO, TITLE, CONTENT, MEMBER_NO, MEMBER_NAME, VIEW_CNT, REG_DATE, REPLY_COUNT)
VALUES 1;



SELECT NO,
       ARTICLE_NO,
       REREPLY_NO,
       CONTENT,
       MEMBER_NO,
       MEMBER_NAME,
       REG_DATE
  FROM reply
  where ARTICLE_NO=1;
  
  select * from BOARD;
  select * from reply;
  insert into reply VALUES(reply_seq.nextval, 1, 4, 'content', 1, '이준기', sysdate);
  

CREATE SEQUENCE reply_seq START WITH 1
                          INCREMENT BY 1
                          MAXVALUE 99999999
                          NOCACHE
                          NOCYCLE;

DROP TABLE reply;
DROP SEQUENCE reply_seq;

SELECT NO,
       ARTICLE_NO,
       REREPLY_NO,
       CONTENT,
       MEMBER_NO,
       MEMBER_NAME,
       REG_DATE
  FROM reply;

INSERT INTO reply (NO,
                   ARTICLE_NO,
                   CONTENT,
                   MEMBER_NO,
                   MEMBER_NAME,
                   REG_DATE)
     VALUES (reply_seq.NEXTVAL,
             11,
             '잘봤습니다.',
             1,
             '이준기',
             SYSDATE);
SELECT NO,
       ARTICLE_NO,
       CONTENT,
       MEMBER_NO,
       MEMBER_NAME,
       TO_CHAR (REG_DATE, 'YY-MM-DD HH24:MI') AS REG_DATE,
       group_no,
       order_no,
       DEPTH
  FROM reply
 WHERE ARTICLE_NO = 16
 order by group_no ASC, order_no ASC;


INSERT INTO BOARD (NO,
                   TITLE,
                   CONTENT,
                   MEMBER_NO,
                   MEMBER_NAME,
                   REG_DATE)
     VALUES (board_seq.NEXTVAL,
             '제목 없다',
             '내용만 있다니까',
             1,
             '이준기',
             SYSDATE);

COMMIT;

SELECT * FROM reply;