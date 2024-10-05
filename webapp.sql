CREATE DATABASE webapp;
USE webapp;
CREATE TABLE users(
email VARCHAR (225) PRIMARY KEY,
created_at TIMESTAMP DEFAULT NOW());
INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');
SET SQL_SAFE_UPDATES=0;
DELETE FROM users;
SELECT * FROM users;
INSERT INTO users (email) VALUES('Katie34@yahoo.com');
SELECT * FROM users
ORDER BY created_at DESC;