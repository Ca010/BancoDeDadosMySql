CREATE DATABASE db_rh;
use db_rh;

CREATE TABLE funcionarios(
	id_func int primary key auto_increment,
    nome varchar(255),
    data_nasc date,
    salario float,
    cargo varchar(255)
);

select * from funcionarios;

select * from funcionarios where salario > 2000;

select * from funcionarios where salario < 2000;

INSERT INTO funcionarios (nome, data_nasc, salario, cargo) VALUES ("Fabiana",'1989-10-5', "5000", "Engenheira de software");
INSERT INTO funcionarios (nome, data_nasc, salario, cargo) VALUES ("Marcos",'1979-10-10', "4000", "QA");
INSERT INTO funcionarios (nome, data_nasc, salario, cargo) VALUES ("Sabrina",'1999-10-5', "2500", "Estagiaria");
INSERT INTO funcionarios (nome, data_nasc, salario, cargo) VALUES ("Nathalia",'1980-12-5', "5000", "P.O");

DELETE FROM funcionarios WHERE id_func = 5;

UPDATE funcionarios
SET nome = "Cristina"
WHERE id_func = 1