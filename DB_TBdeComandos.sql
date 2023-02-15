#mysql -u root -p
#Gabrielle Carvalho Gonçalves das Neves
#Higor Gomes Rocha

SELECT * FROM produtos WHERE PrecoUnitario >= 9.00 AND PrecoUnitario <= 15.00;
SELECT * FROM produtos WHERE PrecoUnitario BETWEEN 9.00 AND 15.00;

SELECT * FROM clientes WHERE NomeCliente BETWEEN 'A' AND 'C';
SELECT * FROM produtos ORDER BY IdProduto DESC LIMIT 1; #Mostra o ultimo produto


#Pega o menor preço
SELECT MIN(PrecoUnitario) FROM produtos;  

#Pega o maior preço
SELECT MAX(PrecoUnitario) FROM produtos;  

#Saber qual o número de registro em uma tabela
SELECT COUNT(NomeProduto) AS 'QtdeProd' FROM produtos;

#Soma todos os Valores
SELECT SUM(PrecoUnitario) FROM produtos;

#Mostra a média
SELECT AVG(PrecoUnitario) FROM produtos;


SELECT c.IdCliente, c.NomeCliente FROM Clientes AS c ORDER BY c.IdCliente;


#INNER JOIN
SELECT IdVenda, itensvendidos.IdProduto, QtdeVendida, 
QtdeVendida * PrecoUnitario 	
FROM itensvendidos INNER JOIN produtos 
ON itensvendidos.IdProduto = produtos.IdProduto
ORDER BY IdVenda;


SELECT iv.IdVenda AS Venda, 
p.NomeProduto AS Produto, 
iv.QtdeVendida AS Qtde,
p.PrecoUnitario AS Preco,
iv.QtdeVendida * p.PrecoUnitario AS SubTotal 
FROM itensvendidos AS iv 
INNER JOIN produtos as p
ON iv.IdProduto = p.IdProduto
ORDER BY IdVenda;