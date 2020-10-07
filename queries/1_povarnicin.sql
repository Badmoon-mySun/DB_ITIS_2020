-- Вывести список id групп, у которых id учителя равен 3
select id
from 'group'
where teacherid = 1;
-- Вывести список id пользователей из таблицы пользователей, у которых имя равно Danil, начиная с 3 по 10 позицию в таблице
select id
from user
where name = "Danil"
limit 2,8;
-- Вывести список уникальных id групп из таблицы студенты, у которых id студентов равен 10 со 2 по 4 позицию в таблице
select distinct group_id
from students
where id = 10
limit 1,3;
-- Сортирует по имени таблицу группы и выводит новую таблицу, отсортированную по имени с id
select id, name
from 'group'
order by name;
-- Из таблицы учителей выбираются те id учителей, которые при делении на 2 являются чётными числами, а далее они группируются по своим id.
select id
from teacher
where id % 2 = 0
group by id;
-- Выводит id и имя пользователей, у которых id > 3, сортировав их по возрастанию по id
select id, name
from user
where id > 3
order by id;
-- Выводит пропуская первые 2 следующие 10 id и имя группы , у которых имя группы равно 11-905, затем сортирует их 
-- по возрастанию их id
select name, id
from 'group'
where name = "11-905"
order by id
limit 2,10;
-- Выводит первые 8 id учителей и имя групп, группируя их по имени групп, а далее сортирует полученные группы по возрастанию
-- id учителей.
select name, teacherid
from 'group'
group by name
order by teacherid
limit 8;
-- Вывести имя пользователей, у которых id меньше 4, отсортированные в алфавитном порядке
select name
from user
where id < 4
order by name;
-- Вывести имя пользователя и id, отсортировав их по возрастанию id, пропуская первые 2 и выводит следующие 8
select id, name
from user
order by id
limit 2,8;
