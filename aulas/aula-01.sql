create database aulas_gen_forenkey;

use aulas_gen_forenkey;

create table tb_categoria (
id bigint primary key auto_increment,
descricao varchar(80) not null,
tamanho char(3) not null,
borda_recheada boolean
);

create table tb_pizzas(
id_pizza bigint primary key auto_increment,
sabor varchar(80) not null,
preco decimal(6,2) not null,
massa varchar (200) not null,
quantidade int not null,
categoria_id_fk bigint
);

insert into tb_categoria(descricao, tamanho, borda_recheada) value("tstes", "m", true);
insert into tb_pizzas(sabor, preco, massa, quantidade, categoria_id_fk) value("queijo", 100, "leve", 2, 1);
alter table tb_pizzas ADD FOREIGN KEY (categoria_id_fk) REFERENCES tb_categoria(id);

select * from tb_pizzas;

drop table tb_pizzas;