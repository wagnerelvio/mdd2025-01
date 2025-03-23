-- Inserindo clientes
INSERT INTO Cliente (nome) VALUES 
('João Silva'),
('Maria Oliveira'),
('Carlos Souza'),
('Ana Fernandes');

-- Inserindo pedidos --
INSERT INTO Pedido (id_cliente, valor) VALUES 
(1, 140.75),  -- Pedido do João Silva
(2, 310.00),  -- Pedido da Maria Oliveira
(3, 120.90),   -- Pedido do Carlos Souza
(4, 302.50);   -- Pedido da Ana Fernandes
