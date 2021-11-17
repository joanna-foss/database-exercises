USE codeup_test_db;

# SELECT '' AS 'ALL ALBUMS AFTER 1991';
DELETE FROM albums WHERE release_date > 1991;
# SELECT '' AS 'GENRE = DISCO';
DELETE FROM albums WHERE genre = 'disco';
# SELECT '' AS 'ALBUMS BY WHITNEY HOUSTON';
DELETE FROM albums WHERE artist = 'Whitney Houston';
