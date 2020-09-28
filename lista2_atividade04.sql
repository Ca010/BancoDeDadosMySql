drop database db_cidade_das_carnes;
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id_categoria int auto_increment,
categoria_bovina varchar(255),
categoria_suina varchar(255),
categoria_aves varchar(255),
primary key (id_categoria),
 CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) references tb_produto (id_produto)
);

create table tb_produto(
id_produto int auto_increment,
produto_nome varchar(255),
produto_preco varchar(255),
produto_kilo float,
produto_data_compra date,
produto_ativo boolean,
primary key(id_produto)
);

insert into tb_categoria (categoria_bovina, categoria_suina, categoria_aves) values ('Patinho', 'Bacon', 'Frango a passarinho');
insert into tb_categoria (categoria_bovina, categoria_suina, categoria_aves) values ('Acem', 'Linguiça', 'Frango assado');
insert into tb_categoria (categoria_bovina, categoria_suina, categoria_aves) values ('Contra file', 'Bisteca', 'Frango caipira');
insert into tb_categoria (categoria_bovina, categoria_suina, categoria_aves) values ('Paleta', 'Pancetta', 'Galeto');
insert into tb_categoria (categoria_bovina, categoria_suina, categoria_aves) values ('Cupin', 'Pernil', 'File de frango');

insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('moida','15.50', '1.0','2020-02-02', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('desossado','10.90', '1.0','2020-03-03', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('corte file','20.50', '1.0','2020-05-05', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('temperado','25.00', '1.0','2020-01-05', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('corte em cubos','32.50', '1.0','2020-12-05', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('corte em cubos','30.90', '1.0','2020-04-06',true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('fatias','19.90', '1.0','2020-07-08', true);
insert into tb_produto (produto_nome, produto_preco, produto_kilo, produto_data_compra, produto_ativo) values ('em pedaço','70.00', '1.0','2020-03-05', true);	


select * from tb_produto where produto_preco > 50;

select * from tb_produto where produto_preco between 3 and 60;

SELECT * FROM tb_produto WHERE produto_nome LIKE '%c%';

#seleciona tudo que vem da tabela personagem e junta (inner join) com a tabela classe, nas quais(on) o id_personagem é mesmo que id_cargo

select * from tb_produto INNER JOIN tb_categoria ON 
tb_produto.id_produto = tb_categoria.id_categoria;

select * from tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.id_produto where tb_produto.produto_preco like '%20%';


select * from tb_categoria;
select * from tb_produto;



