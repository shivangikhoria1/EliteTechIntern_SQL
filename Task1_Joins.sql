SELECT s.student_id, s.name, c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;


SELECT s.student_id, s.name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id;


SELECT s.student_id, s.name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;


SELECT s.student_id, s.name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id
UNION
SELECT s.student_id, s.name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;