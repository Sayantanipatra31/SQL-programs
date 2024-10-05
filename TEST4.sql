SELECT title, author_lname,
CASE
    WHEN title LIKE '%STORIES%' THEN 'Short Stories'
    WHEN title LIKE 'Just%' OR title LIKE '%Heart%' THEN 'Memoir'
    ELSE 'Novel'
END AS Genre
FROM books;
-- -- -- --  --
SELECT author_fname,author_lname , CONCAT(COUNT(*),'books')
FROM books
GROUP BY author_lname,author_fname;