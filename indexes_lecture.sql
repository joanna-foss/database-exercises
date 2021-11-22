CREATE DATABASE IF NOT EXISTS quasar_example_db;

USE quasar_example_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    UNIQUE unique_owner_name (owner_name)
);

INSERT INTO pets (pet_name, owner_name, age) VALUES
    ('Sparkles', 'John Smith', 7),
    ('Snickers', 'Fred Smith', 10),
    ('Spot', 'Cathy Smith', 25);

SELECT * FROM pets;

SELECT * FROM pets WHERE id = 3;

EXPLAIN SELECT id FROM pets WHERE id = 3;
EXPLAIN SELECT id FROM pets WHERE owner_name = 'Cathy Smith';

#show indexes
SHOW INDEX FROM pets;

SELECT * from pets;

DESCRIBE pets;

INSERT INTO pets (pet_name, owner_name, age) VALUE
    ('Trixie', 'Cathy Smith', 1); #CANNOT ADD ANOTHER CATHY SMITH. Unique key on owner_name prevents this.
INSERT INTO pets (pet_name, owner_name, age) VALUE
    ('Trixie', 'Bobby Smith', 1);