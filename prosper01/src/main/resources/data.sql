-- Criação da tabela produto
CREATE TABLE produto (
                         id_produto INT AUTO_INCREMENT PRIMARY KEY,
                         nome_do_produto VARCHAR(255),
                         valor_do_produto DECIMAL(10, 2),
                         descricao TEXT
);

-- Inserção de 3 produtos
INSERT INTO produto (nome_do_produto, valor_do_produto, descricao) VALUES
                                                                       ('Produto1', 10.99, 'Descrição do Produto1'),
                                                                       ('Produto2', 15.49, 'Descrição do Produto2'),
                                                                       ('Produto3', 25.00, 'Descrição do Produto3');

-- Alteração do nome dos produtos
UPDATE produto SET nome_do_produto = 'Produto1 alterado' WHERE id_produto = 1;
UPDATE produto SET nome_do_produto = 'Produto2 alterado' WHERE id_produto = 2;

-- Adição da coluna origem
ALTER TABLE produto ADD origem TEXT;

-- Inserção de um novo produto com a coluna origem
INSERT INTO produto (nome_do_produto, valor_do_produto, descricao, origem) VALUES
    ('Produto4', 35.50, 'Descrição do Produto4', 'Brasil');

-- Criação da tabela tipo_produto
CREATE TABLE tipo_produto (
                              id INT AUTO_INCREMENT PRIMARY KEY,
                              nome_do_tipo VARCHAR(255),
                              categoria VARCHAR(255)
);

-- Adição da coluna tipo_id na tabela produto e criação do relacionamento
ALTER TABLE produto ADD tipo_id INT;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_id) REFERENCES tipo_produto(id);

-- Inserção de 3 tipos de produtos
INSERT INTO tipo_produto (nome_do_tipo, categoria) VALUES
                                                       ('Tipo1', 'Categoria1'),
                                                       ('Tipo2', 'Categoria2'),
                                                       ('Tipo3', 'Categoria3');

-- Seleção das tabelas
SELECT * FROM produto;
SELECT * FROM tipo_produto;

-- Seleção usando INNER JOIN
SELECT *
FROM produto p
         INNER JOIN tipo_produto tp ON p.tipo_id = tp.id;
