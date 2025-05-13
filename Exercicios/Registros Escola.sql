CREATE DATABASE db_registros_escola;

USE db_registros_escola;

CREATE TABLE Estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    matricula VARCHAR(255),
    serie VARCHAR(255),
    nota_final DECIMAL(4,2),
    data_nascimento DATE NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Alice Santos', '2023001', '8º Ano', 8.5, '2010-04-15');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Bruno Lima', '2023002', '9º Ano', 6.8, '2009-08-22');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Carla Mendes', '2023003', '7º Ano', 7.2, '2011-11-03');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Diego Ferreira', '2023004', '8º Ano', 5.9, '2010-01-12');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Eduarda Silva', '2023005', '6º Ano', 9.0, '2012-06-30');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Felipe Martins', '2023006', '9º Ano', 6.5, '2009-02-27');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Gabriela Rocha', '2023007', '7º Ano', 7.8, '2011-07-19');

INSERT INTO Estudantes (nome, matricula, serie, nota_final, data_nascimento) 
VALUES ('Henrique Alves', '2023008', '6º Ano', 4.7, '2012-10-09');

SELECT * FROM Estudantes WHERE nota_final > 7.0;

SELECT * FROM Estudantes WHERE nota_final < 7.0;

UPDATE Estudantes SET nota_final = 7.1 WHERE id = 8;
