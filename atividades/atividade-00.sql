/* Criando o database */
create database rh_gen;
use rh_gen;
/* Criando a tabela colaboradores */
create table colaboradores (
id_colaborador bigint primary key auto_increment,
nome_colaborador varchar(50) not null,
salario float not null,
cargo varchar(50) not null,
rg int not null
);


/* Inserindo os dados na tabela */
insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Pedro", 5000, "DevFullStack", 4570283);

insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Carlos",2000, "Front-end", 1111111);

insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Julia", 7000, "Dev Java", 4444444);

insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Flavia", 3000, "QA", 8888888);

insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Afonso", 3000, "DevOPS", 6666666);

insert into colaboradores (nome_colaborador, salario, cargo,rg)values ("Steve", 1000, "DevOPS estagio", 7842588);

/*Vendo todos os dados da tabela*/
select * from colaboradores;

/*Selecionado apenas quem recebe 2000 ou mais*/
select * from colaboradores where salario >= 2000;

/* Selecionando quem recebe menos de 2000 */
select * from colaboradores where salario < 2000;

/*Atualizando os dados do colaborador com id 6 */
update colaboradores set salario = 1500 where id_colaborador = 6;

/*Deletando um colaborador que tenha o id = 6*/
delete from colaboradores where id_colaborador = 6;
