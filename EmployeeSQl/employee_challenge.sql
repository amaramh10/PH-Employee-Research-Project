CREATE TABLE departments(
	dept_num VARCHAR PRIMARY KEY,
	dept_namE VARCHAR
)

SELECT * FROM departments


CREATE TABLE employees(
	emp_num VARCHAR,
	title_id VARCHAR UNIQUE,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY(emp_num, title_id)
);


SELECT * FROM employees


CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM titles


CREATE TABLE department_employees(
	dept_num VARCHAR,
	emp_num VARCHAR
);

SELECT * FROM department_employees


CREATE TABLE department_managers(
	dept_num VARCHAR,
	emp_num VARCHAR
);

SELECT * FROM department_managers


CREATE TABLE salaries(
	emp_num VARCHAR,
	salary INTEGER
);

SELECT * FROM salaries

