use bd_vendas;
#a) View para exibir dados do cliente e pedidos com data superior a 30/01/2014:
#sql
CREATE VIEW vw_cliente_pedidos AS
SELECT c.cod_cliente, c.nome_cliente, p.cod_pedido, p.data_pedido, p.data_entrega
FROM tbl_cliente c
JOIN tbl_pedido p ON c.cod_cliente = p.cod_cliente
WHERE p.data_pedido > '2014-01-30';

select * from vw_cliente_pedidos;

#b) View para exibir dados do cliente, pedidos e itens de pedidos com quantidade maior que 25:
#sql
CREATE VIEW vw_cliente_pedidos_itens AS
SELECT c.cod_cliente, c.nome_cliente, p.cod_pedido, p.data_pedido, p.data_entrega, i.qtde, i.i_cod_produto
FROM tbl_cliente c
JOIN tbl_pedido p ON c.cod_cliente = p.cod_cliente
JOIN tbl_itempedido i ON p.cod_pedido = i.i_cod_pedido
WHERE i.qtde > 25;

select * from vw_cliente_pedidos_itens;

#c) View para exibir dados do pedido e itens do pedido:
#sql
CREATE VIEW vw_pedido_itens AS
SELECT p.cod_pedido, c.cod_cliente, i.qtde, i.i_cod_produto, pr.nome_produto, pr.desc_produto
FROM tbl_pedido p
JOIN tbl_cliente c ON p.cod_cliente = c.cod_cliente
JOIN tbl_itempedido i ON p.cod_pedido = i.i_cod_pedido
JOIN tbl_produto pr ON i.i_cod_produto = pr.cod_produto;

#select * from vw_pedido_itens;#d) View para exibir produtos com o valor reajustado em 11,2%:
#sql
CREATE VIEW vw_produtos_reajustados AS
SELECT cod_produto, nome_produto, desc_produto, valor AS valor_atual, 
       (valor * 1.112) AS valor_reajustado
FROM tbl_produto;

select * from vw_produtos_reajustados;