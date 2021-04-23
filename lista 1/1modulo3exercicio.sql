-- Criar um banco de dados
create database registro_escolar;

-- Acessa o banco de dados
use registro_escolar;

create table tb_atributos(
id bigint auto_increment,
nome varchar(100) not null,
idade bigint not null,
matricula varchar(100) not null,
media varchar(100) not null,
aprovado boolean not null,
primary key(id)

);

-- Inserir uma informação na tabela
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Livia", 28, "EDV123", 10, true);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Maria", 26, "EDV124", 9, true);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Bruna", 24, "EDV125", 10, true);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Camila", 27, "EDV126", 6, false);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Amanda", 28, "EDV127", 8, true);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Carol", 24, "EDV128", 4, false);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Larissa", 26, "EDV129", 5, false);
insert into tb_atributos (nome, idade, matricula, media, aprovado) values ("Gabriela", 27, "EDV130", 4, false);

-- Buscar um produto
select * from tb_atributos;

select * from tb_atributos where media > 7;

select * from tb_atributos where media < 7;

update tb_atributoss set media = 6 where id = 6;
