/* Modelo Fisico: */
CREATE TABLE Setor (
    idSetor serial PRIMARY KEY,
    Nome varchar(60)
);

CREATE TABLE Prateleira (
    Numero serial PRIMARY KEY,
    Setor serial REFERENCES Setor
);

CREATE TABLE Usuario (
    idUsuario serial PRIMARY KEY,
    Nome varchar(60),
    CPF varchar(11) UNIQUE,
    RG varchar(9) UNIQUE,
    DataNascimento date,
    EMailUsuario varchar(60) UNIQUE
);

CREATE TABLE Fornecedor (
    idFornecedor serial PRIMARY KEY,
    Nome varchar(60),
    Responsavel varchar(60),
    TelefonePrincipal varchar(11) UNIQUE,
    EMailFornecedor varchar(60) UNIQUE,
    Pais varchar(60),
    Estado varchar(60),
    Cidade varchar(60),
    Bairro varchar(60),
    Rua varchar(60),
    Numero integer,
    Complemento varchar(60)
);

CREATE TABLE Livro (
    idLivro serial PRIMARY KEY,
    Titulo varchar(60),
    Autor varchar(60),
    Editora varchar(60),
    Edicao varchar(30),
    Genero varchar(60)
);

CREATE TABLE Exemplar (
    idExemplar serial PRIMARY KEY,
    livro serial REFERENCES Livro,
    prateleira serial REFERENCES Prateleira,
    fornecedor serial REFERENCES Fornecedor,
    DataAquisicao date NOT NULL,
    CustoAquisicao numeric(6,2) NOT NULL
);

CREATE TABLE Emprestimo (
    idEmprestimo serial PRIMARY KEY,
    Exemplar serial REFERENCES Exemplar,
    Usuario serial REFERENCES Usuario,
    DataEmprestimo date,
    TempoEmprestimo integer,
    DataDevolucao date,
    Multa numeric(4,2)
);
