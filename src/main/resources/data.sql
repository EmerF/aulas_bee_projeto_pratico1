--CRIAÇÃO DA TABELA
CREATE TABLE if NOT EXISTS produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    valor DECIMAL(10, 2),
    descricao VARCHAR(255)
);

--CADASTRO DE PRODUTOS
INSERT INTO produto (nome_produto, valor, descricao) VALUES
    ('Skol', 2.99, 'Cerveja Pilsen de 350ml'),
    ('Pepsi', 1.50, 'Refrigerante de cola em lata de 355ml'),
    ('Suco de Uva Do Bem', 3.99, 'Suco de uva de 1l');

--ALTERAÇÃO DO NOME DO PRODUTO
UPDATE produto
SET nome_produto = 'Budweiser'
WHERE id = 1;

UPDATE produto
SET nome_produto = 'Guaraná Antarctica'
WHERE id = 2;

--ADICIONANDO A COLUNA ORIGEM
ALTER TABLE produto ADD origem VARCHAR(50);

--ADICIONANDO UM PRODUTO NO COLUNA ORIGEM
INSERT INTO produto (origem) VALUES ('Nacional');

--CRIAÇÃO DA TABELA tipo_produto
CREATE TABLE tipo_produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_tipo VARCHAR(100),
    categoria VARCHAR(100)
);

--ADICIONANDO A COLUNA DA CHAVE ESTRANGERA
ALTER TABLE produto ADD tipo_produto_id INT;

--CRIANDO A CONSTRAINT DA CHAVE ESTRANGEIRA
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

--ALIMENTANDO A TABELA tipo_produto
INSERT INTO tipo_produto (nome_do_tipo, categoria) VALUES
    ('Cerveja', 'Alcoólica'),
    ('Cerveja', 'Não Alcoólica'),
    ('Regrigerante', 'Não Alcoólico');

--ADICIONANDO O ID DA DO tipo_produto EM produto
UPDATE produto
SET tipo_produto_id = '1'
WHERE id = 1;

UPDATE produto
SET tipo_produto_id = '3'
WHERE id = 3;

SELECT * FROM produto;
SELECT * FROM tipo_produto;

SELECT produto.*, tipo_produto.*
FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;
