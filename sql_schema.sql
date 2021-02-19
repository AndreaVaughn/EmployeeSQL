CREATE TABLE employees(
	emp_no INT PK,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);
--select * from employees

--Drop table departments
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);
--select * from departments

--Drop table dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
);
--select * from dept_manager

--Drop table dept_emp
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
);
select * from dept_emp

CREATE TABLE salaries(
	salary INT,
	emp_no INT
);
--select * from salaries


CREATE TABLE titles(
	title_id varchar,
	title varchar
);
--select * from titles