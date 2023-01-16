SELECT * from Works_on

INSERT into Works_on 
VALUES (127,22,10);

Commit;

UPDATE Works_on 
SET HOURS= 22
WHERE SSN = 112;

SAVEPOINT A1;

INSERT INTO  Works_on
VALUES (1245,23,29);

Savepoint B1;

INSERT INTO Works_on 
VALUES (1227,14,5);

Savepoint C1;

SELECT * FROM Works_on; 

Rollback to B1; 

SELECT * FROM Works_on; 

/