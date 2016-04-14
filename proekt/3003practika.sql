create database if not exists bank;
use bank;

create table if not exists department
(idDepartment int not null auto_increment primary key,
DepartmentCity varchar(50),
CountOfWorkers int
);
create table if not exists client
(idClient int not null auto_increment primary key,
FirstName varchar(50),
LastName varchar(50),
Education varchar(50),
Passport varchar(50),
City varchar(50),
Age int,
Department_idDepartment int
);

create table if not exists application

(idApplication int not null auto_increment primary key,
Sum int,
CreditState varchar(50),
Currency varchar(50),
Client_idClient int
);



alter table client
add constraint x
foreign key(Department_idDepartment) references department(idDepartment);

alter table application 
add constraint x1
foreign key(Client_idClient) references client(idClient);

insert into department(DepartmentCity, CountOfWorkers)
values
('Lviv', 10),
('Poltava', 5),
('Kiev',15),
('Sumy',5),
('Lutsk',7);

insert into client(FirstName, LastName,Education,Passport,City,Age,Department_idDepartment)
values
('Uriy','Pet','High','CN123567','Lviv',25,1),
('Aleksey','Ion','Middle','NM568945','Stryy',36,5),
('Uliya','Koss','NepovnaHigh','MK567825','Sumy',45,4),
('Ihor','Golub','Absent','NM568655','Poltava',58,5),
('Oleh','Kou','High','NM575945','Lutsk',36,4),
('Andriy','Vars','High','NM562345','Lutsk',69,3),
('Oksana','Port','NepovnaHigh','CN123512','Brovary',32,2),
('Anjela','Anki','Tehnichna','MK512825','Brovary',28,4),
('Aleksey','Korpa','High','MK569625','Kiev',45,3),
('Andriy','Ost','Middle','CN128967','Brovary',41,1),
('Oleh','Got','NepovnaHigh','CN853567','Kiev',52,4),
('Oksana','Hop','NepovnaHigh','MK127825','Kiev',24,2),
('Uliya','Dasyk','Middle','MK567965','Lviv',21,4),
('Anjela','Reca','Tehnichna','CN564567','Poltava',23,3),
('Dmitriy','Xoila','NepovnaHigh','CN123967','Brovary',38,3),
('Aleksandr','Karpenko','Middle','CN129867','Lviv',45,2),
('Oleh','Drill','High','CN121567','Poltava',47,1),
('Andriy','Fars','Tehnichna','MK563825','Lutsk',61,1),
('Aleksandr','Urp','NepovnaHigh','MK581225','Kiev',55,3),
('Tatyana','Opi','Tehnichna','MK817825','Kiev',20,1);

insert into application(Sum,CreditState,Currency,Client_idClient)
values
(2000,'vydanyy','grn',9),
(5000,'oplach','grn',3),
(6700,'oplach','evr',4),
(2000,'vydanyy','evr',9),
(500,'oplach','dol',20),
(1000,'vydanyy','grn',20),
(800,'vydanyy','dol',19),
(150,'oplach','dol',18),
(500,'vydanyy','evr',17),
(25600,'vydanyy','dol',16),
(36000,'vydanyy','grn',15),
(4500,'oplach','dol',14),
(12000,'vydanyy','dol',13),
(7890,'oplach','dol',12),
(4570,'vydanyy','grn',11),
(9560,'oplach','dol',10),
(3000,'vydanyy','dol',9),
(2500,'vydanyy','dol',8),
(6500,'vydanyy','grn',7),
(4570,'oplach','grn',6),
(5840,'vydanyy','grn',5),
(950,'vydanyy','dol',4),
(650,'oplach','dol',3),
(890,'oplach','grn',2),
(4560,'vydanyy','dol',1),
(3020,'oplach','evr',20),
(5400,'vydanyy','evr',18),
(7800,'oplach','evr',17),
(9800,'oplach','dol',19),
(4570,'oplach','evr',16),
(1000,'oplach','dol',15);

select * from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient;

select * from department where DepartmentCity='Lviv';

select * from application order by idApplication desc limit 5;

select LastName, Education from client  where Education='High' order by LastName ;

select LastName from client where LastName like '%s' or 'K%';

select LastName, FirstName from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient where DepartmentCity='Kiev';

select FirstName, Passport from client order by FirstName;
select * from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient where Sum>5000;

select count(LastName) from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient order by idDepartment;
select count(LastName) from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient where DepartmentCity='Lviv';

select max(Sum) as max, LastName from client
join department on idDepartment=Department_idDepartment
join application on Client_idClient=idClient group by LastName order by max;
