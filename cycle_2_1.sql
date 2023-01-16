mysql> create view VW_emp as select * from employee;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from VW_emp;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | devcb  | Thrissur | M    |  31250 | s10      |    3 |   28 |
| e11 | nobel  | Wayanad  | M    |  25000 | s10      |    3 |   64 |
| e13 | mikasa | Kollam   | F    |  55000 | s12      |    4 |   11 |
| e15 | emmae  | Thrissur | M    |  31250 | s10      |    3 |   28 |
| e26 | Emma   | Pkd      | M    |  25000 | e13      |    2 |   59 |
| e41 | ramu   | Thrissur | M    |  37500 | s11      |    4 |   45 |
| e45 | raju   | Thrissur | M    | 156250 | s11      |    4 |   45 |
+-----+--------+----------+------+--------+----------+------+------+
7 rows in set (0.00 sec)

mysql> create view VW_SSN as select SuperSSN,Dno from VW_emp where Sex = "F";
Query OK, 0 rows affected (0.04 sec)

mysql> select * from VW_SSN;
+----------+------+
| SuperSSN | Dno  |
+----------+------+
| s12      |    4 |
+----------+------+
1 row in set (0.00 sec)

mysql> create view VW_SSN as select SuperSSN,Dno from VW_emp where Sex = "F";
Query OK, 0 rows affected (0.04 sec)

mysql> select * from VW_SSN;
+----------+------+
| SuperSSN | Dno  |
+----------+------+
| s12      |    4 |
+----------+------+
1 row in set (0.00 sec)


mysql> select * from VW_emp;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | devcb  | Chennai  | M    |  31250 | s10      |    3 |   28 |
| e11 | nobel  | Wayanad  | M    |  25000 | s10      |    3 |   64 |
| e13 | mikasa | Kollam   | F    |  55000 | s12      |    4 |   11 |
| e15 | emmae  | Thrissur | M    |  31250 | s10      |    3 |   28 |
| e26 | Emma   | Pkd      | M    |  25000 | e13      |    2 |   59 |
| e41 | ramu   | Thrissur | M    |  37500 | s11      |    4 |   45 |
| e45 | raju   | Thrissur | M    | 156250 | s11      |    4 |   45 |
+-----+--------+----------+------+--------+----------+------+------+
7 rows in set (0.00 sec)

mysql> drop view VW_EMP;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from VW_emp;
ERROR 1146 (42S02): Table 'company.vw_emp' doesn't exist
