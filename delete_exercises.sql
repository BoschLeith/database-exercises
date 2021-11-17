USE codeup_test_db;

# Albums released after 1991
SELECT name AS 'Albums released after 1991'
FROM albums
WHERE release_date > '1991';

# Albums with the genre 'disco'
SELECT name AS 'Albums with the genre ''Disco'''
FROM albums
WHERE genre = 'Disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT name AS 'Albums by ABBA'
FROM albums
WHERE artist = 'ABBA';

# Convert the SELECT statements to DELETE.
DELETE
FROM albums
WHERE release_date > '1991';

DELETE
FROM albums
WHERE genre = 'Disco';

DELETE
FROM albums
WHERE artist = 'ABBA';