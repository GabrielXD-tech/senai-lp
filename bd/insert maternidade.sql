-- SQL DDL CREATE TABLE
drop database dbmaternidade;
create database dbmaternidade;
use dbmaternidade;

create table mae(
id_mae int auto_increment,
nome varchar(150),
rg varchar(10),
endereco varchar(200),
telefone varchar(20),
dt_nascimento date,
constraint PK_Mae primary key(id_mae)
);

create table medico(
crm int,
nome varchar(120),
telefone varchar(20),
especialidade varchar(100),
constraint PK_Medico primary key(crm)
);

create table bebe(
id_bebe int auto_increment,
nome varchar(100),
dt_nascimento date,
peso float(5,2),
altura int,
crm int not null,
id_mae int not null,
constraint PK_Bebe primary key(id_bebe),
constraint FK_BebeMedico foreign key(crm) references medico(crm),
constraint FK_BebeMae foreign key(id_mae) references mae(id_mae)
);

SELECT * FROM mae;

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Eliana', '1234567890', 'Rua das Flores,100,São Paulo,SP', '(11)91234-5678', '1973-11-22');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Ivete Sangalo', '2345678901', 'Av. Oceânica,200,Salvador,BA', '(71)99876-5432', '1972-05-27');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Claudia Leitte', '3456789012', 'Rua das Estrelas,300,Rio de Janeiro,RJ', '(21)98765-4321', '1980-07-10');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Nívea Stelmann', '4567890123', 'Alameda das Palmeiras,150,Niterói,RJ', '(21)91234-1234', '1974-04-06');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Andréa Sorvetão', '5678901234', 'Rua do Sol,50,São Paulo,SP', '(11)92345-6789', '1973-10-01');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Simone Mendes', '6789012345', 'Rua Sertaneja,500,Goiânia,GO', '(62)93456-7890', '1984-05-24');

INSERT INTO mae (nome, rg, endereco, telefone, dt_nascimento)
values('Samara Felippo', '7890123456', 'Rua dos Artistas,250,Rio de Janeiro,RJ', '(21)95678-4321', '1978-10-06');

SELECT * FROM medico;

INSERT INTO medico (crm, nome, telefone, especialidade)
values('1010', 'Dr. João Silva', '(11)92345-6789', 'Pediatra');

INSERT INTO medico (crm, nome, telefone, especialidade)
values('1020', 'Dra. Maria Oliveira', '(71)98765-4321', 'Pediatra');

INSERT INTO medico (crm, nome, telefone, especialidade)
values('1030', 'Dr. Carlos Santos', '(21)91234-5678', 'Pediatra');

SELECT * FROM bebe;

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Giovanna', '1997-02-02', '3.50', '50', '1030', '5');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Stephanie', '1999-06-05', '3.45', '49', '1020', '5');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Felipe', '2003-11-15', '3.55', '51', '1020', '5');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Miguel', '2004-07-11', '3.30', '49', '1030', '4');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Davi', '2009-01-20', '3.45', '50', '1030', '3');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Alícia', '2009-07-28', '3.40', '49', '1020', '7');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Marcelo', '2009-10-02', '3.60', '52', '1030', '2');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Arthur', '2011-08-10', '3.50', '50', '1010', '1');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Rafael', '2012-08-15', '3.55', '51', '1010', '3');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Lara', '2013-05-15', '3.20', '47', '1030', '7');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Henry', '2014-02-03', '3.60', '50', '1020', '6');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Bruna', '2014-04-10', '3.10', '47', '1030', '4');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Manuela', '2017-09-10', '3.20', '48', '1020', '1');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Helena', '2018-02-10', '3.35', '49', '1020', '2');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Marina', '2018-02-10', '3.40', '49', '1010', '2');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Bela', '2019-08-20', '3.25', '48', '1020', '3');

INSERT INTO bebe (nome, dt_nascimento, peso, altura, crm, id_mae)
values('Zaya', '2021-02-22', '3.30', '48', '1010', '6');