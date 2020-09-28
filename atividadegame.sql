create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagens(
id_personagem int not null auto_increment,
nome varchar(30),
poder_especial integer,
soco integer,
defesa integer,
primary key (id_personagem)
);

create table tb_classe(
id_cargo int not null auto_increment,
tipo_classe varchar(30),
tipo_de_arma varchar(30),
id_personagem int,
primary key (id_cargo),
constraint fk_cargo foreign key (id_personagem) references tb_personagens (id_personagem));

insert into tb_classe (tipo_classe, tipo_de_arma) values ('Lutador', 'luva de boxe');
insert into tb_classe (tipo_classe, tipo_de_arma) values ('Feiticeiro', 'poçoes magicas');
insert into tb_classe (tipo_classe, tipo_de_arma) values ('Bruxo', 'corvo assassino');
insert into tb_classe (tipo_classe, tipo_de_arma)values ('Mago', 'cajado');
insert into tb_classe (tipo_classe, tipo_de_arma) values ('Guerreiro', 'lança');


insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Sindel', '5500', '4500', '4000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Scorpion', '5000', '3500', '3000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Sonya Blade', '5000','3500', '2000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Smoke', '2500','2000', '3000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Mileena', '3550', '1500', '2000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Reptile', '2000', '1500', '1000');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Jade', '3200', '2300', '1500');
insert into tb_personagens (nome, poder_especial, soco, defesa) values ('Kung Lao', '3000', '1500', '1500');

select * from tb_classe;

select * from tb_personagens;

select * from tb_personagens where poder_especial > 2000;

select * from tb_personagens where poder_especial > 2000 && 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

#seleciona tudo que vem da tabela personagem e junta (inner join) com a tabela classe, nas quais(on) o id_personagem é mesmo que id_cargo

select * from tb_personagens INNER JOIN tb_classe ON 
tb_personagens.id_personagem = tb_classe.id_cargo;



