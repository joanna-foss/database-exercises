USE codeup_test_db;

SELECT '' AS 'Albums by Pink Floyd';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT '' AS 'Year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date FROM albums WHERE name_of_album = 'Sgt. Pepper''s Lonely Hearts Club Band was released';

SELECT '' AS 'Genre for 21';
SELECT genre FROM albums WHERE name_of_album = '21';

SELECT '' AS 'Albums released in the 1990s';
SELECT name_of_album FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '' AS 'Albums with less than 40 mil in sales';
SELECT * FROM albums WHERE sales > 40000000;

SELECT '' AS 'Rock genre';
SELECT * FROM albums WHERE genre like '%rock%';