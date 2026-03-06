create database PI;
use PI;

CREATE TABLE Clientes (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (45) NOT NULL,
email VARCHAR (45) NOT NULL UNIQUE,
senha VARCHAR (45) NOT NULL, 
dtCriacao DATETIME DEFAULT current_timestamp
); 


CREATE TABLE Funcionarios (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (45) NOT NULL,
email VARCHAR (45) NOT NULL UNIQUE,
senha VARCHAR (45) NOT NULL, 
dtCriacao DATETIME DEFAULT current_timestamp
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
idLugar INT, 
tipoSensor VARCHAR (5)
    CONSTRAINT chkSensor CHECK (tipoSensor IN("temp.", "umi.", "temp. e umi.")),
dtInstalacao DATETIME DEFAULT current_timestamp
);

CREATE TABLE medicoes (
idMedicao INT PRIMARY KEY AUTO_INCREMENT,
idSensor INT, 
valores DECIMAL (5,2) NOT NULL, 
unidadeDeMedida VARCHAR (15) NOT NULL,
dtMedicoes DATETIME DEFAULT current_timestamp
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
INSERT INTO sensores (modeloSensor, idLugar, idSensor, dtInstalacao)
VALUES ("DHT11", 1,"temp. e umi.", "2026-08-14");

SELECT 
	modeloSensor AS "Sensor Utilizado",
    idLugar AS "Local Instalado",
    tipoSensor AS "Tipo De Sensor",
    dtInstalacao AS "Data De Instalação"
FROM sensores;

-- INSERT E SELECT TESTE DAS MEDIÇÕES 
INSERT INTO medicoes (idSensorM, valores, unidadeDeMedida)
VALUES (1, 27.5, "celsius"),
	(1, 77.10 , "porcentagem");

SELECT
	idMedicao AS "Codido Medição",
    valores AS "Valores",
    unidadeDeMedida AS "Unidade De Medida"
FROM medicoes; 

-- APENAS AMBIENTES CRÍTICOS
SELECT 
    idSensor AS "Codigo Sensor",
	valores AS "Valores",
    unidadeDeMedida AS "Unidade De Medida"
FROM medicoes WHERE umidade > 65;
    