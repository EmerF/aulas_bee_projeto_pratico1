CREATE TABLE IF NOT EXISTS produto(
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome        VARCHAR(50) NOT NULL,
    valor       DOUBLE NOT NULL,
    descricao   VARCHAR(50) NOT NULL
);

INSERT INTO produto (nome, valor, descricao)
VALUES ('Coca-Cola', 5.5, 'Coquinha gelada'), ('Red Bull', 7, 'Te dá asas'), ('Corote', 6, 'Corotinho do bom');

UPDATE produto SET nome = 'Guarana' WHERE id = 1;
UPDATE produto SET nome = 'Sprite' WHERE id = 2;

ALTER TABLE produto ADD origem VARCHAR(50);

INSERT INTO produto (nome, valor, descricao, origem)
VALUES ('Doritos', 15, 'Salgadinho delicia', 'São Paulo');

CREATE TABLE IF NOT EXISTS tipo_produto(
    id         BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome      VARCHAR(50) NOT NULL,
    categoria  VARCHAR(50) NOT NULL
);

ALTER TABLE produto ADD COLUMN tipo_produto_id BIGINT;
ALTER TABLE produto ADD CONSTRAINT fk_tipo_produto FOREIGN KEY (tipo_produto_id) REFERENCES tipo_produto(id);

INSERT INTO tipo_produto (nome, categoria)
VALUES ('Batata', 'Salgadinho'), ('Agua', 'Bebida'), ('Cerveja', 'Bebida');

UPDATE produto SET tipo_produto_id = 1 WHERE id = 1;
UPDATE produto SET tipo_produto_id = 2 WHERE id = 2;

SELECT * FROM produto;

SELECT * FROM tipo_produto;

SELECT * FROM  produto
INNER JOIN    tipo_produto
ON   produto.tipo_produto_id = tipo_produto.id;


