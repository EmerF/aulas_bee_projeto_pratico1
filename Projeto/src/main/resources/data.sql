CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    valor_produto DECIMAL(10, 2),
    descricao TEXT
);

INSERT INTO produto (nome_produto, valor_produto, descricao)
VALUES ('Skol', 2.59, 'cerveja clara e suave'),
       ('Brahma', 2.69, 'cerveja clara de excelente qualidade'),
       ('Gatorade Morango Maracujá', 5.99, 'Bebida para atletas');


UPDATE produto
SET nome_produto = 'Corona'
WHERE id = 1;

UPDATE produto
SET nome_produto = 'Stella'
WHERE id = 2;


ALTER TABLE produto
ADD COLUMN origem VARCHAR(255);

INSERT INTO produto (nome_produto, valor_produto, descricao, origem)
VALUES ('Wals', 8.75, 'Cerveja artesanal suave', 'Cervejaria Wals');

CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(255),
    categoria VARCHAR(255)
);

ALTER TABLE produto
ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
ADD CONSTRAINT fk_tipo_produto
    FOREIGN KEY (tipo_produto_id)
    REFERENCES tipo_produto(id);

INSERT INTO tipo_produto (nome_tipo, categoria)
VALUES ('Cerveja', 'Alcoólico'),
       ('Suco', 'Não Alcoólico'),
       ('Isotônico', 'Não Alcoólico');

SELECT * FROM produto;

SELECT * FROM tipo_produto;

SELECT produto.*, tipo_produto.nome_tipo FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;
