CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
    ("Tradicional", "Sabores Clássicos"),
    ("Especial", "Sabores Especiais"),
	("Gourmet", "Sabores Sofisticados"),
	("Vegetariana e Vegana", "Sabores Vegetarianos e Veganos"),
	("Doces", "Sabores Doces");

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    ingredientes VARCHAR(255),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, valor, ingredientes, id_categoria)
VALUES 
    ("Mussarela", 35.90, "Mussarela e Tomate", 1),
    ("Portuguesa", 38.90, "Mussarela, Cebola, Ovo, Ervilha, Presunto e Palmito", 1),
	("Milho Verde", 39.90, "Mussarela e Milho Verde", 2),
	("Toscana", 45.90, "Mussarela, Calabresa e Cebola", 2),
    ("Bacalhau", 34.90, "Mussarela, Molho de tomates frescos, Orégano e Lascas de Bacalhau", 3),
    ("Abobrinha", 45.90, "Abobrinha com creme de batata", 4),
    ("Caprese vegana", 50.90, "Tomate-cereja, pesto de manjericão", 4),
    ("Banana", 43.90, "Banana, Doce de Leite e Canela", 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.nome, p.valor, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome, p.valor, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = "Doces";
