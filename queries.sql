-- SELECT: Listar pets com nome e telefone do dono
SELECT pet.nome, cliente.nome, cliente.telefone
FROM pet
JOIN cliente ON pet.id_cliente = cliente.id_cliente;

-- SELECT: Consultas feitas por um veterinário específico
SELECT consulta.data, consulta.tipo_servico, veterinario.nome
FROM consulta
JOIN veterinario ON consulta.id_veterinario = veterinario.id_veterinario
WHERE veterinario.nome = 'Dra. Ana';

-- UPDATE: Atualizar telefone de um cliente
UPDATE cliente SET telefone = '83977777777' WHERE id_cliente = 1;

-- UPDATE: Atualizar idade de um pet
UPDATE pet SET idade = 6 WHERE id_pet = 1;

-- UPDATE: Alterar tipo de serviço de uma consulta
UPDATE consulta SET tipo_servico = 'Exame laboratorial' WHERE id_consulta = 2;

-- DELETE: Remover uma aplicação de medicamento
DELETE FROM medicamento_aplicado WHERE id_aplicacao = 1;

-- DELETE: Remover uma consulta
DELETE FROM consulta WHERE id_consulta = 2;

-- DELETE: Remover um pet
DELETE FROM pet WHERE id_pet = 2;
