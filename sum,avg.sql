SELECT author_lname , COUNT(*) AS NUMBERS FROM books GROUP BY author_lname;
SELECT author_lname, COUNT(*) AS NUMBERS FROM books GROUP BY author_lname ORDER BY NUMBERS DESC;
SELECT released_year , COUNT(*) AS NUMBERS FROM books GROUP BY released_year;
SELECT title,pages FROM books
WHERE pages=(SELECT MAX(pages) FROM books);
SELECT author_fname,author_lname 
FROM books
ORDER BY author_lname,author_fname;
SELECT released_year,AVG(stock_quantity),COUNT(*)
FROM books
GROUP BY released_year;
 