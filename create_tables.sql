create_tables.sql 
-- Tabela CLIENTE
CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT(15)
);

-- Tabela PET
CREATE TABLE pet (
    cod_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_pet TEXT(30),
    especie TEXT(30),
    idade TEXT(30),
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela VETERINARIO
CREATE TABLE veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT
);

-- Tabela CONSULTA
CREATE TABLE consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data_consulta DATE,
    cod_pet INTEGER,
    id_veterinario INTEGER,
    observacoes TEXT,
    FOREIGN KEY (cod_pet) REFERENCES pet(cod_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario)
);

-- Tabela MEDICAMENTO
CREATE TABLE medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    tipo TEXT
);

-- Tabela MEDICAMENTO_APLICADO
CREATE TABLE medicamento_aplicado (
    id_aplicacao INTEGER PRIMARY KEY AUTOINCREMENT,
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dosagem TEXT,
    FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);
