USE employees;

DESCRIBE tables;

USE codeup_test_db;

ALTER TABLE albums
ADD UNIQUE unique_album_and_artist (artist, name_of_album);