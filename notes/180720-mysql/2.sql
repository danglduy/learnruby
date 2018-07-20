SELECT teacher_id
FROM class
GROUP BY class.teacher_id
HAVING count(name) > 5;
