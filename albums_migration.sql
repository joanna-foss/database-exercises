USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE' NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    sales float NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);