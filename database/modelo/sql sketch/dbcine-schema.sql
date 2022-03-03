CREATE SCHEMA DBCine;
USE DBCine;

/**********		TABELAS		*************/
CREATE TABLE CINEMA (
	Cnpj char(14) NOT NULL,
	NomeCinema varchar(55),
    Estado varchar(55),
    Cidade varchar(55),
    Endereco tinytext, -- string 255 max
    Telefone varchar(15),
    PRIMARY KEY (Cnpj)
);

CREATE TABLE SALA (
	SalaId tinyint NOT NULL, -- valor 0 a 255
    Capacidade tinyint, -- valor 0 a 255
    TipoSala varchar(15),
    PRIMARY KEY (SalaId)
);

CREATE TABLE FILME (
	FilmeId int NOT NULL,
    Titulo varchar(55) NOT NULL,
    Sinopse text, -- 65.535 bytes max
    Genero varchar(15),
    Duracao int, -- em minutos
    AnoLancamento tinyint, -- valor 0 a 255
    FaixaEtaria varchar(15),
    PeriodoExibicao varchar(55),
    PRIMARY KEY (Titulo, FilmeId)
);

CREATE TABLE SESSAO (
	SessaoId tinyint NOT NULL, -- valor 0 a 255
    Titulo varchar(55),
    SalaId tinyint, -- valor 0 a 255
    Horario time, -- hh:mm:ss
    TipoSessao varchar(55),
    PRIMARY KEY (SessaoId),
    FOREIGN KEY (Titulo) REFERENCES FILME(Titulo),
    FOREIGN KEY (SalaId) REFERENCES SALA(SalaId)
);

CREATE TABLE BILHETERIA (
	DiaSemana varchar(25),
    PrecoIngresso float,
    TipoSala varchar(15),
    TipoSessao varchar(55),
    SalaId tinyint,
    FOREIGN KEY (SalaId) REFERENCES SALA(SalaId)
    -- FOREIGN KEY (TipoSala) REFERENCES SALA(TipoSala),
	-- FOREIGN KEY (TipoSessao) REFERENCES SESSAO(TipoSessao)
);

CREATE TABLE CLIENTE (
	CpfCliente char(14),
    NomeCliente varchar(55),
    DataNasc date,
    DataCadastro date,
    PRIMARY KEY (CpfCliente)
);

CREATE TABLE INGRESSO (
	BilheteId int NOT NULL,
    DataCompra datetime, -- YYYY-MM-DD hh:mm:ss
    Cnpj char(14),
    PrecoIngresso float,
    SessaoId tinyint, -- valor 0 a 255
    TipoIngresso char(15),
    CpfCliente char(11),
    FOREIGN KEY (Cnpj) REFERENCES CINEMA(Cnpj),
    -- FOREIGN KEY (PrecoIngresso) REFERENCES BILHETERIA(PrecoIngresso),
    FOREIGN KEY (SessaoId) REFERENCES SESSAO(SessaoId),
    FOREIGN KEY (CpfCliente) REFERENCES CLIENTE(CpfCliente)
);
/**********		/TABELAS		*************/
