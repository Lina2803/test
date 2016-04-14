create database if not exists turism;
use turism;

create table if not exists agent
(idAgent int not null auto_increment primary key,
AgentCity varchar(50)

);
create table if not exists client
(idClient int not null auto_increment primary key,
Name varchar(50),
Surname varchar(50),
Age int,
Visa varchar(50),
Agent_idAgent int
);

create table if not exists tur

(idTur int not null auto_increment primary key,
Country varchar(50),
City varchar(50),
TypeTur varchar(50),
Price int,
Client_idClient int
);



alter table client
add constraint x
foreign key(Agent_idAgent) references agent(idAgent);

alter table tur 
add constraint x1
foreign key(Client_idClient) references client(idClient);

insert into agent(AgentCity)
values
('Lviv'),
('Kiev'),
('Cherkassy'),
('Harkiv'),
('Poltava');


insert into client(Name,Surname,Age,Visa,Agent_idAgent)
values
('Igor','Plih',25,'Shopping',1),
('Uliya','Fols',56,'Business',2),
('Oksana','Iom',51,'Shopping',5),
('Aleksey','Plih',63,'Shenhen',1),
('Oleh','Tuo',23,'Shenhen',3),
('Anzhela','Tuo',23,'Shopping',3),
('Igor','Reda',45,'Shenhen',2),
('Oksana','Desa',26,'Shenhen',5),
('Aleksey','Opa',47,'Shopping',4),
('Uliya','Fuir',32,'Business',3),
('Aleksandr','Xail',21,'Shenhen',1),
('Oksana','Uref',19,'Business',2),
('Uliya','Playn',21,'Shopping',3),
('Aleksey','Topig',28,'Tourist',1),
('Oleh','Gip',20,'Business',3);


insert into tur(Country,City,TypeTur,Price,Client_idClient)
values
('Thailand','Bahkok','Extrim',2500,11),
('Egypt','Hurgada','Family',3000,12),
('Turkey','Bahkok','Business',4000,10),
('Bulgaria','Byala','Family',6900,1),
('Thailand','Pataiya','Shopping',95000,2),
('Croatia','Zagreb','Business',50000,3),
('Egypt','Hurgada','Family',6500,4),
('Thailand','Pataiya','Shopping',45000,5),
('Bulgaria','Burgas','Family',3000,6),
('Thailand','Samui','Shopping',12000,7),
('Turkey','Antaliya','Family',12500,8),
('Egypt','Kair','Shopping',36000,9),
('Croatia','Zadar','Shopping',65000,10),
('Thailand','Samui','Shopping',30000,14),
('Turkey','Ankara','Business',3600,13),
('Egypt','Kair','History',38000,15),
('Thailand','Samui','Shopping',52000,8),
('Bulgaria','Varna','Family',3600,9),
('France','Paris','Shopping',90000,2),
('England','London','Business',65000,5);

select * from client
join agent on idAgent=Agent_idAgent
join tur on Client_idClient=idClient;