create database db_escola_generation;

use db_escola_generation;

create table db_alunes (
id_alune bigint primary key auto_increment,
nome varchar(120) not null,
data_nascimento date,
turma int not null,
nota decimal(4,2)
)