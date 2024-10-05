CREATE TABLE palindromes(
name VARCHAR(225),
CONSTRAINT word_shouldbe_palindrome CHECK (REVERSE(name)=name)
);
INSERT INTO palindromes(name)VALUES('racecar');
INSERT INTO palindromes(name)VALUES('momo');
-- -- -- --
CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
INSERT INTO companies (name,address)
VALUES('Amlal','ABC Street');
INSERT INTO companies (name,address)
VALUES('Amlal','ABC Street');
ALTER TABLE companies
ADD COLUMN Phone INT NOT NULL UNIQUE;
SELECT * FROM companies;
-- -- -- --
RENAME TABLE companies to suppliers;
SELECT * FROM suppliers;
ALTER TABLE suppliers RENAME TO companies;

ALTER TABLE companies
RENAME COLUMN name TO company_name;
SELECT * FROM companies;
-- -- -- --
ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';
DESC companies;

ALTER TABLE companies
ADD CONSTRAINT no_no CHECK (phone>=0);
ALTER TABLE companies DROP CONSTRAINT no_no;

