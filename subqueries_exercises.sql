use employees;

select * from employees
where hire_date in (
    select hire_date from employees where emp_no = 101010
);

select * from titles
where emp_no in (
    select emp_no from employees where first_name = 'Aamod'
);

select first_name, last_name from employees
where emp_no in (
    select emp_no from dept_manager where to_date > NOW()
)
and gender = 'F';

select dept_name from departments
where dept_no in (
    select dept_no from dept_manager where emp_no in (
        select emp_no from employees where gender = 'F'
    ) and to_date > NOW()
);

select first_name, last_name from employees
where emp_no in (
    select emp_no from salaries where salary in (
        select max(salary) from salaries
    )
);