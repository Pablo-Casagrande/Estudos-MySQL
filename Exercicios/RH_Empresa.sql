CREATE DATABASE db_empresa_rh;

USE db_empresa_rh;

CREATE TABLE Colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    departamento VARCHAR(255),
    salario DECIMAL(6 , 2 ),
    data_admissao DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('Ana Silva', 'Analista de RH', 'Recursos Humanos', 1500.00, '2022-03-15');

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('André Ferreira', 'Desenvolvedor Backend', 'TI - Desenvolvimento', 3500.00, '2022-05-10');

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('Bianca Souza', 'Desenvolvedora Frontend', 'TI - Desenvolvimento', 3400.00, '2021-09-15');

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('Caio Mendes', 'Analista de Suporte', 'TI - Suporte Técnico', 2200.00, '2023-03-01');

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('Daniela Rocha', 'Engenheira de Dados', 'TI - Dados', 1900.00, '2020-12-05');

INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao) 
VALUES ('Eduardo Lima', 'Especialista em Segurança da Informação', 'TI - Segurança', 4800.00, '2019-08-20');

SELECT * FROM Colaboradores WHERE salario < 2000;

SELECT * FROM Colaboradores WHERE salario > 2000;

UPDATE Colaboradores SET salario = 2000.00 WHERE id = 1;
