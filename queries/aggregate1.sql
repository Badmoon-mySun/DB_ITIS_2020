-- Выбираем пациентов, у которых id больше или равен 150, и группируем их по дате рождения
select patient.id, patient.full_name from patient
where patient.id >= 150
group by patient.birthday;

-- Выбираем объекты position, у которых зарплата строго больше 250, группируем их по имени и производим сортировку по среднему значению зарплаты начиная с большего
select id, position.name, avg(salary) from position
where salary > 250
group by name
order by avg(salary) desc;

-- Ищем все департаменты, у которых сумма id и clinic id больше 150, и выводим их в порядке убывания этой суммы
select id, name, (id + clinic_id) as summ from department
where (id + clinic_id) > 150
order by (summ) desc;

-- Группируем по id сотрудников, смотрим среднее арифметическое по id пациентов, которое больше 100 и выводим сортируя по дате рождения, начиная от самого старшего
select * from registration
group by employee_id
having avg(patient_id) > 100
order by date;

-- Выводим от самого младшего сотрудника к самому старшему, у которых id равен position id
select * from employee
where id = position_id
order by birthday desc;

-- Выбрать самого старшего работника поликлиники
select full_name, min(birthday) as birthday
from employee;

-- Средняя зарплата среди всех сотрудников 
select avg(salary)
from employee
left join position
on employee.position_id = position.id;

-- Полное имя и количество записей пациента в registration 
select full_name, count(*)
from registration
left join patient
on patient.id = patient_id
group by patient_id;

-- id врача и количество пациентов к которым он был закреплен в registration 
select employee_id, count(patient_id)
from registration
group by patient_id;

-- id всех отделений в котором количество пациентов за все время больше 5 
select department_id, count(patient_id) as count_patient
from registration
group by department_id
having count_patient > 5;