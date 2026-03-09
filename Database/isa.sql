CREATE DATABASE sprint1;
USE sprint1;

CREATE TABLE entrada (
id_entrada INT PRIMARY KEY auto_increment,
nome varchar (40),
email varchar(70),
senha char(8));

CREATE TABLE clientes (
id_clientes INT PRIMARY KEY auto_increment,
id_entrada int,
nome varchar (40),
telefone INT UNIQUE,
cnpj decimal (14));

CREATE TABLE sensores (
id_sensores INT PRIMARY KEY auto_increment,
lugar varchar(8),
dados char(4));

INSERT INTO entrada (nome, email, senha) values 
('Maria das flores', 'maryflowers@yahoo.com','Mary5246'),
('Violeta Schwazznegger', 'violinhaschwazz@gmail.com', 'Flor2894'),
('Daisy Jones', 'daisyrockstar@outlook.com', '45679231');

SELECT * FROM entrada;

INSERT INTO cliente (id_entrada, nome, telefone, cnpj) values 
(1, 'Maria das flores', 1197447803, 06283686000151),
(2, 'Violeta Schwazznegger', 1199802862, 74389984000180),
(3, 'Daisy Jones', 1168409352, 03989606000190);

INSERT INTO sensores (lugar, dados) values
('contâiner', '38°C'),
('contâiner', '45%'),
('estoque', '25°C'),
('estoque', '37%');

