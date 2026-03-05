CREATE DATABASE ProjetoPI;
USE ProjetoPI;

CREATE TABLE Usuário (
ID_usuario INT PRIMARY KEY auto_increment,
Username VARCHAR(30) NOT NULL UNIQUE,
Email VARCHAR(254) NOT NULL UNIQUE,
Senha VARCHAR(60) NOT NULL
);

CREATE TABLE Temperatura (
ID INT PRIMARY KEY auto_increment,
ID_sensor INT NOT NULL,
Temperatura DECIMAL(5,2) NOT NULL,
Data_hora DATETIME DEFAULT current_timestamp
);

CREATE TABLE Umidade (
ID INT PRIMARY KEY auto_increment,
ID_sensor INT NOT NULL,
Umidade DECIMAL(5,2) NOT NULL,
Data_hora DATETIME DEFAULT current_timestamp
);

CREATE TABLE Alerta (
    ID INT PRIMARY KEY auto_increment,
    Sensor VARCHAR(20) NOT NULL,
    Valor_registrado DECIMAL(5,2) NOT NULL,
    Tata_hora DATETIME DEFAULT current_timestamp,
    ID_sensor INT NOT NULL
);




