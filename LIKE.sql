SELECT author_lname FROM books;
SELECT DISTINCT author_fname,author_lname FROM books;
-- OR --
SELECT DISTINCT CONCAT(author_fname,' ',author_lname) FROM books;
SELECT * FROM books;
SELECT  book_id,title,pages FROM books ORDER BY  author_fname;
SELECT title,author_fname,author_lname FROM books
WHERE author_fname LIKE '%DAv%';