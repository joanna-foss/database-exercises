CREATE DATABASE IF NOT EXISTS quasar_example_db;

USE quasar_example_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

SELECT *
FROM users;
SELECT *
FROM roles;

#INNER JOIN
SELECT users.name AS username, roles.name as rolename
FROM users
         JOIN roles ON users.role_id = roles.id; #if you want to memorize this syntax, it will benefit you. - douglas

#LEFT JOIN
SELECT users.name AS username, roles.name as rolename
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

#RIGHT JOIN
SELECT users.name AS username, roles.name as rolename
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
WHERE users.name IS NULL;

#associative tables
USE employees;

SELECT * FROM employees LIMIT 10;
SELECT * FROM departments LIMIT 10;
SELECT * FROM dept_emp LIMIT 10;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;