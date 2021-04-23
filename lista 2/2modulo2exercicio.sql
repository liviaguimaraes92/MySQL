create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo  varchar(255) not null,
sabor varchar(255) not null,
tamanho char not null,
primary key(id)
);

insert tb_categoria (tipo, sabor, tamanho) values ("salgado", "bauru", "G");
insert tb_categoria (tipo, sabor, tamanho) values ("salgado", "atum", "G");
insert tb_categoria (tipo, sabor, tamanho) values ("salgado", "queijo", "M");
insert tb_categoria (tipo, sabor, tamanho) values ("doce", "chocolate", "P");
insert tb_categoria (tipo, sabor, tamanho) values ("doce", "banana", "P");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
preco decimal not null,
nome varchar (255) not null,
azeitona boolean not null,
disponivel boolean not null,
borda boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (50.00, "pepperock", true, true, false , 1);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (50.00, "corn & bacon", true, true, false , 1);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (30.00, "mussarela", true, true, false , 1);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (45.00, "frango com requeijao", true, true, false , 1);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (30.00, "calabresa", false, true, false , 1);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (25.00, "chocolate", false, false, true , 4);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (25.00, "banana", false, false, false , 4);
insert tb_pizza (preco, nome, azeitona, disponivel, borda, categoria_id) values (40.00, "veggie", true, true, false , 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco BETWEEN 29 AND 60;

select * from tb_pizza where nome Like "%C%";

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;
 
 select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo = "salgado";