CREATE DATABASE pi;
USE pi;

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
email VARCHAR(100),
senha VARCHAR(45),
CPF CHAR (12) UNIQUE,
DTCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
 ) AUTO_INCREMENT = 1000;

INSERT INTO usuario values
(DEFAULT, 'Roberto Carvalho', 'roberto.carvalho45@yahoo.com.br', '56731402R', 45671484556, default),
(DEFAULT, 'Walquiria Novais', 'wal.novais@gmail.com', '28092007', 23457898745, default),
(DEFAULT, 'Carlos Ohara', 'ohara.carlos@outlook.com.br', '23041967', '78965429867 ' , DEFAULT),
(DEFAULT, 'Luiz cordeiro', 'lui.henrique.cordeiro@gmail.com', '30122009' ,'34565489067' , DEFAULT),
(DEFAULT,  'Nicole Aparecida', 'Aparecida.nick@gmail.com', '11032008', '12343256789' , DEFAULT);

SELECT * FROM usuario;


 