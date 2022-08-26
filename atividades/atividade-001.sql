create database atividade_join2;
use atividade_join2;

create table tb_produtos(id_produtos bigint primary key auto_increment,
nome_produto varchar(50) not null,
descricao_produto varchar(50),
preco decimal not null,
peso decimal not null,
id_categoria_fk bigint not null
);

alter table tb_produtos
add foreign key (id_categoria_fk) references tb_categoria(id_categoria);

create table tb_categoria (
id_categoria bigint primary key auto_increment,
tarja varchar(22) not null,
tipo varchar(10) not null);

insert into tb_categoria (tarja,tipo) values("preta","comprimido"),
("branca","gotas"),
("vermelha","gotas"),
("preta","gotas"),
("preta","injetavel");

insert into tb_produtos(nome_produto,descricao_produto,preco,peso,id_categoria_fk)
values("Morfina", "ajuda em dores", 80 , 2, 1),
("dipirona", "ajuda em dores", 10 , 2, 2),
("dorflex", "ajuda em dores", 10 , 1, 2),
("Metadona", "ajuda em dores", 180 , 7, 1),
("Codeína", "ajuda em dores", 580 , 5, 4),
("Alprazolam", "ajuda em dores", 820 , 2, 1),
("Clordiazepóxido", "ajuda em dores", 180 , 2, 1),
("Zolpidem", "ajuda em dores", 80 , 2, 3);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco > 5 and preco < 60;

select * from tb_produtos where nome_produto like "%C%";

select * from tb_produtos inner join tb_categoria
on tb_produtos.id_categoria_fk = tb_categoria.id_categoria;

select * from tb_produtos inner join tb_categoria
on tb_produtos.id_categoria_fk = tb_categoria.id_categoria 
where tb_categoria.tarja like "%branca%";


