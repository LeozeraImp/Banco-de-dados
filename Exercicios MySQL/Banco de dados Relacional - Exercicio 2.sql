use db_ecommerce;

-- Criando a tabela
create table tb_produtos(
	id bigint auto_increment,
	nome varchar (255) not null,
    tipo varchar(255) not null,
    preco decimal(10.5) not null,
    data_validade varchar(255),
    cor varchar(255),
    
    primary key (id)
    
);

-- Criando os atributos
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Bolacha", "Alimento", 3.99, "25/12/2021", "Preto"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Salgadinho Fofura", "Alimento", 2.99, "25/12/2021", "Amarelo"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Pacoca", "Alimento", 15.00, "25/12/2021", "Cinza"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Suco Tang", "Bebida", 1.99, "25/12/2021", "Vermelho"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Vodka", "Bebida", 20.00, "25/12/2021", "Tansparente"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Playstation 5", "Games", 4300, "Nao existe", "Branco"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Iphone XR", "Eletronico", 4000, "Nao existe", "Preto"); 
insert into tb_produtos(nome, tipo, preco, data_validade, cor) values ("Chinelo", "Vestimento", 20, "Nao existe", "Azul"); 

-- Feito os selects
select * from tb_produtos;

select * from tb_produtos where preco < 500;

select * from tb_produtos where preco > 500;

-- update para atualizar o preco 
update  tb_produtos 
set preco = 5 where id = 1;

