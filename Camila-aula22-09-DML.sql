create database db_deletar;
use db_deletar;

CREATE TABLE consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

insert into consumidores (nome) values
("Camila"),
("Nathalia");

SELECT * FROM consumidores;

DELETE FROM consumidores WHERE id = 1;

SELECT * FROM consumidores;

#ele apaga os dados mas nao a tabela
TRUNCATE consumidores;
