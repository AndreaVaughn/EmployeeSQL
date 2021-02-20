--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--Do a subquery to bring salaries and employee table together
SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
-- conditional on the employees tables
SELECT employees.last_name, employees.first_name, employees.hire_date
from employees
WHERE DATE_PART('year',hire_date)= 1986
ORDER BY emp_no;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--join on employees and departments
SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
Left JOIN departments
ON dept_manager.dept_no = departments.dept_no
Left JOIN employees 
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
ORDER BY emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select 
employees.emp_no,
employees.first_name,
employees.last_name,
employees.sex
From Employees
where first_name= 'Hercules' and last_name like '%B%'
order by last_name
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select 
employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
From employees
inner join dept_emp
On employees.emp_no= dept_emp.emp_no
inner join departments
on departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
order by emp_no

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select 
employees.emp_no,
employees.first_name,
employees.last_name,
departments.dept_name
From employees
inner join dept_emp
On employees.emp_no= dept_emp.emp_no
inner join departments
on departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'
order by emp_no
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT (employees.last_name)
FROM employees
GROUP BY last_name
order by last_name Desc;