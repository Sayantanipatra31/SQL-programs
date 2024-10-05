CREATE TABLE students(
first_name VARCHAR(225),
id INT AUTO_INCREMENT PRIMARY KEY);
CREATE TABLE papers(
title VARCHAR(220),
grade INT,
student_id INT,
FOREIGN KEY (student_id) REFERENCES students (id));
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name,IFNULL(title,'MISSING'),IFNULL(grade,0) FROM students
LEFT JOIN papers ON papers.student_id=students.id
ORDER BY grade DESC;

SELECT first_name,IFNULL(AVG(grade),0) AS average ,
CASE 
   WHEN IFNULL(AVG(grade),0)>=70 THEN 'PASSING'
   ELSE 'FAILING'
END AS status
FROM students
LEFT JOIN papers ON students.id=papers.student_id
GROUP BY first_name
ORDER BY average DESC;