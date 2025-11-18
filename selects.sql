USE fastcar;

-- 1. Listar todos os veículos disponíveis
SELECT * FROM veiculo
WHERE status = 'disponivel';

-- 2. Consultar clientes ordenados alfabeticamente
SELECT nome, cpf FROM cliente
ORDER BY nome ASC;

-- 3. Reservas pendentes
SELECT r.*, c.nome
FROM reserva r
JOIN cliente c ON r.id_cliente = c.id_cliente
WHERE status_reserva = 'pendente';

-- 4. Locações com dados do cliente e veículo
SELECT l.id_locacao, c.nome, v.modelo, l.data_retirada
FROM locacao l
JOIN cliente c ON l.id_cliente = c.id_cliente
JOIN veiculo v ON l.id_veiculo = v.id_veiculo;

-- 5. Top 1 cliente que mais gastou (exemplo)
SELECT c.nome, SUM(p.valor_pago) AS total_gasto
FROM pagamento p
JOIN locacao l ON p.id_locacao = l.id_locacao
JOIN cliente c ON l.id_cliente = c.id_cliente
GROUP BY c.id_cliente
ORDER BY total_gasto DESC
LIMIT 1;
