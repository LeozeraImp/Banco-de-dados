create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Criando Tabela Categoria
create table tb_categoria(
id bigint auto_increment,
sabor varchar(255),
ponto varchar (255),
preco bigint,

primary key(id)
);

-- Inserindo dados na tabela
insert into tb_categoria(sabor, ponto, preco) values ("Mussarela", "Bem queimada", 25);
insert into tb_categoria(sabor, ponto, preco) values ("Calabresa", "Ao ponto", 30);
insert into tb_categoria(sabor, ponto, preco) values ("Pepperoni", "Ao ponto", 45);
insert into tb_categoria(sabor, ponto, preco) values ("Frango C/ Catupiry", "Bem Queimada", 35);
insert into tb_categoria(sabor, ponto, preco) values ("Atum", "Ao ponto", 40);

select * from tb_categoria;

use db_pizzaria_legal;

-- Criando tabela Pizza
create table tb_pizza(
id bigint auto_increment,
nome_cliente varchar(255),
Azeitona varchar(255),
queijo_extra varchar(255),
pedido_id bigint,
retirada varchar(255),

primary key(id),
foreign key (pedido_id) references tb_categoria (id)

);
-- Inserindo dados na tabela Pizza
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Sim", "Sim", 1, "Nao");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Joana", "Nao", "Nao", 2, "Nao");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Sim", "Nao", 3, "Sim");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Nao", "Sim", 4, "Nao");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Nao", "Sim", 5, "Sim");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Sim", "Sim", 4, "Sim");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Nao", "Nao", 3, "Nao");
insert into tb_pizza(nome_cliente, Azeitona, queijo_extra, pedido_id, retirada) values ("Emanuel", "Sim", "Nao", 1, "Sim");


select * from tb_pizza;

-- select para preco maior que 45
select * from tb_categoria where preco > "45";

-- Select trazendo o valor entre 29 e 60 reais
select * from tb_categoria where preco between "29" and "60";

-- Select fazendo like para produtos com a letra c
select * from tb_categoria where sabor like "%c%";

-- Select com Inner Join
select tb_categoria.sabor,tb_categoria.ponto, tb_categoria.preco, tb_pizza.nome_cliente,tb_pizza.retirada
from tb_categoria inner join tb_pizza
on tb_categoria.id = tb_pizza.pedido_id;

-- Select onde Traga uma classe especifica
select tb_categoria.sabor,tb_categoria.ponto, tb_categoria.preco, tb_pizza.nome_cliente,tb_pizza.retirada
from tb_categoria inner join tb_pizza
on tb_categoria.id = tb_pizza.pedido_id
where retirada in ("Sim");