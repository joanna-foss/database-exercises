CREATE DATABASE IF NOT EXISTS quasar_example_db;

USE quasar_example_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id)
);

INSERT INTO pets (pet_name, owner_name, age) VALUES
    ('Sparkles', 'John Smith', 7),
    ('Snickers', 'Fred Smith', 10),
    ('Spot', 'Cathy Smith', 25);

SELECT * FROM pets;

SELECT * FROM pets WHERE id = 3;

EXPLAIN SELECT id FROM pets WHERE id = 3;
