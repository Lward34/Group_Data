/* SQL Normalization SQL File */
SET PAGESIZE 50
SET LINESIZE 180
SET SERVEROUTPUT ON
SET ECHO ON

/* Drop Tables in case they already exist */
DROP TABLE GirlTable CASCADE CONSTRAINTS;
DROP TABLE GAMES CASCADE CONSTRAINTS;
DROP TABLE Girl_GAMES CASCADE CONSTRAINTS;
DROP TABLE AGE_GROUPS CASCADE CONSTRAINTS;

/* Create tables */

CREATE TABLE GirlTable(GIRL VARCHAR2(20) PRIMARY KEY,
                            GROUP1  VARCHAR2(15)NOT NULL);
                     
CREATE TABLE GAMES( GAME VARCHAR2(12) PRIMARY KEY,
                     CATEGORY1 VARCHAR2(30) NOT NULL,
                      PRICE VARCHAR2(20)   NOT NULL);

CREATE TABLE  Girl_GAMES (GIRL VARCHAR2(20)NOT NULL,
                           GAME VARCHAR2(15) NOT NULL);
                           
CREATE TABLE AGE_GROUPS( GROUP_  VARCHAR2(15)NOT NULL,
                         AGE NUMBER(1) NOT NULL);


/* Verify the tables were created */
SELECT table_name
  FROM user_tables;
  
/* Describe the tables */
DESC GirlTable;
DESC GAMES;
DESC Girl_GAMES;
DESC AGE_GROUPS;

/* Insert data into GIRL Tables */
INSERT INTO GirlTable(GIRL,GROUP1) 
       VALUES ('Charlotte','5 year olds ');

INSERT INTO GirlTable(GIRL,GROUP1) 
       VALUES ('Susan','6 year olds');

INSERT INTO GIRLS(GIRL,GROUP1) 
       VALUES ('Jane','5 year olds ');

INSERT INTO GirlTable(GIRL,GROUP1) 
       VALUES ('Carrie','6 year olds ');

INSERT INTO GirlTable(GIRL,GROUP1) 
       VALUES ('Jacqueline','5 year olds ');

COMMIT;

/* Insert data into GAMES Tables */

INSERT INTO GAMES(GAME,CATEGORY1,PRICE ) 
       VALUES ('Mirror', 'Makeup', '4.88');

INSERT INTO GAMES(GAME,CATEGORY1,PRICE ) 
       VALUES ('Lipstick', 'Makeup', '5.95');

INSERT INTO GAMES(GAME,CATEGORY1,PRICE ) 
       VALUES ('Chess', 'Games', '7.55');

INSERT INTO GAMES(GAME,CATEGORY1,PRICE ) 
       VALUES ('Checkers', 'Games', '5.95');

INSERT INTO GAMES(GAME,CATEGORY1,PRICE ) 
       VALUES ('Visual Basic', 'Prog.Languages', '199.99');

COMMIT;

/* Insert data into GIRL_GAMES Tables */

INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Charlotte','Mirror');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Susan','Lipstick');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Jane','Chess');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Susan','Checkers');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Susan','Mirror');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Carrier','Lipstick');
INSERT INTO Girl_GAMES (GIRL,GAME) 
       VALUES ('Jacqueline','Visual Basic');

COMMIT;
/* Insert data into AGE_GROUPS Tables */
INSERT INTO AGE_GROUPS(GROUP_, AGE ) 
       VALUES ('5 year olds ', '5');

INSERT INTO AGE_GROUPS(GROUP_, AGE ) 
       VALUES ('6 year olds ','6');

COMMIT;

/*SELECT TABLES SQL STATEMENTS*/
SELECT * FROM GirlTable;
SELECT * FROM GAMES;
SELECT * FROM Girl_GAMES;
SELECT * FROM AGE_GROUPS;