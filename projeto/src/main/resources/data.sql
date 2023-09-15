-- Create a sample table and insert data
CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_product VARCHAR(50),
    price DECIMAL(50,3),
    description VARCHAR(100)
    );

INSERT INTO produto (name_product, price, description) VALUES
    ('Cerveja', 5.00, 'Lata'),
    ('Agua', 3.50, 'Garrafa'),
    ('Refrigerante', 9.00, 'Garrafa 2L');

UPDATE produto SET name_product = 'Energetico' WHERE id=1;
UPDATE produto SET name_product = 'Suco' WHERE id=2;

ALTER TABLE produto
ADD COLUMN origin TEXT;

INSERT INTO produto (name_product, price, description, origin) VALUES
     ('Agua com gás', 4.50, 'Lata', 'São Paulo/SP');

CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(100)
    );

ALTER TABLE produto
ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
ADD CONSTRAINT fk_tipo_produto
FOREIGN KEY (tipo_produto_id)
REFERENCES tipo_produto(id);

INSERT INTO tipo_produto (name, category) VALUES
     ('Agua com gás', 'Agua'),
     ('Cerveja', 'Alcoolicos'),
     ('Chá Limão', 'Chás');

UPDATE produto SET tipo_produto_id = 1 WHERE id = 1;
UPDATE produto SET tipo_produto_id = 2 WHERE id = 2;

SELECT * FROM produto INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;