-- USE HAMBURGUERIA;

INSERT INTO FORNECEDOR 
	(NOME, TELEFONE, EMAIL, ENDERECO, CNPJ)
VALUES
	("Fornecedor 1", 123456789, "fornecedor1@email.com", "Rua A, 123", 123);

INSERT INTO FORNECEDOR 
	(NOME, TELEFONE, EMAIL, ENDERECO, CNPJ)
VALUES
	("Fornecedor 2", 987654321, "fornecedor2@email.com", "Rua B, 123", 456),
    ("Fornecedor 3", 123987456, "fornecedor3@email.com", "Rua C, 456", 789),
    ("Fornecedor 4", 789321654, "fornecedor4@email.com", "Rua C, 321", 321);


INSERT INTO TIPO_PRODUTO
    (DESCRICAO)
VALUES
    ("Hambúrguer"),
    ("Bebida"),
    ("Acompanhamento"),
    ("Molho"),
    ("Sobremesa");


INSERT INTO CLIENTE
    (NOME, EMAIL, TELEFONE, DATA_NASCIMENTO, ENDERECO)
VALUES
    ("Cliente 1", "cliente1@email.com", 123456789, "1990-01-01", "Rua A, 789"),
    ("Cliente 2", "cliente2@email.com", 987654321, "1995-03-12", "Rua A, 147"),
    ("Cliente 3", "cliente3@email.com", 456321789, "2001-05-23", "Rua C, 528"),
    ("Cliente 4", "cliente4@email.com", 321654987, "2000-11-02", "Rua B, 321");


INSERT INTO STATUS_PEDIDO
    (DESCRICAO, PRIORIDADE)
VALUES
    ("Aguardando", 1),
    ("Preparando", 2),
    ("A caminho", 3),
    ("Entregue", 4),
    ("Cancelado", 5);


INSERT INTO FORMA_PAGAMENTO
    (DESCRICAO, TAXA)
VALUES
    ("Dinheiro", 0),
    ("Cartão de Crédito", 1.42),
    ("Cartão de Débito", 0),
    ("PIX", 0.30);


INSERT INTO PRODUTO
    (NOME, DESCRICAO, PRECO, DISPONIBILIDADE, IMAGEM_URL, ID_TIPO)
VALUES
    ("X-Burguer", "Hambúrguer clássico com queijo", 15.00, 1, "cheeseburguer.jpg", 1),
    ("Coca-Cola", "Refrigerante", 6.40, 1, "cocacola.jpg", 2),
    ("Sorvete", "Sorvete de massa sabor chocolate", 7.35, 1, "sorvete.jpg", 5),
    ("Batata Frita", "Porção de batata frita", 12.00, 0, "batata.jpg", 3);


INSERT INTO PEDIDO
    (DATA, ID_CLIENTE, TOTAL, ID_FORMA_PAGAMENTO, ID_STATUS)
VALUES
    ("2024-10-11 12:00:00", 1, 20.00, 2, 1),
    ("2024-10-11 11:30:00", 2, 22.35, 4, 3),
    ("2024-10-11 12:30:00", 3, 34.35, 3, 1);


INSERT INTO ITEM_PEDIDO
    (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, SUBTOTAL)
VALUES
    (1, 1, 1, 15.00),
    (1, 2, 1, 5.00),
    (2, 1, 1, 15.00),
    (2, 3, 1, 7.35),
    (3, 1, 1, 15.00),
    (3, 3, 1, 7.35),
    (3, 4, 1, 12.00);