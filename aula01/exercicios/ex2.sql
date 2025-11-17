/** Identifique os clientes que se cadastraram na empresa antes de 2020. 
Liste o nome e a data de cadastro desses clientes. 
Utilize a cláusula WHERE para filtrar os registros. **/

SELECT nome_do_cliente, data_de_cadastro
FROM tabela_de_clientes
WHERE data_de_cadastro < '2020-01-01';