-- Criação da tabela "produto"
CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    valor_produto DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(100),
    origem TEXT
);

-- Inserção de 3 produtos
INSERT INTO produto (nome_produto, valor_produto, descricao, origem)
VALUES
    ('Spaten', 10.00, 'cerveja gostosa', 'Bebida forte'),
    ('Skol', 15.00, 'Skol é uma marca de cerveja', 'Bebida alcoolica'),
    ('Brahma', 20.00, 'a melhor cerveja', 'Bebida com alcool');

-- Alteração do nome de 2 produtos
UPDATE produto
SET nome_produto = 'corona'
WHERE id = 1;

UPDATE produto
SET nome_produto = 'stella'
WHERE id = 2;

-- Criação da tabela "tipo_produto"
CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(50) NOT NULL,
    categoria VARCHAR(50)
);

-- Criação do relacionamento entre as tabelas "produto" e "tipo_produto"
ALTER TABLE produto
ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
ADD FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

-- Inserção de 3 tipos de produtos
INSERT INTO tipo_produto (nome_tipo, categoria)
VALUES
    ('Cerveja', 'bebida 1'),
    ('Refrigerante', 'bebida 2'),
    ('suco', 'bebida 3');