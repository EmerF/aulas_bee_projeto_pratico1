CREATE TABLE produto
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    nome      VARCHAR(255),
    valor     DECIMAL(10, 2),
    descricao TEXT
);

INSERT INTO produto (nome, valor, descricao)
VALUES ('PEPSI', 4.00, 'Bebida gaseificada sabor cola 2L'),
       ('Guarana Antartica', 4.20, 'Bebida gaseificada sabor guarana 2L'),
       ('Do Bem - Agua de Coco', 3.25, 'Agua de coco natural 1L');

UPDATE produto
SET nome = 'PEPSI - BLACK'
WHERE id = 1;

UPDATE produto
SET nome = 'Sukita'
WHERE id = 2;

ALTER TABLE produto
    ADD COLUMN origem TEXT;

INSERT INTO produto (nome, valor, descricao, origem)
VALUES ('Red Bull', 15.30, 'Bebida cafeinada, energetica 330ml', 'AmBev');

CREATE TABLE tipo_produto
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    nome      VARCHAR(255),
    categoria VARCHAR(255)
);

ALTER TABLE produto
    ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
    ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto (id);

INSERT INTO tipo_produto (nome, categoria)
VALUES ('Refrigerante', 'Bebida gaseificada'),
       ('Energetico', 'Bebida cafeinada'),
       ('Agua de Coco', 'Bebida natural');

UPDATE produto SET tipo_produto_id = 1 WHERE id IN (1, 2);

UPDATE produto SET tipo_produto_id = 2 WHERE id = 4;

UPDATE produto SET tipo_produto_id = 3 WHERE id = 3;

SELECT *
FROM produto;
SELECT *
FROM tipo_produto;
SELECT *
FROM produto
         INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;