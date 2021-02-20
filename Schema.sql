--Create departments table
DROP TABLE departments
CREATE TABLE departments(
	dept_no	VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);
--Import departments.csv
SELECT * FROM departments
--Create employees table
DROP TABLE employees
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
--Import employees.csv
SELECT * FROM employees
--Create dept_manager table
DROP TABLE dept_manager
CREATE TABLE dept_manager(
	dept_no	VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
--Import dept_manager.csv
SELECT * FROM dept_manager
--Create dept_emp table
DROP TABLE dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
--Import dept_emp.csv
SELECT * FROM dept_emp
--Create salaries table
DROP TABLE salaries
CREATE TABLE salaries(
	emp_no	INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);
--Import salaries.csv
SELECT * FROM salaries
--Create titles table
DROP TABLE titles
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
);
--Import titles.csv
SELECT * FROM titles

