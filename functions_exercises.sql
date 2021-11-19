use employees;

select * from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by last_name asc, first_name desc;

select concat(first_name, ' ', last_name)
as 'EMPLOYEE FULL NAME'
from employees
where (last_name like '%e'
and last_name like 'E%')
order by emp_no desc;

select * from employees
where (last_name
like '%q%'
and last_name
not like '%qu%');

select datediff(now(), hire_date) from employees
where day(birth_date) = '25'
and month(birth_date) = '12'
and year(hire_date) like '199%'
order by birth_date asc, hire_date desc;