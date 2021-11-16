USE codeup_test_db;

-- this is a comment. Statements are not case sensitive ACTUALLY.
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE' NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales float NOT NULL,
    genre VARCHAR(50) NOT NULL
);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Lady Gaga', 'The Fame', 2008, 4900000.00, 'pop'),
    ('Mystery Artist', 'Mystery Album', 2021, 1.11, 'punk');