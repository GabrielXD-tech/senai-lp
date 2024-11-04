create database DBCLINICA;
use DBCLINICA;

create table sala(
numero_sala int check (numero_sala > 1 and numero_sala < 50),
andar int not null,
constraint PK_Sala primary key(numero_sala)
);

create table medico(
crm int not null,
nome varchar(40) not null,
idade int not null check (idade > 23),
especialidade varchar(20) not null default ('Ortopedia'),
cpf varchar (15) unique not null,
data_de_admissao date,
constraint PK_Medico primary key(crm)
);

create table Paciente(
cpf varchar (11) unique not null,
nome varchar(40) not null,
data_nascimento date,
cidade char (30) default ('Taguatinga'),
doenca varchar (40) not null,
plano_saude varchar(40) not null default ('sus'),
constraint PK_Paciente primary key (cpf)
);

create table funcionarios(
matricula int auto_increment,
nome varchar(40) not null,
data_nascimento date not null,
data_admissao date not null,
cargo varchar(40) not null default ('Assistente Médico'),
salario decimal(8,2) not null default (1510.00),
constraint PK_Funcionario primary key (matricula)
);

create table consulta (
codigo_consulta int auto_increment,
dt_horaRIO datetime,
constraint PK_consulta primary key (codigo_consulta)
);

alter table sala add(
crm int,
constraint FK_SalaMedico foreign key(crm) references medico(crm)
);

alter table consulta add(
crm int not null,
cpf varchar(11) not null,
constraint FK_ConsultaMedico foreign key(crm) references medico (crm),
constraint FK_consultaPaciente foreign key(cpf) references paciente(cpf)
);
