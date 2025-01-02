CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id_categoria          INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria        VARCHAR(100) NOT NULL,
    descricao_categoria   VARCHAR(255) NOT NULL
);

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id_produto            INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto          VARCHAR(100) NOT NULL,
    valor                 DECIMAL(10, 2) NOT NULL,
    fabricante            VARCHAR(100) NOT NULL,
    validade              DATE NOT NULL,
    id_categoria          INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 novas categorias na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Dermocosméticos', 'Produtos que combinam dermatologia e estética.'),
('Infantil', 'Produtos para cuidados e saúde de crianças.'),
('Equipamentos Médicos', 'Equipamentos e acessórios para saúde.'),
('Produtos Fitness', 'Produtos voltados para esportistas e atletas.'),
('Aromaterapia', 'Produtos voltados para relaxamento e bem-estar.');

-- Inserção de 8 novos produtos na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, valor, fabricante, validade, id_categoria) VALUES
('Protetor Solar FPS 50', 75.00, 'DermaCare', '2025-07-01', 1),
('Loção Hidratante Infantil', 25.00, 'BabyCare', '2024-10-12', 2),
('Termômetro Digital', 40.00, 'MedTech', '2026-01-01', 3),
('Halteres 5kg', 120.00, 'FitPro', '2030-12-31', 4),
('Óleo de Eucalipto', 30.00, 'AromaPlus', '2024-09-15', 5),
('Colônia Infantil Lavanda', 20.00, 'SweetBaby', '2024-12-05', 2),
('Nebulizador Compacto', 150.00, 'HealthEquip', '2027-04-01', 3),
('Barra de Proteína', 15.00, 'NutriFit', '2025-03-01', 4);

-- SELECT para retornar todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- SELECT para retornar todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- SELECT utilizando INNER JOIN para unir os dados das tabelas tb_produtos e tb_categorias
SELECT p.id_produto, p.nome_produto, p.valor, p.fabricante, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

-- SELECT utilizando INNER JOIN, trazendo apenas os produtos que pertencem a categoria Cosméticos.
SELECT p.id_produto, p.nome_produto, p.valor, p.fabricante, p.validade, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Dermocosméticos';