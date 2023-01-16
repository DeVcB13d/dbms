-- PL/SQL trigger program to display the hour differences between the old values and new
-- values in the table Works_on as per the schema

CREATE OR REPLACE TRIGGER display_hour_changes
BEFORE DELETE OR INSERT OR update on customer

for each row
when (NEW.ID > 0)
DECLARE
    sal_diff number;
BEGIN
    sal_diff := :NEW.salary - :OLD.salary;
    dbms_output.put_line('Old Salary: ' || :OLD.Salary);
    dbms_output.put_line('New Salary: ' || :NEW.Salary);
    dbms_output.put_line('Salary difference: ' || sal_diff);
END;

-- DECLARATION 

DECLARE
BEGIN
	UPDATE customer
	SET salary = salary + 5000;
END;
/