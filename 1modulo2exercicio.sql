-- Criar um banco de dados
create database e_commerce;

-- Acessa o banco de dados
use e_commerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
marca varchar(100) not null,
codigo varchar(100) not null,
estoque bigint not null,
preco float not null,
primary key(id)

);

-- Inserir uma informação na tabela
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Cereal matinal chocolate", "Nesfit", "NES001", 700, 12.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Cereal matinal mel com amendoas", "Nesfit", "NES002", 400, 12.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Aveias em flocos", "Nestle ", "NES003", 300, 12.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Iogurte morango", "Nestle ", "NES004", 300, 1.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Chocolate ao Leite", "Nestle", "NES005", 600, 5.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Chocolate cremoso", "Moça", "MO001", 600, 6.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Doce de leite", "Moça", "MO002", 250, 5.50);
insert into tb_produtos (nome, marca, codigo, estoque, preco) values ("Leite condensado", "Moça", "MO003", 250, 6.50);

-- Buscar um produto
select * from tb_produtos;

select * from tb_produtos where estoque > 500;

select * from tb_produtos where estoque < 500;

update tb_produtos set estoque = 300 where id = 8;
