USE db_rh;

-- Criando a Tabela
create table tb_funcionaries(
	id bigint auto_increment,
    nome varchar(255),
    salario decimal (10.5),
    sexo char,
    codigo_funcionario varchar(10),
    cpf varchar(11),
    
    primary key (id)

);

-- Colocando os atributos
insert into tb_funcionaries( nome, salario, sexo, codigo_funcionario, cpf) values ("Leonardo", 2000, "M", "1234567890", "45236613833");
insert into tb_funcionaries( nome, salario, sexo, codigo_funcionario, cpf) values ("Felipe", 3000, "M", "0987654321", "23678651987");
insert into tb_funcionaries( nome, salario, sexo, codigo_funcionario, cpf) values ("Sara", 4000, "F", "2345678901", "19865782912");
insert into tb_funcionaries( nome, salario, sexo, codigo_funcionario, cpf) values ("Jonatan", 5000, "M", "3456789012", "16528304876");
insert into tb_funcionaries( nome, salario, sexo, codigo_funcionario, cpf) values ("Nathalia", 6000, "F", "5678901234", "48765298731");

-- indicando os selects
select *from tb_funcionaries;

select * from tb_funcionaries where salario <= 2000;

select * from tb_funcionaries where salario > 2000;

-- Update para alterar o salario
update  tb_funcionaries 
set salario = 1500 where id = 4;
