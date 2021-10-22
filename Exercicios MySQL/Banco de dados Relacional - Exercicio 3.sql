use db_escola;

-- Criando a tabela 
create table tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    nome_mae varchar(255) not null,
	nome_pai varchar(255) not null,
    sexo char,
    idade bigint,
    
    primary key(id)
);

-- Os Atributos
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota ) values ("Murillo", "Alessandra", "Iran", "M", 13, 5);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Eduarda", "Alessandra", "Iran", "F", 15, 8);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Jorge", "Amalia", "Benicio", "M", 14, 8);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Joana", "Leia", "Bernardo", "F", 10, 4);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Valentina", "Jaqueline", "Joao", "F", 4, 9);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Claudete", "Osvaldo", "Casemiro", "F", 16, 5);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Marcelo", "Antonia", "Inacio", "M", 17, 6);
insert into tb_alunos (nome, nome_mae, nome_pai, sexo, idade, nota) values ("Yan", "Jane", "Caio", "M", 17, 10);

-- Adicionei o atributo Nota
alter table tb_alunos add column nota varchar (10);

select * from tb_alunos;

-- Select para ver as notas maiores e menores que 7
select * from tb_alunos where nota < 7;

select * from tb_alunos where nota > 7;

-- Update para mudanca de nota
update  tb_alunos 
set nota = 9 where id = 4;