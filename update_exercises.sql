USE codeup_test_db;

SELECT '' AS 'ALL ALBUMS';
SELECT * FROM albums;
UPDATE albums
SET sales = (sales * 4);
SELECT * FROM albums;

SELECT '' AS 'ALL ALBUMS BEFORE 1980';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums;


SELECT '' AS 'ALL ALBUMS BY MJ';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';