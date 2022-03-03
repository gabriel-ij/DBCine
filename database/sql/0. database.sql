-- CRIAÇÃO DO BANCO

CREATE SCHEMA dbcine;
USE dbcine;

CREATE TABLE CINEMA (
	CinemaId varchar(20) PRIMARY KEY,
    NomeCinema varchar(55),
    Telefone varchar(20),
    Pais varchar(55),
    Estado varchar(55),
    Cidade varchar(55),
    Bairro varchar(55),
    Cep varchar(9),
    Email varchar(55)
);

CREATE TABLE SALA (
	SalaId varchar(5) PRIMARY KEY,
    NumeroSala int,
    Capacidade int,
    Tela3D boolean,
    CinemaId varchar(20),
    FOREIGN KEY (CinemaId) REFERENCES CINEMA(CinemaId)
);

CREATE TABLE GENERO (
	GeneroId int PRIMARY KEY AUTO_INCREMENT,
    Genero varchar(55) UNIQUE
);

CREATE TABLE FILME (
	FilmeId int PRIMARY KEY AUTO_INCREMENT,
    Titulo varchar(55) UNIQUE,
    Genero varchar(55),
    Duracao int,
    AnoLancamento int,
    Elenco text,
    Sinopse text,
    FaixaEtaria varchar(15),
    PariodoInicio date,
    PeriodoFim date,
    FOREIGN KEY (Genero) REFERENCES GENERO(Genero)
);

CREATE TABLE SESSAO (
	SessaoId int PRIMARY KEY AUTO_INCREMENT,
    Horario datetime,
    Titulo varchar(55),
    CinemaId varchar(20),
    SalaId varchar(5),
    FOREIGN KEY (CinemaId) REFERENCES CINEMA(CinemaId),
    FOREIGN KEY (Titulo) REFERENCES FILME(Titulo),
    FOREIGN KEY (SalaId) REFERENCES SALA(SalaId)
);

CREATE TABLE BILHETERIA (
	PrecoId int PRIMARY KEY AUTO_INCREMENT,
    DiaSemana varchar(55),
    PrecoIngresso float(4,2),
    SalaId varchar(5),
    CinemaId varchar(20),
    FOREIGN KEY (SalaId) REFERENCES SALA(SalaId),
    FOREIGN KEY (CinemaId) REFERENCES CINEMA(CinemaId)
);

CREATE TABLE CLIENTE (
	ClienteId varchar(14) PRIMARY KEY,
    NomeCliente varchar(55),
    DataNasc date,
    DataCadastro date,
    Email varchar(55),
    Telefone varchar(20)
);

CREATE TABLE INGRESSO (
	IngressoId int PRIMARY KEY AUTO_INCREMENT,
    DataCompra datetime,
    ClienteId varchar(14),
    SessaoId int,
    PrecoId int,
    FOREIGN KEY (ClienteId) REFERENCES CLIENTE(ClienteId),
    FOREIGN KEY (SessaoId) REFERENCES SESSAO(SessaoId),
    FOREIGN KEY (PrecoId) REFERENCES BILHETERIA(PrecoId)
);