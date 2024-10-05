SELECT DATE_FORMAT(created_at,'%M %D %Y') AS Created FROM users
ORDER BY created_at
LIMIT 1;

SELECT email, created_at AS Created FROM users
ORDER BY created_at
LIMIT 1;

SELECT MONTHNAME(created_at) AS Created,COUNT(*) FROM users
GROUP BY Created
ORDER BY Created DESC;

SELECT CASE 
         WHEN email LIKE '%@gmail.com' THEN 'gmail' 
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
         ELSE 'other' 
       end      AS provider, 
       Count(*) AS total_users 
FROM   users 
GROUP  BY provider 
ORDER  BY total_users DESC; 