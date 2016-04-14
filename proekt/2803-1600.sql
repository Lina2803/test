select * from teacher 
join ref 
on id_of_teacher = id_teacher
join lesson
on id_of_lesson = id_lesson;


select avg(salary) from teacher; 
select * from teacher where salary > (select avg(salary) from teacher); 

delimiter //
create procedure proc_one()
begin
select * from teacher;
end//


create procedure proc_two(in ind int)
begin
select * from teacher where id_teacher = ind;
end//

 delimiter ;

call proc_one();

call proc_two(3);

delimiter //
create procedure p3 (in y int)
begin
declare temp int;
set temp = y;
select * from teacher where salary > temp;
end//
delimiter ;
call p3(1000);

delimiter //
create procedure pIf(in str varchar(50))
	begin
if str = 'a'
	then
select * from teacher;
	else
select * from lesson;
end if;
end//
delimiter ;
call pIf('zc');

delimiter //

create procedure pSwitch(in var varchar(50))
begin
case var
	when 'a' then
    select * from teacher;
    when  'b' then
    select * from lesson;
    when 'c' then
    select * from ref;
end case;
end//
delimiter ;
call pSwitch('c');

create index aaa on teacher(name);



    

select * from teacher 
join ref
on id_of_teacher = id_teacher
join lesson
on id_of_lesson=id_lesson;

select count(id_teacher) as count, avg(salary) as avg_salary from teacher;






;
















