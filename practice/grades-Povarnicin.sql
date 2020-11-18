SELECT CONCAT(student.name, ' ', student.surname, ' ', student.lastname) as fio, `group`.name, `group`.year
FROM student
LEFT JOIN `group` ON student.group_id = `group`.id;

SELECT CONCAT(student.name, ' ', student.surname, ' ', student.lastname) as fio, `group`.name
FROM student
LEFT JOIN `group` ON `group`.name = "11705";

SELECT students_grade.grade, students_grade.grade_date, CONCAT(student.name, ' ', student.surname, ' ', student.lastname) as fio, subject.name
FROM students_grade
LEFT JOIN subject ON subject_id = subject.id
LEFT JOIN student ON student_id = student.id;

SELECT CONCAT(student.name, ' ', student.surname, ' ', student.lastname) as fio, students_grade.grade, `group`.name, students_grade.grade_date
FROM students_grade
LEFT JOIN student ON student_id = student.id
INNER JOIN `group` ON `group`.name = "11705";
