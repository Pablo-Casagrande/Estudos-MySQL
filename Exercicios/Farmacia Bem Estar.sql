CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES ('Medicamentos', 'Saúde');

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES ('Higiene', 'Cuidados Pessoais');

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES ('Cosméticos', 'Beleza');

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES ('Suplementos', 'Nutrição');

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES ('Infantil', 'Cuidados Especiais');

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao TEXT,
preco DECIMAL(6,2) NOT NULL,
validade DATE,
id_categoria BIGINT,
PRIMARY KEY(id_produto),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Paracetamol', 'Analgésico e antitérmico 750mg', 18.90, '2026-03-15', 1);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Shampoo Anticaspa', 'Controle da oleosidade', 29.90, '2025-11-01', 2);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Protetor Solar FPS 50', 'Proteção UVA/UVB', 59.90, '2026-01-20', 3);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Vitamina C', 'Suplemento vitamínico', 65.00, '2026-05-01', 4);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Pomada para assaduras', 'Uso infantil', 23.50, '2025-09-10', 5);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Colágeno em cápsulas', 'Saúde da pele e articulações', 75.00, '2026-07-01', 4);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Creme hidratante', 'Hidratação profunda para a pele', 45.90, '2025-12-12', 3);

INSERT INTO tb_produtos (nome, descricao, preco, validade, id_categoria) 
VALUES ('Sabonete Líquido', 'Higiene e frescor', 12.00, '2025-10-10', 2);


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = 'Cosméticos';

