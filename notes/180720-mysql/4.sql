SELECT s.name
FROM subject s
WHERE s.id IN (
  SELECT r.subject_id
  FROM register r
  WHERE r.class_id IN (
    SELECT c.id
    FROM class c
    WHERE c.teacher_id = 1
  ) AND r.student_id = 1
);


SELECT s.name
FROM subject s
WHERE s.id IN (
  SELECT r.subject_id
  FROM register r
  INNER JOIN class c
  ON r.class_id = c.id
  WHERE r.student_id = 1
  AND c.teacher_id = 1
)
