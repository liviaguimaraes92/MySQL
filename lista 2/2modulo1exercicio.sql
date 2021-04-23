create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
editora varchar(255) not null,
categoria varchar(255) not null,
personagem varchar(255) not null,
primary key(id)

);

insert tb_classe (editora, categoria, personagem) values ("Marvel", "Ação", "Homem de ferro");
insert tb_classe (editora, categoria, personagem) values ("Marvel", "Ficção", "Thor");
insert tb_classe (editora, categoria, personagem) values ("Marvel", "Ação", "Capitao America");
insert tb_classe (editora, categoria, personagem) values ("Marvel", "Ação", "Homem Aranha");
insert tb_classe (editora, categoria, personagem) values ("Marvel", "Ficção", "Hulk");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
superPoder varchar (255) not null,
humano boolean not null,
poderAtaque int not null,
poderDefesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Homem de ferro", "Maquina de ferro", true, 5000, 5000, 1);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Thor", "Martelo", false, 5000, 4000, 2);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Capitão America", "Escudo", false, 3000, 5000, 3);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Homem aranha", "Teia", false, 2000, 1000, 4);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Hulk", "Força", false, 5000, 5000, 5);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Loki", "Força", false, 3000, 1000, 2);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Bucky", "Força", true, 1000, 200, 3);
insert tb_personagem (nome, superPoder, humano, poderAtaque, poderDefesa, classe_id) values ("Máquina de Combate", "Maquina de ferro", true, 1000, 2000, 1);

select * from tb_personagem;

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa BETWEEN 2000 AND 1000;

select * from tb_personagem where nome Like "%C%";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id;
 
 select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id where tb_classe.categoria = "Ação";