CREATE DATABASE hygra;

USE hygra;

CREATE TABLE cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
cnpj VARCHAR(20) UNIQUE NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado VARCHAR(50) NOT NULL,
data_cadastro DATE
);

CREATE TABLE funcionario (
if_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL,
email VARCHAR(64) UNIQUE NOT NULL,
cargo VARCHAR(15),
telefone VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE ambiente (
id_ambiente INT AUTO_INCREMENT PRIMARY KEY,
nome_ambiente VARCHAR(80) NOT NULL,
localizacao VARCHAR(100) NOT NULL,
tipo VARCHAR(50)
);

CREATE TABLE sensor (
id_sensor INT AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(30) NOT NULL,
data_instalacao date,
status_sensor VARCHAR(20)
);

CREATE TABLE leitura (
id_leitura INT AUTO_INCREMENT PRIMARY KEY,
temperatura DECIMAL (5,2) NOT NULL,
umidade DECIMAL (5,2) NOT NULL,
ponto_orvalho DECIMAL (5,2) NOT NULL,
data_leitura DATETIME
);

CREATE TABLE alerta (
id_alerta INT PRIMARY KEY AUTO_INCREMENT,
tipo_alerta VARCHAR(50),
nivel_risco VARCHAR(20) NOT NULL,
descricao VARCHAR(255),
data_alerta DATE
);

CREATE TABLE exposicao (
id_exposicao INT PRIMARY KEY AUTO_INCREMENT,
data_exposicao DATETIME,
data_inicio DATE,
data_fim DATE,
umidade_media INT
);

