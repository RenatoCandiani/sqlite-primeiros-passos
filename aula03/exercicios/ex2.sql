/** Insira os dados tanto na tabela de clientes 
quanto na tabela de produtos utilizando o comando 
INSERT que já aprendemos e executamos juntos em aula.
**/

INSERT INTO tabelaprodutos (
  ID_Produto,
  Nome_do_Produto,
  Descrição,
  Categoria,
  Preco_de_Compra,
  Unidade,
  Fornecedor,
  Data_de_Inclusao)
VALUES
(1, 'Smartphone X', 'Smartphone de última geração', 1, 699.99, 'Unidade', 1, '2023-08-01'),
(2, 'Notebook Pro', 'Notebook poderoso com tela HD', 2, 1199.99, 'Unidade', 2, '2023-08-02'),
(3, 'Tablet Lite', 'Tablet compacto e leve', 3, 299.99, 'Unidade', 3, '2023-08-03');