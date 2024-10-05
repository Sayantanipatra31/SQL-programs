
USE soap;
SELECT CONCAT(SUBSTR(title,1,10),'...')AS short_title FROM books;
SELECT CONCAT(
SUBSTR(author_fname,1,1),'.',SUBSTR(author_lname,1,1),'.') AS Author_initials
FROM books;
SELECT REPLACE (title,' ','-') AS new_name FROM books;
SELECT REVERSE(author_fname) AS reversed_name FROM books;
SELECT 
    CONCAT(author_fname, REVERSE(author_fname))
FROM
    books;

   
