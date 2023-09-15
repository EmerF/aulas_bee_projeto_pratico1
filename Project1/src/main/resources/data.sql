-- creating table

CREATE TABLE product (

    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    description VARCHAR(500)
);

-- insert 3 products

    INSERT INTO product (name, price, description) VALUES
    ('Corona', 10.30, 'Cerveja - Garrafa 330 ml'),
    ('Spaten', 5.50, 'Cerveja - Garrafa Long Neck' ),
    ('Hoegaarden', 7.90, 'Cerveja - Garrafa Long Neck' );

-- Changing the name of 2 products

    UPDATE product SET name = 'Colorado' WHERE id = 2;
    UPDATE product SET name = 'Becks' WHERE id = 3;

-- Add a new column to the table

    ALTER TABLE product
    ADD COLUMN origin TEXT;

-- Insert a new product with the origin column to the table

    INSERT INTO product (name, price, description, origin ) VALUES
    ('Wälls', 14.99, 'Cerveja - 600ml ', 'Belo Horizonte');

-- Create a new table

CREATE TABLE product_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR (50) NOT NULL,
    category VARCHAR (50) NOT NULL
    );

-- Create a relationship

     ALTER TABLE product ADD COLUMN product_type_id INT;
     ALTER TABLE product ADD CONSTRAINT fk_product_type_id FOREIGN KEY (product_type_id) REFERENCES product_type (id);

-- Add 3 products

    INSERT INTO product_type (type_name, category) VALUES
    ('Lager','Cerveja'),
    ('Ipa', 'Cerveja'),
    ('Pilsen', 'Cerveja');

--  selects

    SELECT * FROM product ;

    SELECT * FROM product_type;

--- Inner join

    SELECT product.*, product_type.type_name, product_type.category
    FROM product
    INNER JOIN product_type ON product.product_type_id = product_type.id;