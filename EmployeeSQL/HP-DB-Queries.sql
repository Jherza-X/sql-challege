--Data Analysis
--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT
    E.emp_no AS "Employee Number",
    E.last_name AS "Last Name",
    E.first_name AS "First Name",
    E.sex AS "Sex",
    S.salary AS "Salary"
FROM Employees AS E
INNER JOIN Salaries AS S ON E.emp_no = S.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    hire_date AS "Hire Date"
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3. List the manager of each department along with their department number, 
--   department name, employee number, last name, and first name.
SELECT
    DM.dept_no AS "Department Number",
    D.dept_name AS "Department Name",
    DM.emp_no AS "Employee Number",
    E.last_name AS "Last Name",
    E.first_name AS "First Name"
FROM Dept_manager AS DM
INNER JOIN Departments AS D ON DM.dept_no = D.dept_no
INNER JOIN Employees AS E ON DM.emp_no = E.emp_no;

--4. List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.

SELECT 
	DE.dept_no AS "Department Number",
    DE.emp_no AS "Employee Number",
	E.last_name AS "Last Name",
	E.first_name AS "First Name",
	D.dept_name AS "Department Name"
FROM Dept_emp AS DE
INNER JOIN Departments AS D ON DE.dept_no = D.dept_no
INNER JOIN Employees AS E ON DE.emp_no = E.emp_no;

--5. List first name, last name, and sex of each employee whose first name
--is Hercules and whose last name begins with the letter B.
SELECT 
     E.first_name AS "Last Name",
	 E.last_name AS "First Name",
	 E.sex AS "Sex"
FROM Employees AS E 
WHERE E.first_name = 'Hercules' AND E.last_name LIKE 'B%';

--6. List each employee in the Sales department, 
--including their employee number, last name, and first name.

SELECT
     E.emp_no As "Employee Number",
	 E.last_name AS "Last Name",
	 E.first_name AS "First NAme"
From employees AS E
INNER JOIN Dept_emp AS DE ON DE.emp_no = E.emp_no
INNER JOIN Departments AS D ON D.dept_no = DE.dept_no
WHERE D.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT
     E.emp_no As "Employee Number",
	 E.last_name AS "Last Name",
	 E.first_name AS "First Name",
	 D.dept_name AS "Department Name"
From employees AS E
INNER JOIN Dept_emp AS DE ON DE.emp_no = E.emp_no
INNER JOIN Departments AS D ON D.dept_no = DE.dept_no
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development';
--WHERE D.dept_name IN ('Sales', 'Development'); another option

--8. List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name).

SELECT
    last_name AS "Last Name",
    COUNT(*) AS "Frequency"
FROM Employees
GROUP BY last_name
ORDER BY "Frequency" DESC;


-- View our table
SELECT * FROM departments;

-- View our table
SELECT * FROM dept_manager;

-- View our table
SELECT * FROM dept_manager;

-- View our table
SELECT * FROM employees;

-- View our table
SELECT * FROM salaries;

-- View our table
SELECT * FROM titles;

