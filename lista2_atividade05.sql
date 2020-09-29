create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_produto(
id_produto int auto_increment,
produto_nome varchar(255),
produto_preco float,
produto_material varchar(255),
produto_peso float,
produto_marca varchar(255),
produto_qtd varchar(11),
primary key (id_produto)
);

create table tb_categoria(
id_categoria int auto_increment,
categoria_piso varchar(255),
categoria_eletrica varchar(255),
categoria_climatizacao varchar(255),
id_produto int,
primary key(id_categoria),
CONSTRAINT	fk_categoria foreign key (id_categoria) references tb_produto(id_produto)
);

select * from tb_produto;
select * from tb_categoria;

select * from tb_produto where produto_preco > 50;

select * from tb_produto where produto_preco between 3 and 60;

select * from tb_produto where produto_nome like '%c%';

select * from tb_produto join tb_categoria on tb_categoria.id_categoria = tb_produto.id_produto;

SELECT produto_nome FROM tb_produto WHERE produto_nome LIKE '%%';