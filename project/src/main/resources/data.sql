-- Create the produto table
CREATE TABLE produto (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  descricao VARCHAR(1000),
  origem TEXT,
  PRIMARY KEY (id)
);

-- Insert 3 products
INSERT INTO produto (nome, valor, descricao, origem) VALUES
  ('Product A', 10.50, 'Description A', 'Origin A'),
  ('Product B', 20.00, 'Description B', 'Origin B'),
  ('Product C', 5.99, 'Description C', 'Origin C');

-- Update the name of 2 products
UPDATE produto SET nome = 'New Name A' WHERE id = 1;
UPDATE produto SET nome = 'New Name B' WHERE id = 2;

-- Add a new column to the produto table
ALTER TABLE produto ADD COLUMN origem TEXT;

-- Insert a new product with the origem column
INSERT INTO produto (nome, valor, descricao, origem) VALUES
  ('Product D', 15.75, 'Description D', 'Origin D');

-- Create the tipo_produto table
CREATE TABLE tipo_produto (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  categoria VARCHAR(100),
  PRIMARY KEY (id)
);

-- Create a relationship between the produto and tipo_produto tables
ALTER TABLE produto ADD COLUMN tipo_produto_id INT;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

-- Insert 3 types of products
INSERT INTO tipo_produto (nome, categoria) VALUES
  ('Type A', 'Category A'),
  ('Type B', 'Category B'),
  ('Type C', 'Category C');

-- Select all products
SELECT * FROM produto;

-- Select all types of products
SELECT * FROM tipo_produto;

-- Select all products with their corresponding type
SELECT produto.*, tipo_produto.nome AS tipo_produto_nome, tipo_produto.categoria AS tipo_produto_categoria
FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;