CREATE TABLE produto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  descricao TEXT
);

INSERT INTO produto (nome, valor, descricao) VALUES
  ('Produto 1', 10.50, 'Descrição do produto 1'),
  ('Produto 2', 20.00, 'Descrição do produto 2'),
  ('Produto 3', 15.75, 'Descrição do produto 3');


UPDATE produto SET nome = 'Novo nome do produto 1' WHERE id = 1;
UPDATE produto SET nome = 'Novo nome do produto 2' WHERE id = 2;


ALTER TABLE produto ADD COLUMN origem TEXT;


INSERT INTO produto (nome, valor, descricao, origem) VALUES
  ('Produto 4', 12.00, 'Descrição do produto 4', 'Origem do produto 4');


CREATE TABLE tipo_produto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  categoria VARCHAR(50) NOT NULL
);


ALTER TABLE produto ADD COLUMN tipo_produto_id INT NOT NULL;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);


INSERT INTO tipo_produto (nome, categoria) VALUES
  ('Tipo 1', 'Categoria 1'),
  ('Tipo 2', 'Categoria 1'),
  ('Tipo 3', 'Categoria 2');


SELECT * FROM produto;


SELECT * FROM tipo_produto;


SELECT produto.nome, produto.valor, tipo_produto.nome AS tipo_produto_nome, tipo_produto.categoria
FROM produto
INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;