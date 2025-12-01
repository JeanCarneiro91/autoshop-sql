USE autoshop;

-- 1. Listar todos os clientes
SELECT * FROM Cliente;

-- 2. Listar produtos ordenados por preço (desc)
SELECT nome, categoria, preco FROM Produto ORDER BY preco DESC;

-- 3. Consultar vendas com nome do cliente (JOIN)
SELECT 
    v.id_venda,
    v.data_venda,
    c.nome AS cliente
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente;

-- 4. Exibir itens e total de uma venda
SELECT 
    v.id_venda,
    c.nome AS cliente,
    SUM(iv.quantidade * iv.preco_unitario) AS total_venda
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN ItemVenda iv ON iv.id_venda = v.id_venda
GROUP BY v.id_venda, c.nome
ORDER BY total_venda DESC
LIMIT 5;
