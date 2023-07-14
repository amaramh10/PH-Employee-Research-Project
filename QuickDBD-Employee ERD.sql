-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/6xddPJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "emp_num" INTEGER   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_num"
     )
);

CREATE TABLE "Departments" (
    "dept_num" INTEGER   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_num"
     )
);

CREATE TABLE "DeptEmployees" (
    "dept_num" INTEGER   NOT NULL,
    "emp_num" INTEGER   NOT NULL
);

CREATE TABLE "Managers" (
    "dept_num" INTEGER   NOT NULL,
    "emp_num" INTEGER   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_num" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

