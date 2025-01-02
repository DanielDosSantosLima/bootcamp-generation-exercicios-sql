CREATE DATABASE db_sistema_de_rh;

USE db_sistema_de_rh;

CREATE TABLE funcionarios(
   id BIGINT AUTO_INCREMENT,
   nome VARCHAR(255) NOT NULL,
   cargo VARCHAR(255) NOT NULL,
   admissao DATE NOT NULL,
   salario DECIMAL NOT NULL,
   ctps INT NOT NULL,
   PRIMARY KEY(id)
);

ALTER TABLE funcionarios MODIFY salario DECIMAL(6,2);

INSERT INTO funcionarios (nome, cargo, admissao, salario, ctps)
VALUES ("Alessandra", "Professora de Inglês", "2022-07-15", "5000.50", "0083183"),
 ("Irene", "Chefe de Cozinha", "2015-01-01", "3400.75", "0084721"),
 ("Igor", "Segurança", "2023-07-15", "3000.00", "0086598"),
 ("Nayla", "Auxiliar de Inclusão", "2023-01-01", "1500.50", "0089998"),
 ("Max", "Coordenador do Ensino Médio", "2016-04-15", "8200.30", "0081247");

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE salario < 2000;

SELECT * FROM funcionarios WHERE salario > 2000;

UPDATE funcionarios SET salario = 1800.50 WHERE id = 4;

SELECT * FROM funcionarios;