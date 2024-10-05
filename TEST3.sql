SELECT COUNT(*) FROM books;
-- -- --
SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;
-- -- --
SELECT SUM(stock_quantity) AS stock
FROM books;
-- -- --
SELECT author_lname,AVG(released_year)
FROM books
GROUP BY author_lname,author_fname;
-- -- --
SELECT author_fname,pages
FROM books
WHERE pages=(SELECT MAX(pages) FROM books);
-- -- -- -- --
SELECT released_year AS _year_ ,COUNT(*) AS book , AVG(pages)
FROM books
GROUP BY  released_year
ORDER BY released_year;

