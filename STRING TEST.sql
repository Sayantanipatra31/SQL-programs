SELECT REVERSE(UPPER('Why does my cat look at me with such hatred'));
SELECT REPLACE(title,' ','->') AS title FROM books;
SELECT author_fname AS forward,REVERSE(author_lname) AS backward FROM books;
SELECT * FROM books;
SELECT CONCAT(title,' was released in',released_year) FROM books;
SELECT 
    CONCAT(LEFT(title, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;