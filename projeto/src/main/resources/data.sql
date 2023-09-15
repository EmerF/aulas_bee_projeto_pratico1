DROP TABLE IF EXISTS product;

CREATE TABLE product (
product_id INT AUTO_INCREMENT PRIMARY KEY,
name_product VARCHAR(50),
price_product DECIMAL(10,2) NOT NULL DEFAULT 0,
description_product VARCHAR(100)
);

-- insert 3 products

INSERT INTO product (name_product, price_product, description_product)
VALUES
('skol',10.80, 'caixa com 12 latas'),
('corona',36.80, 'pack com 6 garrafas'),
('budweiser', 26.80 , 'pack com 6 garrafas');

-- update name 2 products
UPDATE product SET name_product = 'brahma' WHERE product_id = 1;

UPDATE product SET name_product = 'brahma duplo malte' WHERE product_id = 2; 

-- insert column with name origem
ALTER TABLE product ADD COLUMN origem VARCHAR(100);

-- insert new products with column origem

INSERT INTO product (name_product, price_product, description_product, origem)
VALUES
('stella',28.90, 'pack com 6 garrafas', 'made in brazil');


-- Create a sample table tipo product
DROP TABLE IF EXISTS type_product;
CREATE TABLE type_product (
type_id INT PRIMARY KEY AUTO_INCREMENT,
name_type VARCHAR(50),
category VARCHAR(100)
);

-- Create a relationship
ALTER TABLE product ADD COLUMN type_product_id INT;
ALTER TABLE product ADD CONSTRAINT fk_type_product FOREIGN KEY (type_product_id)
REFERENCES type_product(type_id);

-- Insert 3 type of product
INSERT INTO type_product(name_type, category) 
VALUES
('Vienna Lager', 'Viena'),
('Pilsen', 'República Tcheca '),
('Bock', 'Alemanha');

UPDATE product  SET type_product_id = 1 
WHERE product_id = 1;
UPDATE product SET type_product_id = 2
WHERE product_id = 2;

-- SELECT product and type_product
SELECT * FROM product;

SELECT * FROM type_product;

-- SELECT USE DE INNER JOIN 

SELECT DISTINCT product.name_product, product.price_product AS tipo FROM product 
INNER JOIN type_product ON product.type_product_id = type_product_id;