create database db_ecommerce;
use db_ecommerce;

create table produtos(
id_prod int primary key auto_increment,
nome varchar(45),
marca varchar (45),
valor float,
dimensao varchar(30),
categoria varchar(45),
peso varchar(30),
descricao varchar(255)
);

select* from produtos;

select * from funcionarios where valor > 500;

select * from funcionarios where valor < 500;

insert into produtos(nome, marca,valor,dimensao,categoria, peso,descricao) values ("Celular","nokia", "900","5x9", "Eletronico", "5g", "Celular de ultima geração da nokia, modelo com 4 cameras de alta resolucao");
insert into produtos(nome, marca,valor,dimensao,categoria, peso,descricao) values ("Batedeira","arno", "850", "10x9", "Eletrodomestico", "1k", "Batedeira com 5 intensidades e funcao para quebrar gelo");
insert into produtos(nome, marca,valor,dimensao,categoria, peso,descricao) values ("Toalha","seca bem", "50", "30x40", "cama mesa banho", "60g", "toalha para banho com toque macio");
insert into produtos(nome, marca,valor,dimensao,categoria, peso,descricao) values ("Jogo de copos","sua casa", "100", "12x10", "Utensilios domesticos", "5g", "Copos modernos, com vidro de qualidade");


UPDATE produtos
SET categoria = "cama, mesa e banho"
WHERE id_prod = 3

