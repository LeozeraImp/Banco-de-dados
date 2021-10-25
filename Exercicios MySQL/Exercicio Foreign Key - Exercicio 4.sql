create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- Criando a tabela
create table tb_categoria(
id bigint auto_increment,
tipo_da_carne varchar(255),
carne_branca varchar(255),
carne_vermelha varchar(255),

primary key (id)
);

-- Atributos da Tabela
insert into tb_categoria(tipo_da_carne, carne_branca, carne_vermelha) values("Carne de primeira", "Sim", "Nao");
insert into tb_categoria(tipo_da_carne, carne_branca, carne_vermelha) values("Carne de segunda", "Sim", "Nao");
insert into tb_categoria(tipo_da_carne, carne_branca, carne_vermelha) values("Carne lavada", "Nao", "Sim");
insert into tb_categoria(tipo_da_carne, carne_branca, carne_vermelha) values("Carne sem lavar", "Nao", "Sim");
insert into tb_categoria(tipo_da_carne, carne_branca, carne_vermelha) values("Empacotados", "Nao", "Sim");

-- Criando a tabela produtos
create table tb_produtos(
id bigint auto_increment,
nome_da_carne varchar(255),
preco decimal,
tipo_de_corte varchar(255),
carne_de_primeira varchar (255),
carne_desejada_id bigint,

primary key (id),
foreign key (carne_desejada_id) references tb_categoria (id)
);

-- Atributos da tabela
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Robalo", 40, "Bife", "Sim", 1);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Frangolino", 25.99, "Em cubos", "Nao", 2);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Nugguets", 15.99, "Congelado", "Sim", 5);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Baiacu", 45.99, "Moido", "Sim", 4);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Lagarto", 35, "Bife", "Sim", 2);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Coxao Duro", 35, "Moido", "Sim", 1);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Coxao Mole", 40, "Em cubos", "Nao", 3);
insert into tb_produtos(nome_da_carne, preco, tipo_de_corte, carne_de_primeira, carne_desejada_id) values("Picanha", 55, "Bife", "Nao", 4);

-- select para preco maior que 50
select * from tb_produtos where preco > "50";

-- Select trazendo o valor entre 3 e 60 reais
select * from tb_produtos where preco between "3" and "60";

-- Select nome com a Letra C
select * from tb_produtos where nome_da_carne like "%c%";

-- Select com Inner Join
select tb_produtos.nome_da_carne,tb_produtos.preco,tb_produtos.tipo_de_corte, tb_categoria.tipo_da_carne
from tb_categoria inner join tb_produtos
on tb_categoria.id = tb_produtos.carne_desejada_id;

-- Select com Inner Join expecifico para alguma categoria
select tb_produtos.nome_da_carne,tb_produtos.preco,tb_produtos.tipo_de_corte, tb_categoria.tipo_da_carne
from tb_categoria inner join tb_produtos
on tb_categoria.id = tb_produtos.carne_desejada_id
where tipo_da_carne in("Carne de primeira");



