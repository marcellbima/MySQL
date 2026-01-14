-- Group By + Order By

-- GROUP BY

SELECT *
FROM employee_demographics;

-- when you use group by  you have to have the same columns you're grouping on in the group by statement

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT first_name
FROM employee_demographics
GROUP BY gender;

SELECT occupation
FROM employee_salary
GROUP BY occupation;


SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age), MAX(age), COUNT(age), AVG(age)
FROM employee_demographics
GROUP BY gender;

-- OREDER BY
-- sort the result-set in (ascending[asc]) or (descending[desc]) order
-- if use order by it goes a to z by default (ascending order)

Select *
FROM employee_demographics;

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender, age ASC;

SELECT *
FROM employee_demographics
ORDER BY gender ASC, age DESC;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;
