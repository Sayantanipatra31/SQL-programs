CREATE DATABASE window_func;
USE window_func;
CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT department , salary, COUNT(*) OVER(PARTITION BY department) AS dept_avg
FROM employees;

SELECT department , salary, SUM(salary) OVER(PARTITION BY department) AS dept_total_salary
FROM employees;

SELECT department , salary, SUM(salary) OVER(PARTITION BY department) AS dept_total, SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC)  AS cummulative_dept_total_salary
FROM employees;

SELECT  emp_no,department , salary,RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank 
FROM employees;

SELECT  emp_no,department , salary,RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank 
FROM employees ORDER BY department;

SELECT 
    emp_no, 
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
FROM employees ORDER BY overall_rank;

SELECT emp_no, department, salary,
NTILE(4) OVER(ORDER BY salary) AS salary_quartile
FROM employees ;
    
SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
    LAG(salary) OVER(ORDER BY salary DESC)
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
salary-LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
salary-LEAD(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_diff
FROM employees;