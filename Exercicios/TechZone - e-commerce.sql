CREATE DATABASE db_TechZone;

USE db_TechZone;

CREATE TABLE Produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    categoria VARCHAR(255),
    preco DECIMAL(8,2),
    estoque INT,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Placa de Vídeo RTX 3060', 'Hardware', 2500.00, 8, '2025-05-10');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Processador AMD Ryzen 5 5500', 'Hardware', 1200.00, 10, '2025-04-18');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Memória RAM DDR4 16GB', 'Hardware', 450.00, 25, '2025-03-05');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('SSD NVMe 1TB Kingston', 'Armazenamento', 620.00, 15, '2025-01-22');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Gabinete Gamer Mid Tower', 'Gabinetes', 350.00, 12, '2025-06-01');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Fonte Corsair 650W 80 Plus Bronze', 'Hardware', 480.00, 20, '2025-03-14');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Mouse Logitech GPRO SUPERLIGHT', 'Periféricos', 860.00, 30, '2025-02-28');

INSERT INTO Produtos (nome, categoria, preco, estoque, data_cadastro) 
VALUES ('Monitor Gamer 27" AOC 144Hz', 'Monitores', 1450.00, 7, '2025-04-30');

SELECT * FROM Produtos WHERE preco > 500;

SELECT * FROM Produtos WHERE preco < 500;

UPDATE Produtos SET estoque = 28 WHERE id = 7;

