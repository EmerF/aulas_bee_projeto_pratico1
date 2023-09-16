CREATE TABLE IF NOT EXISTS produto (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_do_produto VARCHAR(50),
valor_do_produto DECIMAL(10, 2),
descricao VARCHAR(100)
);

INSERT INTO produto (nome_do_produto, valor_do_produto, descricao)
VALUES
('Maionese', 8.49, 'Maionese cremosa'),
('Suco de Laranja', 9.50, 'Bebida da fruta'),
('Maçã', 1.32, 'Maçã vermelha');

UPDATE produto SET nome_do_produto = 'Tomate Grande' WHERE id = 1;
UPDATE produto SET nome_do_produto = 'Maçã Pera' WHERE id = 2;

ALTER TABLE produto ADD origem VARCHAR(100);

INSERT INTO produto (nome_do_produto, valor_do_produto, descricao, origem) VALUES
    ('Teclado', 52.90, 'Objeto de trabalho', 'AliAki Exportadora');

CREATE TABLE IF NOT EXISTS tipo_produto (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_do_tipo VARCHAR(50),
categoria VARCHAR(50)
);

INSERT INTO tipo_produto (nome_do_tipo, categoria) VALUES
    ('Industrializado', 'Industrializado'),
    ('Orgânico', 'Bebida'),
    ('Objeto', 'Tecnologia');

ALTER TABLE produto ADD COLUMN tipo_produto_id INT;
ALTER TABLE produto
    ADD CONSTRAINT fk_tipo_produto
    FOREIGN KEY (tipo_produto_id)
    REFERENCES tipo_produto(id);

SELECT * FROM produto;
SELECT * FROM tipo_produto;

SELECT
    p.id,
    p.nome_do_produto,
    p.valor_do_produto,
    p.descricao,
    p.origem,
    t.nome_do_tipo,
    t.categoria
FROM
    produto AS p
INNER JOIN
    tipo_produto AS t
ON
    p.tipo_produto_id = t.id;