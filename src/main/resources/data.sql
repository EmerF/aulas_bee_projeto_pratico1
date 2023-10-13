CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    valor DOUBLE,
    descricao VARCHAR(250)
);

INSERT INTO produto (nome, valor, descricao) VALUES
    ('Häagen-Dazs', 6.99, 'sorvetes premium'),
    ('stella artois', 5.99, 'cerveja de cor cristalina, aroma suave e notas maltadas'),
    ('macarrãoinstantâneo', 13.99, 'macarrão pré-cozido');

UPDATE produto SET nome = 'häagen-dazs' WHERE id = 1;

UPDATE produto SET nome = 'macarrão instantâneo' WHERE id = 3;

ALTER TABLE produto ADD COLUMN origem VARCHAR(100);

CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100)
);

ALTER TABLE produto ADD COLUMN tipo_produto_id INT;

ALTER TABLE produto
    ADD CONSTRAINT fk_tipo_produto
        FOREIGN KEY (tipo_produto_id)
            REFERENCES tipo_produto (id);

INSERT INTO tipo_produto (nome, categoria) VALUES
                                               ('sobremesa', 'sobremesa'),
                                               ('bebidas', 'bebidas'),
                                               ('comida instantânea', 'comida instantânea');

UPDATE produto SET tipo_produto_id = 1 WHERE id = 1;
UPDATE produto SET tipo_produto_id = 2 WHERE id = 2;
UPDATE produto SET tipo_produto_id = 3 WHERE id = 3;

SELECT * FROM produto;
SELECT * FROM tipo_produto;
SELECT * FROM produto INNER JOIN tipo_produto ON produto.tipo_produto_id = tipo_produto.id;





