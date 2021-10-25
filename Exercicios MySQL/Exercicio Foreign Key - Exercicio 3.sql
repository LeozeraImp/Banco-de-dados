create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- Criando Tabela Categoria
create table tb_categoria(
id bigint auto_increment,
nome_remedio varchar(255),
analgesico varchar (20),
antibiotico varchar(20),

primary key(id)
);
-- Inserindo atributos
insert into tb_categoria(nome_remedio, analgesico, antibiotico) values("Naldecon", "Sim", "Nao");
insert into tb_categoria(nome_remedio, analgesico, antibiotico) values("Dipirona", "Sim", "Nao");
insert into tb_categoria(nome_remedio, analgesico, antibiotico) values("Amoxicilina", "Nao", "Sim");
insert into tb_categoria(nome_remedio, analgesico, antibiotico) values("Ampicilina", "Nao", "Sim");
insert into tb_categoria(nome_remedio, analgesico, antibiotico) values("Dorflex", "Sim", "Nao");

select * from tb_categoria;

use db_farmacia_do_bem;

-- Criando tabela produto
create table tb_produto(
id bigint auto_increment,
nome_cliente varchar(255),
sexo varchar (255),
idade bigint,
tipo_id bigint,
preco decimal,

primary key(id),
foreign key (tipo_id) references tb_categoria (id)

);

-- Inserindo atributos
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Leonardo", "M", 25, 1, 5.99);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Joana", "F", 22, 2, 1.99);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Nathalia", "F", 40, 3, 9.99);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Juca", "M", 15, 4, 10);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Jhonny", "M", 29, 5, 15);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Clara", "F", 21, 4, 30);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Leticia", "F", 27, 3, 40);
insert into tb_produto(nome_cliente, sexo, idade, tipo_id, preco) values("Lais", "F", 38, 2, 20);

select * from tb_produto;

-- select para preco maior que 50
select * from tb_produto where preco > "50";

-- Select trazendo o valor entre 3 e 60 reais
select * from tb_produto where preco between "3" and "60";

-- Select fazendo like para produtos com a letra B
select * from tb_categoria where nome_remedio like "%b%";

-- Select com Inner Join
select tb_produto.nome_cliente,tb_categoria.nome_remedio,tb_produto.preco,tb_categoria.analgesico, tb_categoria.antibiotico
from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.tipo_id;

-- Select com um Produto especifico
select tb_produto.nome_cliente,tb_categoria.nome_remedio,tb_produto.preco,tb_categoria.analgesico, tb_categoria.antibiotico
from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.tipo_id
where analgesico in ("Sim");