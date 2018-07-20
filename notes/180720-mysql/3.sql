SELECT teacher_id
FROM class
WHERE id IN (
  SELECT class_id
  FROM register
  GROUP BY class_id
  HAVING count(student_id) > 30
);
