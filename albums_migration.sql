USE codeup_test_db;

-- this is a comment. Statements are not case sensitive ACTUALLY.
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name_of_album VARCHAR(100) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50)
);

INSERT INTO albums (artist, name_of_album, release_date, sales, genre)
VALUES ('Lady Gaga', 'The Fame', 2008, 4900000.00, 'pop'),
    ('Mystery Artist', 'Mystery Album', 2021, 1.11, 'punk');