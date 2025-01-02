CREATE DATABASE sistema_notas_escolares;

USE sistema_notas_escolares;

CREATE TABLE estudantes(
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  numero INT NOT NULL,
  turma VARCHAR(255) NOT NULL,
  faltas INT NOT NULL,
  nota DECIMAL(2,2) NOT NULL,
  PRIMARY KEY(id)
)

SELECT * FROM estudantes;

INSERT INTO estudantes (nome, numero, turma, faltas, nota)
   VALUES    ('Maria', 22, '3B', 2, 8.50),
             ('Jorge', 18, '3B', 0, 7.20),
			 ('Dalila', 7, '3B', 3, 6.50),
             ('Gabriel', 10, '3B', 7, 4.70),
			 ('Wellington', 35, '3B', 4, 10.00),
             ('Bruna', 4, '3B', 2, 9.80),
             ('Ariel', 2, '3B', 0, 10.00),
             ('Silvio', 29, '3B', 5, 7.50);
            