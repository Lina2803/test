create database if not exists myBD25032016;

use myBD25032016;

create table if not exists teacher 
(
id_teacher int not null auto_increment primary key,
name varchar(50),
surname varchar(50),
salary int
);

create table if not exists lesson
(
id_lesson int not null auto_increment primary key,
title varchar(50)
);

create table if not exists ref
(
id_of_teacher int , id_of_lesson int
);


alter table ref
	add constraint x1
    foreign key (id_of_teacher) references teacher(id_teacher);

alter table ref
	add constraint x2
    foreign key (id_of_lesson) references lesson(id_lesson);
    
insert into teacher (name,surname, salary)
	values
    ('roman','zherebetskiy',1000),
    ('petro','zhuk',1200),
    ('mykola','shorubura',900),
    ('sergiy','zhuravlyov',1500),
    ('sergiy','sokol',1400);
    
insert into lesson (title)
	values
    ('java core'),
    ('java advance'),
    ('javascript'),
    ('html'),
    ('mysql');
    
insert into ref (id_of_teacher, id_of_lesson)
	values
    (1,1),
    (1,2),
    (1,3),
    (2,3),
    (2,4),
    (3,1),
    (4,1),
    (4,2),
    (4,4),
    (4,5),
    (5,1),
    (5,2),
    (5,5);
    
select id_teacher,name,surname,salary,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson;
    
    
select id_teacher,name,surname,salary,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson order by title;
    
select distinct name,surname from teacher;


select id_teacher,name,surname,salary,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson group by title;
    
select sum(salary) from teacher;
select avg(salary) from teacher;
select min(salary) from teacher;
select max(salary) from teacher;
select count(name) from teacher;

select count(id_teacher)from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson;
    
    

select count(title),title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson group by title;
    
    
select id_teacher,name,surname,salary,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson order by title;
    


select count(name),name from teacher group by name;


select id_teacher,name,surname,salary,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson where salary > 1000
    having name = 'sergiy';
    
    
    
select max(salary)as max,title from teacher
	join ref on id_of_teacher = id_teacher
    join lesson on id_of_lesson = id_lesson 
    group by title order by max;










