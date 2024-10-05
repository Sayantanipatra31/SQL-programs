CREATE TABLE Customers(
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(225));

CREATE TABLE Orders(
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,
amount DECIMAL(8,2),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
INSERT INTO Customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO Orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
SELECT first_name, last_name, SUM(amount) AS total
FROM Customers
JOIN Orders ON orders.customer_id = Customers.id
GROUP BY first_name , last_name
ORDER BY total;
-- LEFT JOIN --
SELECT first_name, last_name, order_date,amount
FROM Customers
LEFT JOIN Orders ON orders.customer_id = Customers.id;

SELECT first_name, last_name, IFNULL(SUM(amount),0) AS total
FROM Customers
LEFT JOIN Orders ON orders.customer_id = Customers.id
GROUP BY first_name , last_name;
