-- Tabela CLIENTE
CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone CHAR(15)
);

-- Tabela PET
CREATE TABLE pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT NOT NULL,
    idade INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela VETERINARIO
CREATE TABLE veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    crmv TEXT
);

-- Tabela CONSULTA
CREATE TABLE consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    especie TEXT NOT NULL,
    idade INTEGER,
    tipo_servico TEXT NOT NULL,
    id_pet INTEGER,
    id_veterinario INTEGER,
    FOREIGN KEY (id_pet) REFERENCES pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario)
);

-- Tabela MEDICAMENTO
CREATE TABLE medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER,
    data_validade DATE
);

-- Tabela MEDICAMENTO_APLICADO
CREATE TABLE medicamento_aplicado (
    id_aplicacao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_medicamento INTEGER,
    id_veterinario INTEGER,
    id_consulta INTEGER,
    dose_aplicada FLOAT,
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario),
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta)
);
