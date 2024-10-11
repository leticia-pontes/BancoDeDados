INSERT INTO membros
    (Nome, Endereco, Telefone, Email, DataRegistro)
VALUES
    ("Letícia Alves", "Rua F, 1234", 1499876543, "leticia.alves@email.com", "2024-10-11"),
    ("Beatriz Barbosa", "Rua G, 2345", 14997456321, "beatriz.barbosa@email.com", "2024-10-11"),
    ("Laura Yumi", "Rua H, 3456", 1499965478, "laura.yumi@email.com", "2024-10-11");


INSERT INTO categorias
    (NomeCategoria)
VALUES
    ("Ficção Científica"),
    ("História"),
    ("Poesia");


INSERT INTO autores
    (Nome, Pais, DataNascimento)
VALUES
    ("Alexandre Dumas", "França", "1870-12-05"),
    ("Edgar Allan Poe", "Estados Unidos", "1809-01-19"),
    ("George R. R. Martin", "Estados Unidos", "1948-09-20");


INSERT INTO livros
    (Titulo, AutorID, CategoriaID, ISBN, AnoPublicacao, CopiasDisponiveis)
VALUES
    ("O Conde de Monte Cristo", 6, 2, 9788537818695, 1844, 2),
    ("O Corvo", 7, 8, 9788535931686, 1845, 3),
    ("A Guerra dos Tronos", 8, 1, 0553103547, 1996, 9);
