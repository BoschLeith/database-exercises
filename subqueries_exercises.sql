USE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT first_name
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date > NOW())
  AND gender = 'F';

# BONUS: Find all the department names that currently have female managers.

SELECT dept_name
FROM departments AS d
         JOIN dept_manager dm ON d.dept_no = dm.dept_no
WHERE dm.emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F') and dm.to_date > NOW();

# BONUS: Find the first and last name of the employee with the highest salary.

SELECT DISTINCT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary = (SELECT MAX(salary) FROM salaries));


