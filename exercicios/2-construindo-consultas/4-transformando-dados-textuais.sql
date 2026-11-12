-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras

Select Customerid as Id, 
FirstName as Nome, 
LastName as Sobrenome, 
Address as Endereço

from customers
where country like 'Bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas

Select Customerid as Id, 
FirstName as Nome, 
Upper (LastName) as Sobrenome, 
Address as Endereço

from customers
where country like 'Bra%';

-- Na consulta anterior, converta o nome para letras minúsculas

Select Customerid as Id, 
LOWER (FirstName) as Nome, 
Upper (LastName) as Sobrenome, 
Address as Endereço

from customers
where country like 'Bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome

Select Customerid as Id, 
LOWER (FirstName) as Nome, 
Upper (LastName) as Sobrenome, 
FirstName ||' '||LastName as Nome_completo,
Address as Endereço


from customers
where country like 'Bra%';


-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço

Select Customerid as Id, 
LOWER (FirstName) as Nome, 
Upper (LastName) as Sobrenome, 
FirstName ||' '||LastName as Nome_completo,
Replace(Address, 'Av','Avenida') as Endereço


from customers
where country like 'Bra%';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
