USE codeup_test_db;

-- this is a comment. Statements are not case sensitive ACTUALLY.
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name_of_album VARCHAR(100) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50)
);