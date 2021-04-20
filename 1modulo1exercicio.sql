create database db_RH_empresa;

-- Acessa o banco de dados
use db_RH_empresa;

create table tb_produtos(
id bigint auto_increment,
nome varchar (100) not null,
sobrenome varchar (100) not null,
salario float not null,
profissao varchar (100) not null,
ativo boolean not null,
primary key(id)

);

rename table tb_produtos to tb_funcionarios;

-- Inserir uma informação na tabela
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("livia", "lima", 2500.00, "desenvolvedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("maria", "bazani", 2200.00, "vendedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("bruna", "bonifacio", 2000.00, "desenvolvedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("camilla", "amorim", 2000.00, "desenvolvedora", true);
insert into tb_produtos (nome, sobrenome, salario, profissao, ativo) values ("joao", "guimaraes", 3000.00, "vendedor", false);


-- Buscar um produto
select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 1500.00 where id = 5;