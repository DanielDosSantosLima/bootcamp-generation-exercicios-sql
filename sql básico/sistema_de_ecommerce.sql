CREATE DATABASE db_sistema_de_ecommerce;

USE db_sistema_de_ecommerce;

CREATE TABLE produtos(
   id BIGINT AUTO_INCREMENT,
   nome VARCHAR(255) NOT NULL,
   marca VARCHAR(255) NOT NULL,
   preco DECIMAL(6,2) NOT NULL,
   cor VARCHAR(255) NOT NULL,
   tamanho VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
   )

SELECT * FROM produtos;

INSERT INTO produtos (nome, marca, preco, cor, tamanho)
 VALUES ("Tenis", "Adidas", 2000.50, "azul", "38"),
		("Camiseta", "Nike", 254.45, "preto", "M"),
        ("Shorts", "Rednose", 120.00, "azul", "P"),
        ("Bolsa", "Prada", 5500.50, "rosa", "Único"),
        ("Boné", "Puma", 250.00, "verde", "Único");

SELECT * FROM produtos;

INSERT INTO produtos (nome, marca, preco, cor, tamanho)
   VALUES ("Vestido", "Antix", 650.70, "florido", "M"),
          ("Top", "Rock Fit", 180.00, "pink", "G"),
          ("Sandália", "Morena Rosa", 325.60, "nude", "35");
          
SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

