CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    valor_produto DECIMAL(10, 2),
    descricao TEXT
);

INSERT INTO produto (nome_produto, valor_produto, descricao)
VALUES ('Brahma', 5.50, 'Cerveja Delicia- Puro Malte'),
       ('Lipton', 8.00, 'Chá Gelado Delicia - Morango'),
       ('Budweiser', 15.75, 'Cerveja Delicia- Long Neck');

UPDATE produto SET nome_produto = 'Bud Light' WHERE id = 1;
UPDATE produto SET nome_produto = 'Spaten' WHERE id = 2;

ALTER TABLE produto ADD COLUMN origem TEXT;

INSERT INTO produto (nome_produto, valor_produto, descricao, origem)
VALUES ('Corona', 8.90, 'Cerveja', 'AB InBev');

CREATE TABLE tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(255),
    categoria VARCHAR(255)
);

ALTER TABLE produto ADD COLUMN tipo_produto_id INT;

INSERT INTO tipo_produto (nome_tipo, categoria)
VALUES ('Tipo 1', 'Cerveja'),
       ('Tipo 2', 'Chá'),
       ('Tipo 3', 'Suco');

ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

SELECT * FROM produto;
SELECT * FROM tipo_produto;
SELECT * FROM produto INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;