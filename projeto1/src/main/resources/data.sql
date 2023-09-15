-- Criação da tabela produto
DROP TABLE IF EXISTS produto;

CREATE TABLE produto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  valor DECIMAL(10,2),
  descricao TEXT
);

-- Inserção de 3 produtos
INSERT INTO produto (nome, valor, descricao) VALUES
  ('Corona', 12.50, 'A melhor cerveja do mundo'),
  ('Verdinha', 1.00, 'Pior cerveja do mundo, amarga demais'),
  ('Spaten', 15.75, 'Das Bier');

-- Alteração do nome de 2 produtos
UPDATE produto SET nome = 'Brahma' WHERE id = 1;
UPDATE produto SET nome = 'Holandesa' WHERE id = 2;

-- Alteração da tabela produto para incluir a coluna origem
ALTER TABLE produto ADD COLUMN origem TEXT;

-- Inserção de um novo produto com a coluna origem
INSERT INTO produto (nome, valor, descricao, origem) VALUES
  ('Patagonia', 12.00, 'La mejor de todas', 'Patagonia-AR');

-- Criação da tabela tipo_produto
DROP TABLE IF EXISTS tipo_produto;
CREATE TABLE tipo_produto (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  categoria VARCHAR(255)
);

-- Criação do relacionamento entre as tabelas produto e tipo_produto
ALTER TABLE produto ADD COLUMN tipo_produto_id INT;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

-- Inserção de 3 tipos de produtos
INSERT INTO tipo_produto (nome, categoria) VALUES
  ('Pilsen', 'Mexicana'),
  ('Amarga', 'Verstappen'),
  ('Maltada', 'Alemã');

-- Alteração do tipo do produto na produto
UPDATE produto SET tipo_produto_id = 1 WHERE id = 1;
UPDATE produto SET tipo_produto_id = 2 WHERE id = 2;

-- Select na tabela produto
SELECT * FROM produto;

-- Select na tabela tipo_produto
SELECT * FROM tipo_produto;

-- Select nas duas tabelas usando inner join
SELECT produto.nome, produto.valor, tipo_produto.nome AS tipo FROM produto INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;