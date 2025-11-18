-- ===============================
-- FASTCAR - CRIAÇÃO DO BANCO
-- MYSQL WORKBENCH
-- ===============================

DROP DATABASE IF EXISTS fastcar;
CREATE DATABASE fastcar;
USE fastcar;

-- ===============================
-- TABELA: CLIENTE
-- ===============================
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(150),
    cnh VARCHAR(30) NOT NULL,
    data_nascimento DATE
);

-- ===============================
-- TABELA: CATEGORIA
-- ===============================
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    valor_diaria DECIMAL(10,2) NOT NULL
);

-- ===============================
-- TABELA: VEICULO
-- ===============================
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(100) NOT NULL,
    ano INT,
    status VARCHAR(20) NOT NULL,
    km_atual INT,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- ===============================
-- TABELA: RESERVA
-- ===============================
CREATE TABLE reserva (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_veiculo INT,
    data_reserva DATETIME NOT NULL,
    data_prevista_retirada DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL,
    status_reserva VARCHAR(20),

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

-- ===============================
-- TABELA: LOCACAO
-- ===============================
CREATE TABLE locacao (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_retirada DATETIME NOT NULL,
    data_prevista_devolucao DATE NOT NULL,
    valor_diaria DECIMAL(10,2) NOT NULL,
    status_locacao VARCHAR(20),

    FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

-- ===============================
-- TABELA: DEVOLUCAO
-- ===============================
CREATE TABLE devolucao (
    id_devolucao INT AUTO_INCREMENT PRIMARY KEY,
    id_locacao INT NOT NULL UNIQUE,
    data_devolucao DATETIME NOT NULL,
    km_devolucao INT,
    valor_total DECIMAL(12,2),

    FOREIGN KEY (id_locacao) REFERENCES locacao(id_locacao)
);

-- ===============================
-- TABELA: PAGAMENTO
-- ===============================
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_locacao INT NOT NULL,
    data_pagamento DATETIME NOT NULL,
    valor_pago DECIMAL(12,2) NOT NULL,
    forma_pagamento VARCHAR(30),

    FOREIGN KEY (id_locacao) REFERENCES locacao(id_locacao)
);

-- ===============================
-- TABELA: MANUTENCAO
-- ===============================
CREATE TABLE manutencao (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    tipo_servico VARCHAR(100),
    custo DECIMAL(12,2),

    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

-- ===============================
-- TABELA: MULTA/AVARIA
-- ===============================
CREATE TABLE multa_avaria (
    id_multa INT AUTO_INCREMENT PRIMARY KEY,
    id_devolucao INT NOT NULL,
    descricao TEXT,
    valor DECIMAL(12,2),

    FOREIGN KEY (id_devolucao) REFERENCES devolucao(id_devolucao)
);
