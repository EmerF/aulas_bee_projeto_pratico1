-- Create a sample table product
CREATE TABLE IF NOT EXISTS product (
id INT AUTO_INCREMENT PRIMARY KEY,
name_product VARCHAR(50),
price_product DECIMAL(10,2) NOT NULL DEFAULT 0,
description_product VARCHAR(100)
);

-- insert 3 products

INSERT INTO product (name_product, price_product, description_product)
VALUES
('caderno',10.80, 'caderno ultra moderno de desenho'),
('lapis de cor',30.80, 'lapis de cor aquarelavel 36 cores'),
('caneta borracha', 16.80 , 'caneta borracha com 3 refil');

-- update name 2 products
UPDATE product SET name_product = 'caneta glitter' WHERE id = 1;

UPDATE product SET name_product = 'lapiseira' WHERE id = 2;

-- insert column with name origem
ALTER TABLE product ADD COLUMN origem VARCHAR(100);

-- insert new products with column origem

INSERT INTO product (name_product, price_product, description_product, origem)
VALUES
('lapiseira',18.90, 'lapiseira 0.7', 'made in china');


-- Create a sample table tipo product
CREATE TABLE IF NOT EXISTS type_product (
id INT AUTO_INCREMENT PRIMARY KEY,
name_type VARCHAR(50),
categorie VARCHAR(100)
);
