-- CLIENTES
INSERT INTO cliente (nome, telefone) VALUES ('Carlos Silva', '83999999999');
INSERT INTO cliente (nome, telefone) VALUES ('Ana Souza', '83988888888');

-- PETS
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Rex', 'Cachorro', 5, 1);
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Mimi', 'Gato', 3, 2);

-- VETERINÁRIOS
INSERT INTO veterinario (nome, crmv) VALUES ('Dra. Ana', 'CRMV1234');
INSERT INTO veterinario (nome, crmv) VALUES ('Dr. João', 'CRMV5678');

-- CONSULTAS
INSERT INTO consulta (data, especie, idade, tipo_servico, id_pet, id_veterinario)
VALUES ('2025-11-20', 'Cachorro', 5, 'Consulta de rotina', 1, 1);
INSERT INTO consulta (data, especie, idade, tipo_servico, id_pet, id_veterinario)
VALUES ('2025-11-22', 'Gato', 3, 'Vacinação anual', 2, 2);

-- MEDICAMENTOS
INSERT INTO medicamento (nome, quantidade, data_validade)
VALUES ('Antibiótico X', 10, '2026-06-01');
INSERT INTO medicamento (nome, quantidade, data_validade)
VALUES ('Vermífugo Y', 20, '2026-12-31');

-- MEDICAMENTOS APLICADOS
INSERT INTO medicamento_aplicado (id_medicamento, id_veterinario, id_consulta, dose_aplicada)
VALUES (1, 1, 1, 10.0);
INSERT INTO medicamento_aplicado (id_medicamento, id_veterinario, id_consulta, dose_aplicada)
VALUES (2, 2, 2, 1.0);
