# sql-challege
Solution-Challenge 9 - Data Analysis Bootcamp UofT
Jesus E. Hernandez-Zavaleta

"sql-challenge\EmployeeSQL\data" Contains all the csv files that feed the tables on the data base Pewlett_Hackard_db.
departments.csv
dept_emp.csv
dept_manager.csv
employee.csv
salaries.csv
titles.csv

"sql-challenge\EmployeeSQL" Contains the main documents of the project
HP-DB-Diagram.png 
@ - contains the relationship diagram
HP-DB-Diagram-Doc.pdf 
@ - contains the tables' schema information

HP-DB-Schema.sql
@ - This file contains the queries to create the tables to use for the project
-- Create the Titles table
CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

-- Create the Employees table
CREATE TABLE Employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE,
    UNIQUE (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

-- Create the Departments table
CREATE TABLE Departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR,
    UNIQUE (dept_no)
);

-- Create the Dept_emp table
CREATE TABLE Dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(50),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Create the Dept_manager table
CREATE TABLE Dept_manager (
    dept_no VARCHAR(50),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create the Salaries table
CREATE TABLE Salaries (
    emp_no INTEGER,
    salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

HP-DB-Queries.sql
@ - contains the data analysis queries 
1. List the employee number, last name, first na1.me, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).




