# 🚗 FastCar – Sistema de Locadora (SQL Project)

Este repositório contém todas as entregas da **Experiência Prática IV – Implementação e Manipulação de Dados com SQL**, utilizando MySQL e baseando-se no modelo lógico desenvolvido anteriormente.

---

## 📌 Conteúdo do Repositório

/fastcar-sql
├── create_tables.sql
├── inserts.sql
├── selects.sql
├── updates.sql
├── deletes.sql
└── README.md
Para executar o projeto, basta seguir esta ordem dentro do MySQL Workbench:

1. Criar o banco e todas as tabelas

Abra o arquivo create_tables.sql e execute tudo de uma vez.
Esse script já cria o banco fastcar e todas as tabelas na ordem correta.

2. Inserir os dados iniciais

Depois, execute o arquivo inserts.sql.
Ele popula as tabelas principais com registros suficientes para testar os relacionamentos.

3. Rodar as consultas

Com os dados carregados, execute o arquivo selects.sql.
As consultas mostram:

veículos disponíveis

reservas pendentes

locações com cliente e veículo

total pago por cliente
e outras verificações básicas.

4. Atualizar informações

Execute updates.sql para testar alterações reais, como:

mudança de status do veículo

atualização de email

ajuste no valor total da devolução

5. Remover registros específicos

Por fim, execute deletes.sql, que contém remoções seguras que não quebram as chaves estrangeiras.

📌 Observações gerais

Sempre use o comando USE fastcar; antes dos scripts, caso o Workbench não selecione o schema automaticamente.

Os scripts podem ser executados na ordem acima sem causar conflitos.

Todos foram testados para garantir que não violam integridade referencial.

Caso alguma tabela já exista, basta apagar o banco fastcar e rodar tudo de novo.

📌 Ferramentas utilizadas

MySQL Server 8+

MySQL Workbench
