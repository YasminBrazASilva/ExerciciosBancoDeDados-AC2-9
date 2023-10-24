-- Criação da tabela "Pedidos"
CREATE TABLE Pedidos (
	IDPedido INT AUTO_INCREMENT PRIMARY KEY,
    DataPedido DATETIME,
    NomeCliente VARCHAR(100)
);

-- Inserção de dados de exemplo
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES
(NOW(), 'Cliente 1'),
(NOW(), 'Cliente 2'),
(NOW(), 'Cliente 3');

DELIMITER $
CREATE TRIGGER RegistroDataCriacaoPedido
BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN 
	SET NEW.DataPedido = NOW();
END;
$
DELIMITER ;