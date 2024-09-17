-- Database project for ** MySQL*
-- The scope of this project is to use all the SQL knowledge achieved trought the Softwae Testing course and apply them in practice
-- Tools used: MySQL Workbench

-- the scope of this project is to sort and 
create database Impal;
use Impal;

-- 1. Database Schema

-- You can see below the database schema that was generated trough Impal which contains all the tables and the relationship between them.
-- a. Table **Produse** is connected with Table **Clienti** trough a relationship **1:m** which was implemented trough
-- **Produse_produse_id** as a primary key and
-- **Clienti_fk_Clienti_produse** as a forgein key

-- b. Table **Clienti** is connected with Table **ComandaClienti** trough a relationship **1:m ** which was implemented trough
-- **Clienti_client_id**  as a primary key and
-- **ComandaClienti_ComandaClienti_Clienti** as a forgein key 

-- c. Table **ComandaClienti** is connected with Table **ComandaDetailata** trough a relationship **1:m ** which was implemented trough
-- **CoandaClienti_Comanda_id**  as a primary key and
-- **ComandaDetailata_fk_ComandaDetailata_ComandaClienti_clienti** as a forgein key

-- 2. Database Queries
-- i. DDL (Data Definition Language)
-- the following instructions were written in the scope of crating the structure of the database

create database Impal;

create table Produse (
produse_id int primary key auto_increment,
client_id int,
numearticol varchar(30),
pret float,
agent varchar(30)
);
select*from Produse;
desc produse;

create table Clienti(
client_id int not null auto_increment,
NumeClient varchar(30) not null,
Adresa varchar(30) not null,
Telefon varchar(10),
produse_id int not null,
primary key (client_id),
constraint fk_Clienti_Produse foreign key (produse_id) references Produse(produse_id)
);
select*from Clienti;

create table ComandaClienti(
comanda_id int not null auto_increment,
DataComanda date,
PretTotal Float,
client_id int not null,
produse_id int not null,
primary key(comanda_id),
constraint fk_ComandaClienti_Clienti foreign key (client_id) 
references Clienti(client_id)
);

select*from ComandaClienti;

create table ComandaDetailata(
CD_id int not null auto_increment,
NumarFactura varchar(10),
produse_id int not null,
client_id int not null,
comanda_id int not null,
primary key(CD_id),
constraint fk_ComandaDetailata_ComandaClienti foreign key(comanda_id) 
references ComandaClienti(comanda_id)
);
select*from ComandaDetailata;

-- After the database and the tables have been created, 
-- a frew ALTER instruction were written in order to update the structure of the database, as described below:

alter table Produse add column codProdus int;
alter table Produse drop column codProdus ;
alter table ComandaDetailata add DataComanda date not null;
alter table ComandaClienti modify  DataComanda date not null ;
alter table Produse add column cantitate int;
select*from produse;
desc ComandaClienti;
select*from ComandaDetailata;


-- ii. DML (Data Manipulation Language)
-- In order to be able to use the database I field the tables with various data necessary in order to perform queries and manipulate the data.
-- In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementatin phase.
-- Below you can find all the insert instructions that were created in the scope of the project:
 
 insert into Produse values (1,"3716", "Campari_1L", 42.5, "Teodorescu_Alexandra");
 insert into Produse values (2,"6758", "Finlandia_1L", 57.46, "Musui_Ancuta");
 insert into Produse values (3,"7115", "Aperol_0.7L", 64.43, "Musui_Ancuta");
 insert into Produse values (4,"8087", "Bristot_Tiziano_1KG", 157.75, "Sabau_Cristian");
 insert into Produse values (5,"7754", "Costa_Mit_Med_1KG", 153, "Musui_Ancuta");
 insert into Produse values (6,"84874", "Costa_Mit_Med_1kg", 64.43, "Teodorescu_Alexandra");
 insert into Produse values (7,"84874", "Aperol_0.7L", 64.43, "Teodorscu_Alexandra");
 insert into Produse (Produse_id,client_id, numearticol, pret, agent) values (8,"11606", "Red_Bull_250ml", 5.5, "Kolozsvari_Attila");
 insert into Produse (Produse_id,client_id, numearticol, pret, agent) values (9,"11606", "Aperol_0.7L", 64.43, "Kolozsvari_Attila"), 
 (10,"12570", "DYC_5", 40.04, "Kolozsvari_Attila"), (11,"6985", "Bib_Fet_Reg_10L", 111, "Kolozsvari_Attila") ;
 

 
 select*from Produse;
 
 insert into Clienti values(1, "OPALBALLROM_SRL", "Zalau5", 0755098788, "1");
 insert into Clienti values(2, "Carnival", "BaiaMare", 07567058839, "2");
insert into Clienti (client_id, NumeClient,Adresa, Telefon, Produse_id) 
values (3,"CCL_MARCHE_SRL", "Scolii_nr_6", 0775439667, "3"), (4,"The_Razal_srl", "Fabricii_nr11", 0775444667, "4");
insert into Clienti values(5,"Much_Better_SRL", "CentrulVechi_nr9", 0746439007, "5");

insert into Clienti (client_id, NumeClient,Adresa, Telefon, Produse_id) values
(6,"OPER_TOUR_SRL", "ZALAU_nr1", 0775445637, "6"), 
(7,"OPER_TOUR_SRL", "ZALAU_nr1", 0775445637, "7"), (8,"TIG_SRL", "BAIA_BORSA_nr1", 0735395637, "8"),
(9,"TIG_SRL", "BAIA_BORSA_nr1", 0735395637, "9"), (10,"KIND_COV_STAR_SRL", "VISEU_DE_SUS_nr155", 0735405673, "10"),
(11,"KIND_COV_STAR_SRL", "VISEU_DE_SUS_nr155", 0735405673, "11");

select*from ComandaClienti;

insert into ComandaClienti values(1, "2024-09-17", "42.5", 1, "1");
insert into ComandaClienti values(2, "2024-09-06", "57.46", 2, "2");
insert into ComandaClienti values(3, "2024-09-08", "64.43", 3, "3");
insert into ComandaClienti values(4, "2024-09-17", "157.75", 4, "4");
insert into ComandaClienti values(5, "2024-09-10", "153", 5, "5");
insert into ComandaClienti values(6, "2024-09-14", "64.43", 6, "6");
insert into ComandaClienti values(7, "2024-09-13", "64.43", 7, "7");
insert into ComandaClienti values(8, "2024-09-11", "64.43", 8, "8");
insert into ComandaClienti values(9, "2024-09-12", "64.43", 9, "9");
insert into ComandaClienti values(10, "2024-09-09", "64.43", 10, "10");
insert into ComandaClienti values(11, "2024-09-11", "111", 11, "11");

select*from ComandaDetailata;
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values 
(1,"314832", "1", 1, "1", "2024-09-17");
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values 
(2,"314995", "2", 2, "2", "2024-09-06"), (3,"314761", "3", 3, "3", "2024-09-08") ;
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values 
(4,"314762", "4", 4, "4", "2024-09-17"), (5,"314834", "5", 5, "5", "2024-09-10") ;
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values 
(6,"314820", "6", 6, "6", "2024-09-14"), (7,"314820", "7", 7, "7", "2024-09-13");
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values
(8,"314704", "8", 8, "8", "2024-09-11"), (9,"314951", "9", 9, "9", "2024-09-12");
insert into ComandaDetailata (CD_id, NumarFactura, Produse_id, Client_id, Comanda_id, DataComanda) values
(10,"315015", "10", 10, "10", "2024-09-09"), (11,"315101", "11", 11, "11", "2024-09-11");

-- AFTER THE INSERT IN ORDER TO PRRPARE THE DATA TO BE BETTER SUITED FOR THE TESTING PROESS, I UPDATE SOME DATA IN THE FOLLOWING WAY

update ComandaDetailata set NumarFactura="313942" where CD_id=2;
update Produse set Cantitate=2 where produse_id=1;
update Produse set Cantitate=5 where produse_id=2;
update Produse set Cantitate=1 where produse_id=3;
update Produse set Cantitate=4 where produse_id=5;
update Produse set Cantitate=3 where produse_id=6;
update Produse set Cantitate=1 where produse_id=7;

update Produse set Cantitate=3 where produse_id=8;
delete from ComandaDetailata where CD_id in (7);

-- iii. DQL (Data Query Language)
-- In Order to simulate varios scenarios that might happen in real life,
-- I created the following quweries that wolud cover mutiple potential real-life cases

select*from Produse;
where NumeArticol="Aperol_0.7L" and agent like"%t%";
select*from Produse
where NumeArticol="Costa_Mit_Med_1KG" and agent like"%";
-- functii agregate
select sum(pret) from Produse;
select sum(cantitate) from Produse;
select sum(PretTotal) from ComandaClienti;
select avg(pret) from Produse;
select min(pret) from Produse;
select max(pret) from Produse;
select count(agent) from produse;

-- cross join --  will bring all the combinations between the records in the table on the right and the one on the left
select*from Produse cross join ComandaDetailata;
--  Inner Join helps us to extract all the common information
-- the comparison being made on the column on which the join condition is made
select*from Produse inner join ComandaDetailata on Produse.Produse_id=ComandaDetailata.comanda_id;

-- Left join -- bring all the records from the table on the left and compare them with those on the right
-- Like this will take all the records in the table on the left,
-- and the columns related to the table on the right will be filled in only for the rows that have equivalent
-- ( only those whose primary key exists in the table on the right)
select*from Produse left join ComandaDetailata on produse.Produse_id=ComandaDetailata.Comanda_id;
select*from Produse left join ComandaDetailata on produse.Produse_id=ComandaDetailata.Comanda_id where produse.produse_id is null;
select*from Produse left join ComandaDetailata on produse.Produse_id=ComandaDetailata.comanda_id where produse.produse_id is not null;

-- right join bring all the records in the table on the right and compare them with those on the left
-- like that, all the rows from the table on the right will be brought in, and the columns related to the table on the left will be filled in
-- only for the rows that is having an equivalent
-- ( only those whose primary key exists in the table on the left)
select*from Produse right join ComandaDetailata on produse.Produse_id=ComandaDetailata.comanda_id;
select*from ComandaDetailata left join Produse on produse.Produse_id=ComandaDetailata.comanda_id;
-- Equivalent instructions

select*from Produse order by NumeArticol; -- by default sorting is done ascending
select*from ComandaClienti order by DataComanda;

-- limit
select*from Produse order by Pret desc limit 5;

-- 3. Conclusions
-- I manage to learn new skill that will emprove my work with MySQL Workbech, 
-- SQl is an important Tool with commands that let you perform database opertion such as determining the database`s structure and contents.
-- By combining many SQL statements into a script, you can perform elaborate procedures such as creating and initializing a database from scratch.