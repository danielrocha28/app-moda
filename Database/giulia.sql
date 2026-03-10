
create database sensorDHT11;
use sensorDHT11; 

create table usuario (
idUsuario INT primary key auto_increment,
nome VARCHAR(50) NOT NULL,
email VARCHAR(40) NOT NULL UNIQUE,
senha VARCHAR(20) NOT NULL ,
cnpj VARCHAR(18) NOT NULL UNIQUE,
dtCriacao datetime
);

CREATE TABLE ambiente (
    id_ambiente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(150),
    descricao VARCHAR(200)
);

CREATE TABLE sensor (
    id_sensor INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL, CONSTRAINT chkTipo CHECK (modelo IN('Temperatura', 'Umidade')),
    modelo VARCHAR(20) NOT NULL, CONSTRAINT chkModelo CHECK (modelo IN('DHT11', 'LM35')),
    data_instalacao DATE,
    status VARCHAR(20) DEFAULT 'ativo'
);

INSERT INTO usuario (nome, email, senha, cnpj, dtCriacao) VALUES
('Maria Silva', 'maria@empresa.com', '123456', '12.345.678/0001-01', '2026-03-01 10:15:00'),
('João Pereira', 'joao@empresa.com', 'abc123', '23.456.789/0001-02', '2026-03-02 11:30:00'),
('Carla Souza', 'carla@empresa.com', 'senha789', '34.567.890/0001-03', '2026-03-03 09:45:00'),
('Lucas Almeida', 'lucas@empresa.com', 'lucas321', '45.678.901/0001-04', '2026-03-04 14:20:00'),
('Ana Costa', 'ana@empresa.com', 'ana456', '56.789.012/0001-05', '2026-03-05 16:10:00');

INSERT INTO ambiente (nome, localizacao, descricao) VALUES
('Estoque Principal', 'São Paulo - SP', 'Armazém central de tecidos'),
('Depósito Norte', 'Campinas - SP', 'Área de armazenamento secundária'),
('Container 01', 'Porto de Santos', 'Container de transporte marítimo'),
('Container 02', 'São Paulo - SP', 'Container de transporte marítimo'),
('Estoque Secundario', 'Guarulhos - SP', 'Centro de distribuição');

INSERT INTO sensor (tipo, modelo, data_instalacao, status) VALUES
('Temperatura', 'DHT11', '2026-02-10', 'ativo'),
('Umidade', 'DHT11', '2026-02-11', 'ativo'),
('Temperatura', 'LM35', '2026-02-12', 'ativo'),
('Temperatura', 'DHT11', '2026-02-15', 'manutencao'),
('Umidade', 'DHT11', '2026-02-18', 'ativo');
