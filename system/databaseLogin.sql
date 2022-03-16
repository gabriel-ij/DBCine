CREATE SCHEMA LOGIN;
USE LOGIN;

CREATE TABLE USUARIOS (
	Id int auto_increment PRIMARY KEY,
    Nome varchar(45),
    Login varchar(45),
    Senha varchar(40)
);

INSERT INTO USUARIOS (Nome, Login, Senha) VALUES ('Admin', 'admin', sha1(123456));
INSERT INTO USUARIOS (Nome, Login, Senha) VALUES ('Keanu Reeves', 'Keanu', sha1('senha'));
    
    
SELECT * FROM USUARIOS;
