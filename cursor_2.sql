-- Write a PL/SQL cursor program to retrieve Dno and DName from
-- Department table as per the schema
DECLARE cursor dep_cursor is 
select DNO,DNAME from Department where DNO = 100;

BEGIN
for i in dep_cursor LOOP
    dbms_output.put_line(i.DNO,i.DNAME);
end loop;
end;
/

DNO     DNAME
--------------------------------
100     DCS
110     SDS
121     SLS
122     WCS