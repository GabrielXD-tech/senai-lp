create database DBCLINICA;
use DBCLINICA;

create table medico(
crm int not null,
nome varchar(40) not null,
idade int not null check (idade < 23),
especialidade char(20) not null default ('Ortopedia'),
cpf varchar (15) not null unique,
data_de_admissao date);

create table Paciente(
crm varchar (11) unique not null,
nome varchar(40) not null,
data_nascimento date,
cidade char (30) default ('Taguatinga'),
doenca varchar (40) not null,
plano_saude varchar(40) not null default ('sus'));

create table funcionarios(
matricula int unique not null auto_increment,
nome varchar (40) not null,
data_nascimento date not null,
data_admissao date not null,
cargo varchar(40) not null default ('Assistente Médico'),
salario decimal(6,2) not null default ('1510,00'));
