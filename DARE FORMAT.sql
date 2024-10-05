CREATE TABLE captions(
text VARCHAR(150),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP); 
INSERT INTO captions(text)VALUES('I love myself');
SELECT * FROM captions;
-- UPDATE captions SET text='I LOVE MY LIFE';--
-- SELECT * FROM captions;--
SELECT DAYNAME(birthdate) FROM people;
SELECT DATE_FORMAT(CURDATE(),'%m/%d/%y');