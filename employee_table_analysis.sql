-- Select TOP 10 records
SELECT *
FROM myecommercedb.employee
LIMIT 10;

-- Display Job Roles and Date Of Birth of Top 5 employees
SELECT Role, DateOfBirth
FROM Employee
LIMIT 5;

-- SELECT the unique Deparment ID’s from the Employee Table
SELECT DISTINCT DepartmentID
FROM Employee;

-- Display Unique location present in the Employee table
SELECT DISTINCT Location
FROM Employee;

-- Retrieve data for all the employee whose department ID is D4
SELECT *
FROM Employee
WHERE DepartmentID = 'D4';

-- Group all the identical DepartmentID’s together
SELECT DepartmentID
FROM Employee
GROUP BY DepartmentID;

-- Count all the records present in the Employee table
SELECT COUNT(*) AS TotalRecords
FROM Employee;

-- Average salary for each Group of Job roles
SELECT Role, ROUND(AVG(Salary), 0) AS RoleAverageSalary
FROM Employee
GROUP BY Role
ORDER BY RoleAverageSalary DESC;

-- Job Roles (Roles) whose average Salary is more than 80,000
SELECT Role
FROM Employee
GROUP BY Role
HAVING AVG(Salary) > '80000';

-- Display the records from the Employee table where the job title is ‘Marketing Assistant.’
SELECT *
FROM Employee
WHERE Role = 'Marketing Assistant';

-- records from the Employee table where Salary is other than ‘125000’
SELECT *
FROM Employee
WHERE SALARY != '125000';

-- records present in the Employee table where the Salary is equal to or less than 125000
SELECT *
FROM Employee
WHERE Salary <= '125000';

-- records from the Employee Table who have a date of birth greater than ‘1973-11-12’ and Salary greater than ‘100000’
SELECT *
FROM Employee 
WHERE DateOfBirth > '1973-11-12' AND Salary > '100000';

-- Display Employee Name, Job Role, and Location from Employee table who have Salary either ‘100000’ or ‘125000’
SELECT EmployeeName, Role, Location
FROM Employee
WHERE Salary = '100000' OR Salary = '125000';

-- Display Employee Name, Job Role, and Location from Employee table who have Date Of Birth starting from ‘1982-04-03’ and less than ‘1988-02-11’
SELECT EmployeeName, Role, Location
FROM Employee
WHERE DateOfBirth BETWEEN '1982-04-03' AND '1988-02-11';

-- All records where role is Product Designer, Research and Development Engineer, Sales Executive
SELECT *
FROM Employee
WHERE Role IN ('Product Designer', 'Research and Development Engineer', 'Sales Executive');

-- All the records from the Employee table whose Job Role starts from the letter ‘M.’
SELECT *
FROM Employee 
WHERE Role LIKE 'M%';

-- All the records from the Employee table whose Job Role has the second character as ‘a’
SELECT *
FROM Employee
WHERE Role LIKE '_a%';

-- First 4 letters of each employee name present in the Employee table
SELECT SUBSTRING(EmployeeName,1,4)
FROM Employee;

-- Only using subqueries, Display Employee ID, Birthdate and Job Role of Employees, who have birthdate greater than the date ‘1970-12-31’
SELECT EmployeeID, DateOfBirth, Role
FROM Employee
WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE DateOfBirth > '1970-12-31');









