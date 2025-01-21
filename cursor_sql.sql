CREATE OR REPLACE PROCEDURE copy_high_salary_employees (
    p_min_salary IN employees.salary%TYPE
) IS
    CURSOR high_salary_cursor IS
        SELECT employee_id, first_name, last_name, salary
        FROM employees
        WHERE salary > p_min_salary;
 
BEGIN
    FOR employe e_rec IN high_salary_cursor LOOP
        INSERT INTO high_salary_employees (employee_id, first_name, last_name, salary)
        VALUES (employee_rec.employee_id, employee_rec.first_name, employee_rec.last_name, employee_rec.salary);
    END LOOP;
 
    COMMIT;
END;