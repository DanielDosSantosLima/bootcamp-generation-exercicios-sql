CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classes 			INT AUTO_INCREMENT,
    nome_classes		VARCHAR(50) NOT NULL,
    descricao_classes	VARCHAR(255),
    PRIMARY KEY     	(id_classes)
);

CREATE TABLE tb_personagens (
    id_personagem	INT AUTO_INCREMENT,
    nome_personagem	VARCHAR(100) NOT NULL,
    ataque	 		INT,
    defesa	 		INT,
    classe_id 		INT,
	PRIMARY KEY     (id_personagem),
    FOREIGN KEY 	(classe_id) REFERENCES tb_classes(id_classes)
);

INSERT INTO tb_classes (nome_classes, descricao_classes) VALUES
('Herói do Time Principal', 'Herói do Time Principal da história do jogo.'),
('Herói do Time Secundário', 'Herói do Time Secundário da história do jogo.'),
('Figurante', 'Pessoa que complementa a história de algum personagem.'),
('Vilão', 'Vilão da história do jogo.'),
('Aliado(a)', 'Auxilia algum personagem do bem.');

INSERT INTO tb_personagens (nome_personagem, ataque, defesa, classe_id) VALUES
('Loriel', 3500, 7500, 2),
('Pris', 2800, 4800, 2),
('Cortejo', 7000, 1500, 1),
('Ventila', 8700, 6800, 4),
('Abutre', 1900, 4200, 4),
('Bengança', 4200, 6300, 4),
('Corone', 2000, 2100, 3),
('Bombardia', 3500, 3500, 3);

-- Selecionar personagens com ataque maior que 2000
SELECT * FROM tb_personagens
WHERE ataque > 2000;

-- Selecionar personagens com defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE defesa BETWEEN 1000 AND 2000;

-- Selecionar personagens cujo nome contenha a letra "C"
SELECT * FROM tb_personagens
WHERE nome_personagem LIKE '%C%';

SELECT p.nome_personagem, p.ataque, p.defesa, c.nome_classes, c.descricao_classes
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id_classes;

SELECT p.nome_personagem, p.ataque, p.defesa, c.nome_classes, c.descricao_classes
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id_classes
WHERE c.nome_classes = 'Vilão';