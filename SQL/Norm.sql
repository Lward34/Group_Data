/* SQL Normalization SQL File */
SPOOL 
SET ECHO ON
SET LINESIZE 295

DROP TABLE GirlTable CASCADE CONSTRAINTS;

CREATE TABLE GirlTable(
  GIRL VARCHAR2(30),
  GROUP1 VARCHAR2(30)NOT NULL,
  AGE INT NOT NULL,
  GAME VARCHAR2(30)NOT NULL,
  CATEGORY1 VARCHAR2(30)NOT NULL,
  PRICE INTEGER NOT NULL,
  PRIMARY KEY(GIRL));


/* Verify the tables were created */
SELECT table_name
  FROM user_tables;
  
/* Describe the tables */
DESC GirlTable

/* Insert data into Tables */
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Charlotte', '5 years old', '5','Mirror', 'Makeup', '4.88');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Susan', '6 years old', '6','Lipstick', 'Makeup', '5.95');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Jane', '5 years old', '5','Chess', 'Games', '7.55');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Susan', '6 years old', '6','Checkers', 'Games', '5.95');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Susan', '6 years old', '6','Mirror', 'Makeup', '4.88');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Carrie', '6 years old', '6','Lipstick', 'Makeup', '5.95');
INSERT INTO GirlTable(GIRL, GROUP1, AGE, GAME, CATEGORY1, PRICE ) 
       VALUES ('Jacqueline', '5 years old', '5','Visual Basic', 'Prog.Languages', '199.99');
COMMIT;      
SELECT * FROM GirlTable;
