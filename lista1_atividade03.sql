create database db_escola;
use db_escola;

create table tb_aluno(
id_aluno int primary key auto_increment,
ra_aluno int(30),
nome varchar (255),
data_nasc date,
nome_mae varchar(255),
endereco varchar(255),
telefone varchar(45),
nota float
);

select * from tb_aluno;

insert into tb_aluno(ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202015, "Geovana Santos", '1998-10-10', "Cristina Santos", "Rua das Flores, 356 apto 3", "(11)911112222", 5);
insert into tb_aluno(ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202017, "Julia Ferreira", '1997-12-1', "Isadora Ferreira", "Rua Clotilde, 1500 apto 3", "(11)989563214", 8);
insert into tb_aluno(ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202015, "Fernando Peres", '1995-10-3', "Paola Peres", "Rua Caatinga, 700 ", "(11)956238974", 8);
insert into tb_aluno (ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202019, "Yasmin Alves", '2006-04-10', "Rouze Alves", "Rua Rodovaho, 333 ", "(11)956854623", 10);
insert into tb_aluno(ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202011, "Pedro Justino", '1998-2-2', "Fabiola Justino", "Av. Conceição, 1200 apto 4", "(12)988336644", 4);
insert into tb_aluno (ra_aluno,nome, data_nasc, nome_mae, endereco, telefone, nota) values (20202013, "Mabel Silva", '2000-10-10', "Sandra Cristina Silva", "Rua dos anjos, 400", "(11)956237895", 10);

select * from tb_aluno where nota > 7;

select * from tb_aluno where nota < 7;

truncate tb_aluno;