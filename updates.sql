USE fastcar;

-- 1. Atualizar o status de um veículo
UPDATE veiculo
SET status = 'manutencao'
WHERE id_veiculo = 2;

-- 2. Corrigir email de cliente
UPDATE cliente
SET email = 'ana.silva@novoemail.com'
WHERE id_cliente = 1;

-- 3. Atualizar valor total da devolução
UPDATE devolucao
SET valor_total = 520.00
WHERE id_devolucao = 1;
