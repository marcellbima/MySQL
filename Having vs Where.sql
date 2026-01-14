-- Having vs Where

-- Both were created to filter rows of data
-- Where = filters rows based off columns of data (berdiri sendiri)
-- Having = filter rows based off aggregated columns when grouped (dipakai ketika pakai digrouping)

select *
from employee_demographics;

select gender, avg(age)
from employee_demographics
group by gender;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

-- contoh pemakaian where (salah, seharusnya pakai having karna digrouping)
-- this doesn't work because of order of operations. On the backend Where comes before the group by. So it can't filter on data that hasn't been grouped yet
select gender, avg(age)
from employee_demographics
where avg(age) > 40
group by gender;

-- pemakaian where yg benar jika digrouping
select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40;
