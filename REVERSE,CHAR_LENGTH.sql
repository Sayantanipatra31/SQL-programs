SELECT CHAR_LENGTH('HEY!');
SELECT LENGTH('HEY!');
SELECT CHAR_LENGTH(title) AS len , title FROM books;
SELECT CONCAT(UCASE(' i love '),UCASE(title),'!!!') AS New_look FROM books;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
SELECT * FROM books;