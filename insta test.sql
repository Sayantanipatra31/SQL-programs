SELECT username , created_at FROM users
ORDER BY created_at LIMIT 5;

SELECT DAYNAME(created_at) AS day,COUNT(*) AS total FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

SELECT username FROM users
LEFT JOIN photos ON photos.user_id=users.id
WHERE photos.id IS NULL;

SELECT username, photos.id , photos.image_url,COUNT(*) AS total FROM photos
JOIN likes ON likes.photo_id=photos.id
JOIN users ON photos.user_id=users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

SELECT ((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS total_avg;

SELECT tag_name, COUNT(*) AS total FROM photo_tags
JOIN tags ON photo_tags.tag_id=tags.id
GROUP BY tag_id
ORDER BY total DESC
LIMIT 5;

SELECT username, Count(*) AS num_likes FROM   users 
INNER JOIN likes ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) FROM   photos);

