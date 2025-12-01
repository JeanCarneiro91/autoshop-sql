USE autoshop;

-- Inserir clientes
INSERT INTO Cliente (nome, telefone) VALUES
('João Silva', '1199999-1111'),
('Maria Oliveira', '1198888-2222'),
('Carlos Santos', '1197777-3333'),
('Ana Pereira', '1196666-4444'),
('Paulo Mendes', '1195555-6666');

-- Inserir produtos
INSERT INTO Produto (nome, categoria, preco) VALUES
('Shampoo Automotivo', 'Limpeza', 45.90),
('Cera Líquida', 'Acabamento', 32.50),
('Pano Microfibra', 'Acessórios', 12.00),
('Aromatizador', 'Interior', 9.90),
('Lâmpada LED Automotiva', 'Iluminação', 29.90);

-- Inserir vendas
INSERT INTO Venda (data_venda, id_cliente) VALUES
('2025-03-01', 1),
('2025-03-02', 2),
('2025-03-03', 1);

-- Inserir itens da venda
INSERT INTO ItemVenda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 45.90),
(1, 3, 2, 12.00),
(2, 2, 1, 32.50),
(3, 5, 2, 29.90),
(3, 4, 1, 9.90);
