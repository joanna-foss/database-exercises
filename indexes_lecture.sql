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

CREATE DATABASE IF NOT EXISTS quasar_example_db;

USE quasar_example_db;

DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO owners (name, address) VALUES
    ('billy', '123 somewhere'),
    ('sally', '456 somewhere'),
    ('max', '789 somewhere');

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(30) NOT NULL,
    owner_id INT UNSIGNED NOT NULL,
    age INT,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

INSERT INTO pets (pet_name, owner_id, age) VALUES
    ('Sparkles', 1, 7),
    ('Snickers', 2, 10),
    ('Spot', 3, 25);

select * FROM owners;
select * FROM pets;