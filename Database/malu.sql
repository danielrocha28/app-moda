CREATE DATABASE sprint1;
USE sprint1;

CREATE TABLE login (
idCadastro INT PRIMARY KEY auto_increment,
usuario VARCHAR(60) NOT NULL,
emailCadastro VARCHAR(60) NOT NULL UNIQUE,
senhaCadastro VARCHAR(60) NOT NULL
);

CREATE TABLE informacoes (
idInfo INT PRIMARY KEY auto_increment,
cnpj CHAR(14) NOT NULL UNIQUE,
contato CHAR(11) NOT NULL UNIQUE,
localEspecifico VARCHAR(10)
      CONSTRAINT chkLocal CHECK (localEspecifico IN ('Container', 'Estoque')),
);
      
CREATE TABLE medicao (
idDado INT PRIMARY KEY auto_increment,
idSensor INT NOT NULL,
temperatura DECIMAL(3,1) NOT NULL,
umidade DECIMAL(4,1) NOT NULL,
dataHora DATETIME DEFAULT current_timestamp
);

CREATE TABLE risco (
idAlerta INT PRIMARY KEY auto_increment,
idSensor INT NOT NULL,
registroExato DECIMAL(4,1) NOT NULL,
data_hora DATETIME DEFAULT current_timestamp,
descricao_problema VARCHAR(200)
);





