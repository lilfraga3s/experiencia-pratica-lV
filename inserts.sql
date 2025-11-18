USE fastcar;

INSERT INTO categoria (nome_categoria, valor_diaria) VALUES
('Econômico', 89.90),
('Sedan', 129.90),
('SUV', 199.90);

INSERT INTO cliente (nome, cpf, telefone, email, cnh, data_nascimento) VALUES
('Ana Silva', '123.456.789-00', '11999990000', 'ana@gmail.com', '1234567890', '1990-05-10'),
('Carlos Souza', '987.654.321-00', '11988880000', 'carlos@gmail.com', '9876543210', '1985-08-20');

INSERT INTO veiculo (placa, modelo, ano, status, km_atual, id_categoria) VALUES
('ABC1A23', 'Gol 1.0', 2018, 'disponivel', 45000, 1),
('BCD2B34', 'Corolla 2.0', 2020, 'disponivel', 22000, 2);

INSERT INTO reserva (id_cliente, id_veiculo, data_reserva, data_prevista_retirada, data_prevista_devolucao, status_reserva)
VALUES
(1, 1, NOW(), '2025-03-10', '2025-03-15', 'confirmada'),
(2, NULL, NOW(), '2025-04-01', '2025-04-05', 'pendente');

INSERT INTO locacao (id_reserva, id_cliente, id_veiculo, data_retirada, data_prevista_devolucao, valor_diaria, status_locacao)
VALUES
(1, 1, 1, NOW(), '2025-03-15', 89.90, 'ativa');

INSERT INTO devolucao (id_locacao, data_devolucao, km_devolucao, valor_total)
VALUES
(1, NOW(), 45500, 450.00);

INSERT INTO pagamento (id_locacao, data_pagamento, valor_pago, forma_pagamento)
VALUES
(1, NOW(), 450.00, 'cartao');

INSERT INTO manutencao (id_veiculo, data_inicio, tipo_servico, custo)
VALUES
(2, '2025-02-10', 'Troca de óleo', 150.00);

INSERT INTO multa_avaria (id_devolucao, descricao, valor)
VALUES
(1, 'Arranhão na porta', 200.00);
