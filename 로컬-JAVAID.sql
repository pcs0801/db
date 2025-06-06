DROP TABLE BOOKS;

CREATE TABLE BOOKS ( 
BOOK_ID NUMBER(4), 
TITLE VARCHAR2(50), 
PUBLISHER VARCHAR2(30), 
YEAR VARCHAR2(10), 
PRICE NUMBER(6), 
PRIMARY KEY(BOOK_ID) 
);

SELECT * FROM BOOKS;
 
CREATE SEQUENCE book_id_seq 
START WITH 1 
INCREMENT BY 1 ; 
 
INSERT INTO books (book_id, title, publisher, year, price) VALUES (book_id_seq.nextval, 'Operating 
System Concepts', 'Wiley', '2003',30700); 
INSERT INTO books (book_id, title, publisher, year, price) VALUES (book_id_seq.nextval, 'Head First PHP 
and MYSQL', 'OReilly', '2009', 58000); 
INSERT INTO books (book_id, title, publisher, year, price) VALUES (book_id_seq.nextval, 'C Programming 
Language', 'Prentice-Hall', '1989', 35000); 
INSERT INTO books (book_id, title, publisher, year, price) VALUES (book_id_seq.nextval, 'Head First SQL', 
'OReilly', '2007', 43000); 
commit;

-- 과제
CREATE TABLE MOVIES ( 
MOVIE_NUM NUMBER(4), 
TITLE VARCHAR2(50), 
RUNNING_TIME NUMBER(3), 
RATING NUMBER(3,2), 
RELEASE_DATE VARCHAR2(50), 
CONSTRAINT MOVIES_PK PRIMARY KEY(MOVIE_NUM)
);

CREATE SEQUENCE MOVIE_NUM_SEQ
START WITH 1 
INCREMENT BY 1
MINVALUE 1
MAXVALUE 100
NOCYCLE
CACHE 2;

INSERT INTO MOVIES (MOVIE_NUM, TITLE, RUNNING_TIME, RATING, RELEASE_DATE) 
VALUES (MOVIE_NUM_SEQ.NEXTVAL, '혹성탈출:새로운 시대', 145, 7.62,'2024-05-08');
INSERT INTO MOVIES (MOVIE_NUM, TITLE, RUNNING_TIME, RATING, RELEASE_DATE) 
VALUES (MOVIE_NUM_SEQ.NEXTVAL, '인터스텔라', 169, 9.12,'2014-11-06');
INSERT INTO MOVIES (MOVIE_NUM, TITLE, RUNNING_TIME, RATING, RELEASE_DATE) 
VALUES (MOVIE_NUM_SEQ.NEXTVAL, '마션', 144, 8.72,'2015-10-08');
INSERT INTO MOVIES (MOVIE_NUM, TITLE, RUNNING_TIME, RATING, RELEASE_DATE) 
VALUES (MOVIE_NUM_SEQ.NEXTVAL, '미키17', 137, 8.21,'2025-02-28');
INSERT INTO MOVIES (MOVIE_NUM, TITLE, RUNNING_TIME, RATING, RELEASE_DATE) 
VALUES (MOVIE_NUM_SEQ.NEXTVAL, '설국열차', 125, 8.26,'2013-08-01');

SELECT * FROM MOVIES;

DESC MOVIES;

commit;