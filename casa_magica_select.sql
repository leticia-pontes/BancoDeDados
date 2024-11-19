-- 

SELECT COUNT(item_venda.ID_Item_Venda) AS QTDE_VENDIDA
FROM item_venda;

-- JOGOS QUE CUSTAM ACIMA DE 150
SELECT COUNT(jogo.ID_Jogo) AS QTDE
FROM jogo
WHERE jogo.Preco > 150;

-- Soma de valores
SELECT SUM(item_venda.Preco_Total) AS FATURAMENTO_TOTAL
FROM item_venda;

-- Média de valores (e aproximação)
SELECT ROUND(AVG(jogo.Preco)) AS MEDIA
FROM jogo;

-- 
SELECT SUM(jogo.Preco) AS SOMA,
       ROUND(AVG(jogo.Preco), 2) AS MEDIA_PRECO
FROM jogo
WHERE jogo.Classificacao_Etaria = "18+";

-- MIN/MAX, UPPER/LOWER

-- CASE (IF/ELSE)
SELECT item_venda.ID_Venda AS ID,
    item_venda.Preco_Total AS PRECO,
    CASE
        WHEN item_venda.Preco_Total > 250 THEN "Alto"
        ELSE "Baixo"
    END AS CLASSIFICACAO_VENDA
FROM item_venda
ORDER BY PRECO;


SELECT jogo.Titulo,
       jogo.Preco,
       CASE
           WHEN jogo.Preco > 150 THEN "CARO"
           ELSE "BARATO"
       END AS CLASSIFICACAO_VENDA
FROM jogo;
