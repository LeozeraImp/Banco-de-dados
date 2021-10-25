create database db_generation_game_online;

use db_generation_game_online;

-- criando a tabela classe
create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
arma varchar(255) not null,
item_inicio varchar(255) not null,

primary key (id)
);

-- Inserindo atributos
insert into tb_classe (nome, arma, item_inicio) values ("Guerreiro", "Espada e Escudo", "Pocao de Vida");
insert into tb_classe (nome, arma, item_inicio) values ("Arqueiro", "Arco Longo", "Pedras de distracao");
insert into tb_classe (nome, arma, item_inicio) values ("Mago", "Cajado", "Pocao de Mana");
insert into tb_classe (nome, arma, item_inicio) values ("Paladino", "Martelo", "Conjuracao de Aliado Divino");
insert into tb_classe (nome, arma, item_inicio) values ("Orc", "Tacape de Madeira", "Armadura de Espinhos");

select * from tb_classe;

use db_generation_game_online;

-- Criando classe personagem
create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
sexo char not null,
classe_id bigint,
vida bigint,
defesa bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Inserindo atributos
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Jorge Wagner", "M", 1, 2000, 2000, 3000);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Pelegolas", "M", 2, 1000, 900, 4000);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Escarlet", "F", 3, 3000, 1000, 1500);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Samantha","F", 4, 3000, 3000, 2500);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Mangao", "M", 5, 5000, 3000, 5000);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("ElMago","M", 3, 2500, 1500, 1500);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Lisa Machadao", "F", 5, 5500, 2500, 5000);
insert into tb_personagem (nome, sexo, classe_id, vida, defesa, ataque) values ("Marta Gloriosa", "F", 4, 4000, 4000,2500);

select * from tb_personagem;

-- Update para inserir o Ataque
update tb_personagem set ataque = 5000 where classe_id = 5;

-- Select com ataque maior que 2000
select * from tb_personagem where ataque > 2000;

-- Select defesa entre 1000 e 2000
select * from tb_personagem where defesa between "1000" and "2000";

-- Select nome com a Letra C
select * from tb_personagem where nome like "%c%";

-- Select com Inner Join
select tb_personagem.nome,tb_classe.nome_classe, tb_classe.arma, tb_classe.item_inicio, tb_personagem.vida, tb_personagem.defesa, tb_personagem.ataque
from tb_classe inner join tb_personagem
on tb_classe.id = tb_personagem.classe_id;


-- Select onde Traga uma classe especifica
select tb_personagem.nome,tb_classe.nome_classe, tb_classe.arma, tb_classe.item_inicio, tb_personagem.vida, tb_personagem.defesa, tb_personagem.ataque
from tb_classe inner join tb_personagem
on tb_classe.id = tb_personagem.classe_id
where nome_classe in ("Orc");

