CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL);
	
SELECT * FROM titles;
	
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id));
	
SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INT,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM salaries;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL);
	
SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

SELECT * FROM dept_emp;
	
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
SELECT * FROM dept_manager;
	