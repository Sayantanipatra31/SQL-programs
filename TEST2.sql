SELECT CONCAT(title ,' - ',released_year) AS summary FROM books 	ORDER BY released_year DESC LIMIT 3;
SELECT title FROM books WHERE title LIKE '%stories%'; 
SELECT title,author_lname  FROM books WHERE author_lname LIKE '% %';
SELECT title,author_lname FROM books ORDER BY author_lname,title;
SELECT CONCAT('MY FAV AUTHOR IS',UCASE(CONCAT(author_fname,author_lname))) AS Yell FROM books ORDER BY author_lname;