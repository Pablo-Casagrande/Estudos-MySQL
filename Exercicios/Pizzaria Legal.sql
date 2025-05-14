CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT,
estilo_sabor VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (estilo_sabor, tipo) 
VALUES ('Carnes', 'Salgada');

INSERT INTO tb_categorias (estilo_sabor, tipo) 
VALUES ('Queijos', 'Salgada');

INSERT INTO tb_categorias (estilo_sabor, tipo) 
VALUES ('Doces', 'Doce');

INSERT INTO tb_categorias (estilo_sabor, tipo) 
VALUES ('Vegetariana', 'Salgada');

INSERT INTO tb_categorias (estilo_sabor, tipo) 
VALUES ('Premium', 'Salgada');

CREATE TABLE tb_pizzas (
id_pizza BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao TEXT,
preco DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(255),
id_categoria BIGINT,
PRIMARY KEY(id_pizza),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Calabresa', 'Molho, mussarela, calabresa e cebola', 45.00, 'Média', 1);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Margherita', 'Molho, mussarela, tomate e manjericão', 42.00, 'Média', 4);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Quatro Queijos', 'Molho, mussarela, provolone, gorgonzola, parmesão', 55.00, 'Grande', 2);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Chocolate', 'Chocolate ao leite e granulado', 50.00, 'Média', 3);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Romeu e Julieta', 'Goiabada com queijo', 48.00, 'Pequena', 3);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Vegana Verde', 'Molho, vegetais, queijo vegano', 53.00, 'Média', 4);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Portuguesa', 'Molho, mussarela, presunto, ovos, ervilha', 47.00, 'Grande', 1);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) 
VALUES ('Pepperoni', 'Molho, mussarela, pepperoni', 60.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.tipo = 'Doce';
