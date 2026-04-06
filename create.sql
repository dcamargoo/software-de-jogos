DROP DATABASE IF EXISTS software_jogos;
CREATE DATABASE software_jogos;
USE software_jogos;

DROP TABLE IF EXISTS Avalia;
DROP TABLE IF EXISTS Compra_Expansao;
DROP TABLE IF EXISTS Compra_Jogo;
DROP TABLE IF EXISTS Expansao;
DROP TABLE IF EXISTS Avaliacao;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Usuario;

CREATE TABLE Usuario (
    id_usuario INT NOT NULL,
    nome_usuario VARCHAR(50) NOT NULL,
    data_cadastro DATE NOT NULL,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE Jogo (
    id_jogo INT NOT NULL,
    nome_jogo VARCHAR(100) NOT NULL,
    preco_jogo DECIMAL(10,2) NOT NULL,
    genero VARCHAR(50),
    desenvolvedora VARCHAR(100),
    publicadora VARCHAR(100),
    PRIMARY KEY (id_jogo)
);

CREATE TABLE Avaliacao (
    id_avaliacao INT NOT NULL,
    comentario TEXT,
    classificacao INT,
    PRIMARY KEY (id_avaliacao),
    CHECK (classificacao BETWEEN 0 AND 10)
);

CREATE TABLE Expansao (
    id_expansao INT NOT NULL,
    id_jogo INT NOT NULL,
    nome_expansao VARCHAR(100) NOT NULL,
    preco_expansao DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_expansao),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo)
);

CREATE TABLE Compra_Jogo (
    id_jogo INT NOT NULL,
    id_usuario INT NOT NULL,
    data_compra_jogo DATE NOT NULL,
    PRIMARY KEY (id_jogo, id_usuario),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Compra_Expansao (
    id_expansao INT NOT NULL,
    id_usuario INT NOT NULL,
    data_compra_expansao DATE NOT NULL,
    PRIMARY KEY (id_expansao, id_usuario),
    FOREIGN KEY (id_expansao) REFERENCES Expansao(id_expansao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Avalia (
    id_jogo INT NOT NULL,
    id_avaliacao INT NOT NULL,
    id_usuario INT NOT NULL,
    data_avaliacao DATE NOT NULL,
    PRIMARY KEY (id_jogo, id_avaliacao, id_usuario),
    FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo),
    FOREIGN KEY (id_avaliacao) REFERENCES Avaliacao(id_avaliacao),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
