USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
  AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS Total
FROM employees
         JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
         JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service'
  AND titles.to_date > NOW()
  AND dept_emp.to_date > NOW()
GROUP BY title;

# Find the current salary of all current managers.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date > NOW()
  AND s.to_date > NOW();

# Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       d.dept_name, dm.emp_no AS Manager_ID,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees AS e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         LEFT JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > NOW() AND dm.to_date > NOW();