SELECT x.id, x.name, count(x.subject_id) as subjects
FROM (
  SELECT DISTINCT student.id, student.name, register.subject_id
  FROM student
  INNER JOIN register
  ON student.id = register.student_id
  WHERE (subject_id = 2 OR subject_id = 3)) as x
GROUP BY x.id
HAVING subjects > 1;


SELECT *
FROM student a
WHERE a.id IN (
  SELECT DISTINCT b.student_id
  FROM register b
  WHERE subject_id = 2 OR subject_id = 3
  GROUP BY b.student_id
  HAVING COUNT(b.subject_id) > 1
);
