use employees;

select first_name, last_name, birth_date
from employees
limit 10;

select * from dept_manager
where to_date > NOW();

select first_name, last_name, birth_date
from employees
where emp_no in (
    select emp_no from dept_manager where to_date > NOW()
    );

use quasar_example_db;

select * from roles;
select * from users;

insert into users (name, email, role_id)
values ('Douglas', 'douglas@codeup.com', (select id from roles where name = 'commenter'));

select * from users;
select * from roles;

#update users
    #set role_id = 1; don''t do this this will update every single role id...

#TYPE WHERE CLAUSE FIRST - pro tip from douglas
update users
    set role_id = (select id from roles where name = 'admin')
where email = 'douglas@codeup.com';

select * from users;