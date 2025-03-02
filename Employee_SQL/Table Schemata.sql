--Table Creation Schema

--Drop tables if they exist by using the code below
--DROP TABLE departments, titles, employees, dept_emp, dept_manager, salaries;

-- Create Departments table
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
	);

--Create Titles table
CREATE TABLE titles(
   title_id VARCHAR(10) PRIMARY KEY,
   title VARCHAR(50) NOT NULL
   );

--Create Employees table
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
); 
 
--Create 'Dept_emp' table
CREATE TABLE dept_emp (
   emp_no INTEGER NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   dept_no VARCHAR(10) NOT NULL,
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
   );

--Create Dept_manager table
CREATE TABLE dept_manager (
   dept_no VARCHAR(10) NOT NULL,
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
   emp_no INTEGER NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
   );   

-- Create Salaries table
CREATE TABLE salaries (
   emp_no INTEGER NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
   salary INTEGER NOT NULL
   ); 

--Load the excel files manually  and then view each of the tables

SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
