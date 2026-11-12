-- Para a tabela "invoices", crie uma consulta que 
--retorne o país e a soma das compras realizadas nele, 
--bem como o valor da compra mínima e máxima, a quantidade 
--de compras realizadas e o ticket médio de cada compra.

-- Sum() / COUNT()/ MIN() / MAX()/ ROUND(valor, casas)/ Avg(média)

Select
BillingCountry as pais,
sum(Total) as soma_compras,
Count(Total) as qnt_compr_realz,
min(Total) as menor_valor,
max(Total) as maior_valor,
Round(avg(Total), 2) as tecket_medio

from
invoices
where BillingCountry = 'Austria';
