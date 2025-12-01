USE autoshop;

-- UPDATES
UPDATE Cliente SET telefone = '1191234-5678' WHERE id_cliente = 1;
UPDATE Produto SET preco = 10.00 WHERE id_produto = 3;
UPDATE Venda SET data_venda = '2025-03-05' WHERE id_venda = 2;

-- DELETES
DELETE FROM ItemVenda WHERE id_item = 5;
DELETE FROM Produto WHERE id_produto = 4;
DELETE FROM Cliente WHERE id_cliente = 3;
