-- Insira 3 classes salariais na tabela salario_classe

INSERT INTO salario_classe (id, salario, nivel)
VALUES
(6, 8500, 'gerencia'),
(7,10700, 'cordenação de área');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(salario, nivel)
VALUES
(18000, 'gerente more');