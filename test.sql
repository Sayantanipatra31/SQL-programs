USE office;
CREATE TABLE employees(
emp_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(225),
months INT,
salary INT);
INSERT INTO employees(emp_id,name,months,salary)
VALUES(12228,'Rose',15,1968),
(33645,'Angela',1,3443),
(45692,'Frank',17,1608);
SELECT name FROM employees
ORDER BY name;