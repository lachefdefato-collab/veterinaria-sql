-- CLIENTES
INSERT INTO cliente (nome, telefone) VALUES ('Carlos Silva', '83999999999');
INSERT INTO cliente (nome, telefone) VALUES ('Ana Souza', '83988888888');

-- PETS
INSERT INTO pet (nome_pet, especie, idade, id_cliente) VALUES ('Rex', 'Cachorro', '5', 1);
INSERT INTO pet (nome_pet, especie, idade, id_cliente) VALUES ('Mimi', 'Gato', '3', 2);

-- VETERINÁRIOS
INSERT INTO veterinario (nome, especialidade, telefone) VALUES ('Dra. Ana', 'Dermatologia', '83991112222');
INSERT INTO veterinario (nome, especialidade, telefone) VALUES ('Dr. João', 'Clínico Geral', '83992223333');

-- CONSULTAS
INSERT INTO consulta (data_consulta, cod_pet, id_veterinario, observacoes) VALUES ('2025-11-20', 1, 1, 'Consulta de rotina');
INSERT INTO consulta (data_consulta, cod_pet, id_veterinario, observacoes) VALUES ('2025-11-22', 2, 2, 'Vacinação anual');

-- MEDICAMENTOS
INSERT INTO medicamento (nome, tipo) VALUES ('Antibiótico X', 'Injetável');
INSERT INTO medicamento (nome, tipo) VALUES ('Vermífugo Y', 'Oral');

-- MEDICAMENTOS APLICADOS
INSERT INTO medicamento_aplicado (id_consulta, id_medicamento, dosagem) VALUES (1, 1, '10ml');
INSERT INTO medicamento_aplicado (id_consulta, id_medicamento, dosagem) VALUES (2, 2, '1 comprimido');
