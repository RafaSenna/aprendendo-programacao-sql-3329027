-- Escreva uma consulta que retorne o nome por 
--extenso dos estados brasileiros
SELECT DISTINCT
Country as pais,
State as estado_sigla,
CASE 
  WHEN State = 'SP' THEN 'São Paulo'
  when State = 'RJ' THEN 'Rio de Janeiro'
  else ' Estado desconhecido'
end as estado
From customers
where country LIKE 'Brazil';