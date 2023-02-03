use master 
go
if exists (select * from sys.databases where name='concours_2')
begin
drop database concours_2
end
go
create database concours_2
go
use concours_2
go
create table candidat(
numins varchar(6)primary key,
ncin varchar(12) unique not null,
nom varchar(20),
prenom varchar(20),
noteth float check (noteth between 0and 20),
notepr float check (notepr between 0 and 20)
);
go 
insert into candidat values 
('dc554','jc8456','mdani','ahmed',12.75,15),
('dc369','e4731','badr','azzeddine',9.50,14),
('dc879','be6584','nouassi','leila',14,16),
 ('sg872','jc8597','ferqadi','kabir',8.75,10.40),
 ('rp148','jc2854','salmi','nidal',14.50,17),
 ('kl658','jc1849','moutawakil','hassan',16,8);
 go
 select*from candidat
create table utilisateurs (
id_util int identity (1,1) primary key ,
nom_util varchar(40) not null,
motpasse varchar(40) not  null)
go
insert into utilisateurs values
('ZAMANI SAID','Z100'),
('SALAM NADIA','S100'),
('OMARI ABDELLAH','O100'),
('AMINE LAILA','A100')
GO
SELECT * FROM utilisateurs