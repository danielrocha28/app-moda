CREATE DATABASE PI;
USE PI;

CREATE TABLE empresas (
id_empresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (30),
email VARCHAR (50),
CNPJ CHAR (14));

CREATE TABLE sensores (
id_sensor INT PRIMARY KEY AUTO_INCREMENT,
id_empresa INT,
locais CHAR (8),
dados CHAR (4));

CREATE TABLE calculo  (
id_calc INT PRIMARY KEY AUTO_INCREMENT,
dado_Temp CHAR (4),
dado_Umidade CHAR (4));