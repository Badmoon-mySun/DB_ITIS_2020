SELECT CONCAT(stud.name, ' ', stud.surname, ' ', stud.lastname) as fio,  `group`.name, `group`.year
FROM student as stud
LEFT JOIN `group`
ON stud.group_id = `group`.id;

SELECT CONCAT(stud.name, ' ', stud.surname, ' ', stud.lastname) as fio,  `group`.name
FROM student as stud
LEFT JOIN `group`
ON stud.group_id = `group`.id
WHERE `group`.name = '11705';

SELECT 	grd.grade, grd.grade_date, CONCAT(stud.name, ' ', stud.surname, ' ', stud.lastname), subj.name
FROM students_grade as grd
LEFT JOIN student as stud
ON stud.id = grd.student_id
LEFT JOIN `subject` as subj
ON subj.id = grd.subject_id;

SELECT CONCAT(stud.name, ' ', stud.surname, ' ', stud.lastname) as fio, grd.grade, grup.name, grd.grade_date
FROM student as stud
LEFT JOIN students_grade as grd
ON stud.id = grd.student_id
LEFT JOIN `group` as grup
ON stud.group_id = grup.id;

