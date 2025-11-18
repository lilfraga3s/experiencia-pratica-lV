USE fastcar;

-- 1. Remover multa específica
DELETE FROM multa_avaria
WHERE id_multa = 1;

-- 2. Remover uma manutenção registrada incorretamente
DELETE FROM manutencao
WHERE id_manutencao = 1;

-- 3. Deletar reserva não vinculada a locação
DELETE FROM reserva
WHERE id_reserva = 2 AND id_reserva NOT IN (SELECT id_reserva FROM locacao);
