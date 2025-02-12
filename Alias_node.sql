CREATE PROCEDURE GetEmployeeDetails
AS
BEGIN
    SELECT 
        e.EmployeeID AS EmpID,
        e.FirstName AS First,
        e.LastName AS Last,
        d.DepartmentName AS Dept
    FROM 
        Employees e
    JOIN 
        Departments d ON e.DepartmentID = d.DepartmentID
END
