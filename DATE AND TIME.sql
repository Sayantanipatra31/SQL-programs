USE soap;
CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'),
('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'),
('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');
SELECT* FROM people; 
SELECT CURTIME();
SELECT CURDATE();
SELECT NOW();
INSERT INTO people(name,birthdate,birthtime,birthdt)
VALUES('Hazel',CURDATE(),CURTIME(),NOW());
SELECT * FROM people;
SELECT birthdt, DAY(birthdt),DAYOFWEEK(birthdt) FROM people;
SELECT birthdate , MONTHNAME(birthdate), DAYNAME(birthdate) FROM people;
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
SELECT birthdate,DATEDIFF(CURDATE(),birthdate) FROM people;
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;
SELECT DATE_ADD(CURDATE(),INTERVAL 63 DAY);