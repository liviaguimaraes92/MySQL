create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
uso varchar(255) not null,
cliente boolean not null,
primary key(id)
);

insert tb_categoria (tipo, uso, cliente) values ("casa", "hidraulica", true);
insert tb_categoria (tipo, uso, cliente) values ("casa", "hidraulica", false);
insert tb_categoria (tipo, uso, cliente) values ("apartamento", "eletrico", true);
insert tb_categoria (tipo, uso, cliente) values ("apartamento", "eletrico", false);
insert tb_categoria (tipo, uso, cliente) values ("apartamento", "eletrico", true);

create table tb_produto(
id bigint auto_increment,
descricao varchar (255) not null,
valor decimal not null,
estoque int not null,
tamanho decimal not null,
peso int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("torneira", 30.00, 50, 10, 50, 1);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("pia", 80.00, 10, 30, 100, 3);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("vaso", 100.00, 20, 50, 50, 1);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("chuveiro", 45.00, 15, 15, 5, 1);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("box", 70.00, 50, 80, 60, 3);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("lampada", 20.00, 8, 10, 3, 3);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("luminaria", 40.00, 15, 10, 5, 3);
insert tb_produto (descricao, valor, estoque, tamanho, peso, categoria_id) values ("piso", 10.00, 50, 25, 2, 3);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor BETWEEN 3 AND 60;

select * from tb_produto where descricao Like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;
 
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where tb_categoria.uso = "eletrico";