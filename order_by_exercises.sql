use employees;

select * from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by last_name asc, first_name desc;

select * from employees
where (last_name like '%e'
and last_name like 'E%')
order by emp_no desc;

select * from employees
where (last_name
like '%q%'
and last_name
not like '%qu%');