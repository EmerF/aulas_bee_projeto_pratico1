CREATE TABLE IF NOT EXISTS produto (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(50),
valor_produto FLOAT,
descricao_produto VARCHAR(50)
);

INSERT INTO produto (nome_produto, valor_produto, descricao_produto)
VALUES
('Sukita', 5.49, '2L'),
('Do Bem sabor laranja', 10.49, '1L'),
('Mikes Ice Tangerina', 5.99, '269ml');

UPDATE produto
SET nome_produto='Do Bem sabor uva'
WHERE nome_produto='Do Bem sabor laranja';

UPDATE produto
SET nome_produto='Mikes Ice Pitaia'
WHERE nome_produto='Mikes Ice Tangerina';

ALTER TABLE produto
ADD COLUMN origem VARCHAR;

INSERT INTO produto (nome_produto, valor_produto, descricao_produto, origem)
VALUES
('Lipton pêssego', 7.49, '1.5L', 'Nacional');

CREATE TABLE if NOT EXISTS tipo_produto(
id INT AUTO_INCREMENT PRIMARY KEY,
nome_tipo_produto VARCHAR(50),
categoria VARCHAR (50)
);

ALTER TABLE produto ADD tipo_produto_id INT;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);


INSERT INTO tipo_produto (nome_tipo_produto, categoria)
VALUES
('Refrigerante', 'Não-alcoólico'),
('Suco', 'Não-alcoólico'),
('Drink pronto', 'Alcoólico'),
('Chá', 'Não-alcoólico');

UPDATE produto
SET tipo_produto_id='1'
WHERE id_produto=1;

UPDATE produto
SET tipo_produto_id='2'
WHERE id_produto=2;

UPDATE produto
SET tipo_produto_id='3'
WHERE id_produto=3;

UPDATE produto
SET tipo_produto_id='4'
WHERE id_produto=4;

SELECT * FROM produto;
SELECT * FROM tipo_produto;

SELECT produto.nome_produto, tipo_produto.nome_tipo_produto, tipo_produto.categoria, produto.descricao_produto, produto.valor_produto
FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;