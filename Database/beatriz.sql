create database PI;

CREATE TABLE Clientes (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (45) NOT NULL,
email VARCHAR (45) NOT NULL UNIQUE,
senha VARCHAR (45) NOT NULL DEFAULT NOW(), 
dtCriacao DATETIME 
); 

CREATE TABLE lugares (
idLugar INT PRIMARY KEY AUTO_INCREMENT,
nomeLugar VARCHAR (100),
tipoLugar VARCHAR (15)
	CONSTRAINT chkTipo CHECK (tipoLugar IN ("ESTOQUE", "CONTAINER")),
descricaoLugar VARCHAR(200)
);

CREATE TABLE sensores (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
modeloSensor VARCHAR (5) 
	CONSTRAINT chkSensor CHECK (modeloSensor IN("DHT11", "LM35")),
idLocal INT, 
dtInstalacao DATETIME 
);

CREATE TABLE medicoes (
idMedicao INT PRIMARY KEY AUTO_INCREMENT,
idSensorM INT, 
temperatura DECIMAL (3,1) NOT NULL, 
umidade DECIMAL (3,1) NOT NULL
);

-- INSERTE E SELECT TESTE CLIENTES  
INSERT INTO Clientes (nomeEmpresa, email, senha, dtCriacao) 
VALUES ("Renner", "renner@outlook.com", "r0403@n", default);

SELECT 
	nomeEmpresa AS "Nome Da Empresa",
    email AS "E-MAIL",
    dtCriacao AS "Data De Cadastdro" 
FROM Clientes;

-- INSERT E SELECT TESTE LUGARES 
INSERT INTO lugares (nomeLugar, tipoLugar, descricaoLugar) 
VALUES ("Estoque Principal Renner", "Estoque", "Armazém de seda e linho");

SELECT 
	nomeLugar AS "Nome Do Local",
    tipoLugar AS "Tipo Do Local",
    descricaoLugar AS "Descrição Do Local"
FROM lugares;

-- INSERT E SELECT TESTE SENSOR 
INSERT INTO sensores (modeloSensor, idLocal, dtInstalacao)
VALUES ("DHT11", 1, "2026-08-14");

SELECT 
	modeloSensor AS "Sensor Utilizado",
    idLocal AS "Local Instalado",
    dtInstalacao AS "Data De Instalação"
FROM sensores;

-- INSERT E SELECT TESTE DAS MEDIÇÕES 
INSERT INTO medicoes (idSensorM, temperatura, umidade)
VALUES (1, 27.5, 68);

SELECT
	idMedicao AS "Codido Medição",
    temperatura AS "Temperatura Graus Celsius",
    umidade AS "Valor Umidade"
FROM medicoes; 

-- APENAS AMBIENTES CRÍTICOS
SELECT 
	temperatura AS "Temperatura Graus Celsius",
    umidade AS "Valor Umidade"
FROM medicoes WHERE umidade > 65;
    