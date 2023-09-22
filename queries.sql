/*
1. ---
SELECT
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
FROM
    employees
JOIN
    salaries ON employees.emp_no = salaries.emp_no;

2. ---
SELECT
    first_name,
    last_name,
    hire_date
FROM
    employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;

3. ---
SELECT
	departments.dept_no AS d_number,
	departments.dept_name AS d_name,
	dept_manager.emp_no AS m_number,
	employees.last_name AS m_lastname,
	employees.first_name as m_firstname
FROM
	departments
JOIN
	dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN
	employees ON dept_manager.emp_no = employees.emp_no;

4. ---
SELECT d1.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d1
ON e.emp_no = d1.emp_no
INNER JOIN departments as d
ON d.dept_no = d1.dept_no;

5. ---
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

6. ---
SELECT e.emp_no, d.dept_name, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS d1
ON e.emp_no = d1.emp_no
INNER JOIN departments AS d
ON d1.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

7. ---
SELECT e.emp_no, d.dept_name, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS d1
ON e.emp_no = d1.emp_no
INNER JOIN departments AS d
ON d1.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name ='Development'
ORDER BY d.dept_name ASC;

8. ---
SELECT last_name, count(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
*/








