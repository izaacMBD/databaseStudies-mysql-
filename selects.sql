
#use bd_vendas;
#Questão 1
select count(*) as Ruas, cidade
from tbl_endereco
group by cidade desc;

#Questão 2
select count(*) as ruas, bairro
from tbl_endereco
group by bairro
order by 1 desc;

#Questão 2v2
select count(*) as ruas, bairro
from tbl_endereco
group by bairro
order by 1 desc
limit 5;

#Questão 3
select nome_cliente as clientes,
year(data_nasc) as year_nasc
from tbl_cliente
where year(data_nasc) >= 1960
	and year(data_nasc) <= 1990
order by 2;

#Questão 3v2
select nome_cliente as clientes,
data_nasc as dateNasc
from tbl_cliente
where year(data_nasc) between 1960 and 1990
order by 2;


#Questão 4
select count(*) as clientes, month(data_nasc) as mes
from tbl_cliente
group by mes
order by 1 desc;

#Questão 5
select count(*) as pedidos, month(data_pedido) as mes
from tbl_pedido
group by mes
order by 1 desc;

#Questão 6
select min(i_valor) as Valor
from tbl_itempedido;

#Questão 7
select count(*) as incidencia, i_cod_produto as codProduto
from tbl_itempedido
group by codProduto
order by 1 desc;

#Questão 7v2
select sum(qtde) as qtde, i_cod_produto as codProduto
from tbl_itempedido
group by 2
order by 1 desc;

#Questão 8
select sum(estoque_atual) from tbl_produto;

#Questão 9
select truncate(avg(estoque_atual), 2) as medEstoque
from tbl_produto;

#Questão 10
select sum(estoque_atual * valor) as maxEstoqueValor
from tbl_produto;


#SELECTS LVL 2                 




























