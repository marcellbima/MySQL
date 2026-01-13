-- SELECT STATEMENET

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics;

SELECT last_name, first_name, gender, age
FROM parks_and_recreation.employee_demographics;

SELECT last_name, 
first_name, 
gender, 
age
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
occupation,
last_name,
salary,
salary + 100
FROM employee_salary;

SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM employee_salary;

# Pemdas

SELECT department_id
FROM parks_departments;

SELECT DISTINCT department_id
FROM employee_salary;
