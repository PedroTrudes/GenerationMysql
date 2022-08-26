create database atividades_gen;
use atividades_gen;

/* 1*/
create table classe(id_classe int auto_increment primary key,
estilo varchar(50) not null,
arma_primaria varchar(50));

/* 2*/
create table tb_personagens (id_personagens bigint auto_increment primary key,
nome varchar(50)not null,
forca int,
defesa int,
id_classe_fk int not null
);

/*3 */
alter table tb_personagens
add foreign key (id_classe_fk) 
references classe(id_classe);

/*4 */
insert into classe(estilo, arma_primaria) 
values
("Paladino","Espada"),
("Mago", "Cajado mestre"),
("Cavaleiro","Escudo e Espada"),
("Lutador", "Soco inglês"),
("Arqueiro", "Arco e Flecha");

/* 5*/
insert into tb_personagens (nome,forca,defesa,id_classe_fk)
values
("Pedro", 15000, 2000, 2),
("Trudes", 5000, 5000, 1),
("Carlos", 1500, 7000, 4),
("Fernando", 1000, 2000, 4),
("Ana", 9000, 7000, 3),
("Carol", 5000, 12000, 3),
("Rodrigo", 5000, 21000, 1),
("Joaquim", 5000, 2000, 2);

/*6*/
select * from tb_personagens where forca > 2000;

/* 7*/
select * from tb_personagens where forca <= 2000 and forca >= 1000;

/*8*/
select * from tb_personagens where nome like '%c%';

/*9*/
select * from tb_personagens
inner join classe 
on tb_personagens.id_classe_fk = classe.id_classe;

/*10*/
select * from tb_personagens
inner join classe 
on tb_personagens.id_classe_fk = classe.id_classe where estilo like '%Mago%';
