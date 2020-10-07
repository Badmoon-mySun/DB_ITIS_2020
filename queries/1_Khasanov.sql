-- Группы с нечетными
select id
from `group`
where id % 2 != 0;

-- Пользователи с именем Roman
select name
from user
where name = 'Roman';

-- Студенты из группы с айди 12
select id
from students
where group_id = 12;

-- Имена пяти групп, кроме первых трех, с айди преподавателя 4
select name
from `group`
where teacherid = 4
limit 3, 5;

-- Упорядоченный список всех имен пользователей
select name
from user
order by name;

-- Количество студентов в каждой из групп
select `group`.name, count(students.id)
from `group`, students
where students.group_id = `group`.id
group by `group`.name;

-- Айди студентов и групп, у которых совпадают айди
select students.id, teacher.id
from students, teacher
where students.id = teacher.id;

-- Упорядоченный список имен user-ов айди которых < 10
select name, id
from user
where id < 10
order by name;

-- Упорядоченный список айдишников и именем Alex
select id
from user
where name = 'Alex'
group by id;

-- Сгруппированный по преподавателям список групп
select teacher.id, `group`.name
from teacher, `group`
where teacher.id = `group`.id
order by teacher.id



