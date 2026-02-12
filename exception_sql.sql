CREATE OR REPLACE PROCEDURE get_employee_name(p_employee_id IN employees.employee_id%TYPE) IS
  v_first_name employees.first_name%TYPE;
  v_last_name employees.last_name%TYPE;
BEGIN
  SELECT first_name, last_name
  INTO v_first_name, v_last_name
  FROM employees
  WHERE employee_id = p_employee_id;
 
  DBMS_OUTPUT.PUT_LINE('Employee Name: ' v_first_name ' ' v_last_name);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No employee found with the given ID.');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Multiple employees found with the given ID.');
END;