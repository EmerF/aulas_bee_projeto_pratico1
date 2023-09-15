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
    ('Wals', 19.99, 'Cerveja', 'Belo Horizonte'),
    ('Lipton', 9.99, 'Chá gelado', 'Glasgow'),
    ('Pepsi', 9.99, 'Refrigerante', 'Estados Unidos');

-- Alteração do nome de 2 produtos
UPDATE produto
SET nome_produto = 'Brahma'
WHERE id = 1;

UPDATE produto
SET nome_produto = 'Skol'
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
    ('Tipo 1', 'Categoria 1'),
    ('Tipo 2', 'Categoria 2'),
    ('Tipo 3', 'Categoria 3');