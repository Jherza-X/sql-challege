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

