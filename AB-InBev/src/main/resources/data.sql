-- Criação da tabela 'produto'
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor_produto DECIMAL(10, 2) NOT NULL,
    descricao TEXT
);

-- Inserção de 3 produtos
INSERT INTO produto (nome_produto, valor_produto, descricao)
VALUES
    ('COLORADO', 10.99, 'LAGGER '),
    ('DOBEM', 15.99, 'SUCO DE UVA'),
    ('EISENBAHN', 20.99, 'CERVEJA 365ML');

-- Alteração do nome de 2 produtos
UPDATE produto
SET nome_produto = 'GATORADE'
WHERE id = 2;

UPDATE produto
SET nome_produto = 'SKOL'
WHERE id = 3;

-- Adição da coluna 'origem' à tabela 'produto'
ALTER TABLE produto
ADD origem TEXT;

-- Inserção de um novo produto com a coluna 'origem'
INSERT INTO produto (nome_produto, valor_produto, descricao, origem)
VALUES
    ('CORONA', 25.99, 'DOMINIC TORETTO', 'DA HORTA DIRETO PARA AB-INBEV');

-- Criação da tabela 'tipo_produto'
CREATE TABLE tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(255) NOT NULL,
    categoria VARCHAR(255)
);

-- Criação do relacionamento entre as tabelas 'produto' e 'tipo_produto'
ALTER TABLE produto
ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
ADD CONSTRAINT fk_tipo_produto
FOREIGN KEY (tipo_produto_id)
REFERENCES tipo_produto(id);

-- Inserção de 3 tipos de produtos
INSERT INTO tipo_produto (nome_tipo, categoria)
VALUES
    ('CERVEJA', 'Categoria A'),
    ('DESTILADOS', 'Categoria B'),
    ('SUCO', 'Categoria C');

-- Select na tabela 'produto'
SELECT * FROM produto;

-- Select na tabela 'tipo_produto'
SELECT * FROM tipo_produto;

-- Select nas duas tabelas usando INNER JOIN
SELECT produto.nome_produto, produto.valor_produto, tipo_produto.nome_tipo, tipo_produto.categoria
FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;
