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