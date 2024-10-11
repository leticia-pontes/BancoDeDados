-- CRIA UMA BASE DE DADOS
CREATE DATABASE Biblioteca;

-- DEFINE A BASE DE DADOS A SER UTILIZADA
USE Biblioteca;

-- CRIA ENTIDADES
CREATE TABLE Autores (
    autor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE Livros (
    livro_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao INT NOT NULL,
    genero VARCHAR(100),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id)
);

CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    telefone VARCHAR(15),
    data_inscricao DATE
);

CREATE TABLE Emprestimos (
    emprestimo_id INT PRIMARY KEY AUTO_INCREMENT,
    livro_id INT,
    usuario_id INT,
    data_emprestimo DATE,
    data_devolucao DATE,
    FOREIGN KEY (livro_id) REFERENCES Livros(livro_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
);