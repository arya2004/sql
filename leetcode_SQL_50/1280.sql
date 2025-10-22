SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(ex.student_id) AS attended_exams
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex
ON stu.student_id = ex.student_id AND sub.subject_name = ex.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name;
-- We want a list of all students and subjects, even if they didn’t take an exam.
-- Cross join Students × Subjects gives all possible combinations.
-- LEFT JOIN to Examinations to count only the ones they attempted.