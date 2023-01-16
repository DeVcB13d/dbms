CREATE OR REPLACE TRIGGER display_hour_changes
BEFORE DELETE OR INSERT OR update on Works_on

for each row
when (NEW.HOURS > 0)
DECLARE
    hour_diff number;
BEGIN
    hour_diff := :NEW.HOURS - :OLD.HOURS;
    dbms_output.put_line('Old Salary: ' || :OLD.HOURS);
    dbms_output.put_line('New Salary: ' || :NEW.HOURS);
    dbms_output.put_line('Salary difference: ' || hour_diff);
END;

-- DECLARATION 

DECLARE
BEGIN
	UPDATE Works_on
	SET HOURS = HOURS - 2;
END;
/