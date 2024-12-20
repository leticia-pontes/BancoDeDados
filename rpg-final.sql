/*

TURMA: 4-BBC A
MATÉRIA: BANCO DE DADOS 
ALUNAS: GIOVANA OLIVEIRA, LETICIA PONTES E MARCELA CONEGLIAN


*/

-- CRIAÇÃO DO BANCO DE DADOS 

CREATE DATABASE BD_RPG;

USE BD_RPG;

CREATE TABLE STATUS (
    ID_STATUS INT PRIMARY KEY AUTO_INCREMENT,
    DESCRICAO_STATUS VARCHAR(15) NOT NULL
);

CREATE TABLE TIPO_PODER (
    ID_TIPO_PODER INT PRIMARY KEY AUTO_INCREMENT,
    NOME_PODER VARCHAR(25) NOT NULL,
    DESCRICAO_PODER VARCHAR(120) NOT NULL
);

CREATE TABLE TIPO_ITEM (
    ID_TIPO_ITEM INT PRIMARY KEY AUTO_INCREMENT,
    NOME_TIPO_ITEM VARCHAR(15) NOT NULL
);

CREATE TABLE RARIDADE (
    ID_RARIDADE INT PRIMARY KEY AUTO_INCREMENT,
    NOME_RARIDADE VARCHAR(10) NOT NULL,
    CHANCE_DROP_RARIDADE INT NOT NULL
);

CREATE TABLE RACA (
    ID_RACA INT PRIMARY KEY AUTO_INCREMENT,
    NOME_RACA VARCHAR(20) NOT NULL,
    DESCRICAO_RACA VARCHAR(120) NOT NULL,
    XP_BASE_RACA INT NOT NULL,
    INTELIGENCIA_BASE_RACA INT NOT NULL,
    FORCA_BASE_RACA INT NOT NULL,
    AGILIDADE_BASE_RACA INT NOT NULL
);

CREATE TABLE CLASSE (
    ID_CLASSE INT PRIMARY KEY AUTO_INCREMENT,
    NOME_CLASSE VARCHAR(20) NOT NULL,
    ID_TIPO_ITEM_CLASSE INT NOT NULL,
        FOREIGN KEY (ID_TIPO_ITEM_CLASSE) REFERENCES TIPO_ITEM(ID_TIPO_ITEM)
);

CREATE TABLE PODER (
    ID_PODER INT PRIMARY KEY AUTO_INCREMENT,
    NOME_PODER VARCHAR(40) NOT NULL,
    DESCRICAO_PODER VARCHAR(120) NOT NULL,
    ID_TIPO_PODER INT NOT NULL,
        FOREIGN KEY (ID_TIPO_PODER) REFERENCES TIPO_PODER(ID_TIPO_PODER),
    PONTOS_ATAQUE_PODER INT NOT NULL,
    PONTOS_DEFESA_PODER INT NOT NULL,
    NIVEL_REQUERIDO_PODER INT NOT NULL
);

CREATE TABLE CONTA (
    ID_CONTA INT PRIMARY KEY AUTO_INCREMENT,
    NOME_CONTA VARCHAR(50) NOT NULL UNIQUE,
    EMAIL_CONTA VARCHAR(255) NOT NULL,
    SENHA_CONTA VARCHAR(20) NOT NULL,
    DATA_NASCIMENTO_CONTA DATE NOT NULL,
    DATA_CRIACAO_CONTA DATE NOT NULL,
    ID_STATUS_CONTA INT NOT NULL,
        FOREIGN KEY (ID_STATUS_CONTA) REFERENCES STATUS(ID_STATUS)
);

CREATE TABLE PERSONAGEM(
    ID_PERSONAGEM INT PRIMARY KEY AUTO_INCREMENT,
    NOME_PERSONAGEM VARCHAR(20) NOT NULL,
    NIVEL_PERSONAGEM INT NOT NULL,
    INTELIGENCIA_PERSONAGEM INT NOT NULL,
    FORCA_PERSONAGEM INT NOT NULL,
    AGILIDADE_PERSONAGEM INT NOT NULL,
    ID_CLASSE_PERSONAGEM INT NOT NULL,
        FOREIGN KEY (ID_CLASSE_PERSONAGEM) REFERENCES CLASSE(ID_CLASSE),
    ID_RACA_PERSONAGEM INT NOT NULL,
        FOREIGN KEY (ID_RACA_PERSONAGEM) REFERENCES RACA(ID_RACA),
    HEALTH_POINTS_PERSONAGEM INT NOT NULL,
    EXPERIENCE_POINTS_PERSONAGEM INT NOT NULL,
    ID_CONTA_PERSONAGEM INT NOT NULL,
        FOREIGN KEY (ID_CONTA_PERSONAGEM) REFERENCES CONTA(ID_CONTA)
);

CREATE TABLE HABILIDADES (
    ID_PERSONAGEM_HABILIDADE INT NOT NULL,
        FOREIGN KEY (ID_PERSONAGEM_HABILIDADE) REFERENCES PERSONAGEM(ID_PERSONAGEM),
    ID_PODER_HABILIDADE INT NOT NULL,
        FOREIGN KEY (ID_PODER_HABILIDADE) REFERENCES PODER(ID_PODER)
);

CREATE TABLE ITEM (
    ID_ITEM INT PRIMARY KEY AUTO_INCREMENT,
    NOME_ITEM VARCHAR(30) NOT NULL,
    ID_TIPO_ITEM INT NOT NULL,
        FOREIGN KEY (ID_TIPO_ITEM) REFERENCES TIPO_ITEM(ID_TIPO_ITEM),
    DESCRICAO_ITEM VARCHAR(20) NOT NULL,
    ID_RACA_ITEM INT NOT NULL,
        FOREIGN KEY (ID_RACA_ITEM) REFERENCES RACA(ID_RACA),
    VALOR_COMPRA_ITEM FLOAT NOT NULL,
    VALOR_VENDA_ITEM FLOAT NOT NULL,
    NIVEL_REQUERIDO_ITEM INT NOT NULL,
    ID_RARIDADE_ITEM INT NOT NULL,
        FOREIGN KEY (ID_RARIDADE_ITEM) REFERENCES RARIDADE(ID_RARIDADE),
    PONTOS_DANO_ITEM INT NOT NULL,
    PONTOS_VIDA_ITEM INT NOT NULL,
    PONTOS_INTELIGENCIA_ITEM INT NOT NULL,
    PONTOS_FORCA_ITEM INT NOT NULL,
    PONTOS_AGILIDADE_ITEM INT NOT NULL
);

CREATE TABLE INVENTARIO (
    ID_PERSONAGEM_INVENTARIO INT NOT NULL,
        FOREIGN KEY (ID_PERSONAGEM_INVENTARIO) REFERENCES PERSONAGEM(ID_PERSONAGEM),
    ID_ITEM_INVENTARIO INT NOT NULL,
        FOREIGN KEY (ID_ITEM_INVENTARIO) REFERENCES ITEM(ID_ITEM),
    QUANTIDADE_ITEM_INVENTARIO INT NOT NULL
);

-- INSERTS INFORMAÇÕES

INSERT INTO STATUS (DESCRICAO_STATUS) VALUES
('Ativo'),
('Inativo'),
('Banido');

INSERT INTO TIPO_PODER (NOME_PODER, DESCRICAO_PODER) VALUES
('Magia Arcana', 'Poderes derivados do estudo e manipulação de forças arcanas.'),
('Poder Físico', 'Habilidades baseadas em força bruta e destreza física.'),
('Elemento Fogo', 'Poderes relacionados à manipulação do fogo e calor.');

INSERT INTO TIPO_ITEM (NOME_TIPO_ITEM) VALUES
('Arma'),
('Armadura'),
('Poção');

INSERT INTO RARIDADE (NOME_RARIDADE, CHANCE_DROP_RARIDADE) VALUES
('Comum', 80),
('Raro', 15),
('Lendário', 5);

INSERT INTO RACA (NOME_RACA, DESCRICAO_RACA, XP_BASE_RACA, INTELIGENCIA_BASE_RACA, FORCA_BASE_RACA, AGILIDADE_BASE_RACA) VALUES
('Humano', 'Uma raça equilibrada em todas as áreas, sem fraquezas notáveis.', 100, 10, 10, 10),
('Elfo', 'Seres ágeis e inteligentes, com uma forte conexão com a magia.', 120, 15, 8, 12),
('Orc', 'Fortes e resistentes, mas com pouca aptidão para magia.', 80, 5, 15, 8);
