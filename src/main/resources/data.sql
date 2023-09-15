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
    ('Produto A', 10.00, 'Descrição produto A', 'Origem A'),
    ('Produto B', 10.00, 'Descrição produto B', 'Origem B'),
    ('Produto C', 10.00, 'Descrição produto C', 'Origem C');

-- Alteração do nome de 2 produtos
UPDATE produto SET nome_produto = 'Produto A' WHERE nome_produto = 'Novo Nome A';
UPDATE produto SET nome_produto = 'Produto B' WHERE nome_produto = 'Novo Nome B;

-- Criação da tabela "tipo_produto"
CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(50) NOT NULL,
    categoria VARCHAR(50)
);

-- Inserção de 3 tipos de produtos
INSERT INTO tipo_produto (nome_tipo, categoria)
VALUES
    ('Tipo 1', 'Categoria A'),
    ('Tipo 2', 'Categoria B'),
    ('Tipo 3', 'Categoria C');

-- Criação do relacionamento entre as tabelas "produto" e "tipo_produto"
ALTER TABLE produto ADD COLUMN tipo_produto_id INT;

UPDATE produto SET tipo_produto_id = 1 WHERE nome_produto IN ('Novo Nome A', 'Novo Nome B');
UPDATE produto SET tipo_produto_id = 2 WHERE nome_produto = 'Novo Nome A';

-- Selecione produtos
SELECT * FROM produto;

-- Selecione tipos de produtos
SELECT * FROM tipo_produto;

-- Selecione produtos com informações de tipo de produto usando INNER JOIN
SELECT p.*, tp.nome_tipo, tp.categoria FROM produto p INNER JOIN tipo_produto tp ON p.tipo_produto_id = tp.id;