-- 1) Crie a tabela 'funcionarios' (id, nome, departamento, salario)
--    e insira os 10 registros informados.

CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100),
    salario FLOAT
);

INSERT INTO funcionarios (id, nome, departamento, salario) VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(2, 'Daniel Campos', 'Vendas', 3884.44),
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 8853.34),
(10, 'Danilo Souza', 'TI', 8242.14);

-- 2) Selecione todos os registros da tabela 'funcionarios'.
SELECT * FROM funcionarios;

-- 3) Selecione os nomes dos funcionários do departamento 'Vendas'.
SELECT nome FROM funcionarios WHERE departamento = 'Vendas';

-- 4) Selecione os funcionários cujo salário seja maior que 5000.
SELECT * FROM funcionarios WHERE salario > 5000;

-- 5) Liste todos os departamentos distintos da tabela 'funcionarios'.
SELECT DISTINCT departamento FROM funcionarios;

-- 6) Atualize o salário dos funcionários do departamento 'TI' para 7500.
UPDATE funcionarios SET salario = 7500 WHERE departamento = 'TI';

-- 7) Delete os funcionários que ganham menos de 4000.
DELETE FROM funcionarios WHERE salario < 4000;

-- 8) Selecione nomes e salários dos funcionários de 'Vendas'
--    cujo salário seja maior ou igual a 6000.
SELECT nome, salario FROM funcionarios WHERE departamento = 'Vendas' AND salario >= 6000;

-- 9) Crie a tabela 'projetos' (id_projeto, nome_projeto, id_gerente)
--    insira 3 registros e selecione os projetos cujo id_gerente = 2.
CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- 10) Remova a tabela 'funcionarios' do banco de dados.
DROP TABLE funcionarios;
