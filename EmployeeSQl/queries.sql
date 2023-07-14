-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_num, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_num = salaries.emp_num;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1896' and hire_date <= '12/31/1986'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT department_managers.dept_num, departments.dept_name, department_managers.emp_num, employees.last_name, employees.first_name
FROM department_managers
INNER JOIN departments ON department_managers.dept_num = departments.dept_num
INNER JOIN employees ON department_managers.emp_num = employees.emp_num

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT department_employees.dept_num, department_employees.emp_num, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
INNER JOIN departments ON department_employees.dept_num = departments.dept_num
INNER JOIN employees ON department_employees.emp_num = employees.emp_num

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT department_employees.emp_num, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON department_employees.emp_num = employees.emp_num
INNER JOIN departments ON department_employees.dept_num = departments.dept_num
WHERE departments.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT department_employees.emp_num, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON department_employees.emp_num = employees.emp_num
INNER JOIN departments ON department_employees.dept_num = departments.dept_num
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Last Name Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Frequency" DESC;
