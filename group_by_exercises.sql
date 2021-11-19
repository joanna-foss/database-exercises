use employees;

select distinct title from titles;

select distinct concat(first_name, ' ', last_name)
as 'EMPLOYEE FULL NAME'
from employees
where (last_name like '%e'
and last_name like 'E%')
group by last_name;

select distinct last_name
from employees
where (last_name like '%e'
and last_name like 'e%')
group by last_name;

select distinct last_name from employees
where (last_name
like '%q%'
and last_name
not like '%qu%');

select count(gender)
as 'how many',
gender
as 'which gender'
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
group by gender;