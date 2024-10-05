SELECT title, author_fname,author_lname,released_year FROM books
WHERE author_lname LIKE '%EGG%'
OR released_year>2010;
-- -- --
SELECT title, author_fname,author_lname,released_year FROM books
WHERE released_year BETWEEN 2004 AND 2014;
SELECT title ,stock_quantity,
CASE
    WHEN stock_quantity<=40 then '*'
    WHEN stock_quantity<=70 then '**'
    WHEN stock_quantity<=180 then '***'
    ELSE '****'
END AS stock
FROM books;
    