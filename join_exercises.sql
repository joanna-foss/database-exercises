#JOIN DATABASE
DROP DATABASE IF EXISTS join_test_tb;

CREATE DATABASE join_test_tb;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('miley', 'miley@cyrus.com', null),
('aretha', 'aretha@franklin.com', 2),
('drake', 'drake@graham.com', 2),
('billy', 'billy@example.com', 2);

select * from users;

#inner join
SELECT users.name AS username, roles.name AS rolename
FROM users
    JOIN roles ON users.role_id = roles.id;

#left join
SELECT users.name AS username, roles.name AS rolename
FROM users
    LEFT JOIN roles ON users.role_id = roles.id;

#right join
SELECT users.name AS username, roles.name AS rolename
FROM users
    RIGHT JOIN roles ON users.role_id = roles.id;

#using count
SELECT roles.name as 'role', count(users.role_id) as 'num of roles'
FROM roles
         JOIN users ON users.role_id = roles.id
GROUP BY roles.name; #need to review this to understand how this works

#employees database
#USE THE FOLLOWING AS AN EXAMPLE
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS manager
FROM employees AS e
    JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
    JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date like '9999%'
AND e.gender = 'F';

SELECT t.title AS title, count(e.emp_no) as total
FROM employees AS e
         JOIN titles t
              ON e.emp_no = t.emp_no
         JOIN dept_emp de ON t.emp_no = de.emp_no
         JOIN departments AS d
WHERE dept_name = 'Customer Service'
  AND de.to_date like '9999%'
  AND
GROUP BY title;

SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) as manager, salary
FROM employees as e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date like '9999%'
AND s.to_date like '9999%';