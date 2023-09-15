-- Create table produto
CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DECIMAL(20,5),
    descricao VARCHAR(100)
);

INSERT INTO produto (nome, valor, descricao) VALUES
    ('H20H', 3.25, 'Suco de fruta natural'),
    ('Do Bem', 8.30, 'Água de coco integral'),
    ('Lipton', 5.50, 'Chá de pêssego');

UPDATE produto SET nome = 'Gatorade' WHERE id = 2;
UPDATE produto SET nome = 'Pepsi' WHERE id = 3;

ALTER TABLE produto
ADD COLUMN origem TEXT;

INSERT INTO produto (nome, valor, descricao, origem) VALUES
    ('Brahma', 10.80, 'Puro malte', 'Rio de Janeiro-BR');

CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100)
);

ALTER TABLE produto
ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
ADD CONSTRAINT fk_tipo_produto
FOREIGN KEY (tipo_produto_id)
REFERENCES tipo_produto(id);

INSERT INTO tipo_produto (nome, categoria) VALUES
     ('H20H', 'Suco'),
     ('Do Bem', 'Água'),
     ('Lipton', 'Chá');

UPDATE produto SET tipo_produto_id = 1 WHERE id = 1;
UPDATE produto SET tipo_produto_id = 2 WHERE id = 2;

SELECT * FROM produto INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;