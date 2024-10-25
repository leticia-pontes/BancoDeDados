-- Adiciona uma coluna
ALTER TABLE cliente
ADD Data_Nascimento DATE;

-- Exclui uma coluna
ALTER TABLE fornecedor
DROP COLUMN Telefone;

-- Renomeia uma coluna
ALTER TABLE funcionario
CHANGE nome Nome_Completo VARCHAR(100);

-- Altera o tipo de uma coluna
ALTER TABLE cliente
MODIFY Email VARCHAR(150);

-- Renomeia uma tabela
ALTER TABLE item_venda
RENAME TO itens_vendas;

-- Define um valor padrão em uma coluna
ALTER TABLE venda
ADD Status VARCHAR(20) DEFAULT 'Pendente';

-- Adiciona uma chave estrangeira em uma coluna
ALTER TABLE venda
ADD Id_Fornecedor INT,
ADD CONSTRAINT fk_venda_fornecedor
    FOREIGN KEY (Id_Fornecedor) REFERENCES fornecedor (Id_Fornecedor);

-- 