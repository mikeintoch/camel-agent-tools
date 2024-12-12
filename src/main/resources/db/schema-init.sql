
DROP TABLE IF EXISTS products;

CREATE TABLE IF NOT EXISTS products (
    id SERIAL NOT NULL,
    name VARCHAR(100) NOT NULL,
    description varchar(150),
    category VARCHAR(50),
    size VARCHAR(20),
    color VARCHAR(20),
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY (id)
);

    INSERT INTO products (name, description, category, size, color, price, stock)
VALUES
    ('Blue shirt', 'Cotton shirt, short-sleeved', 'Shirts', 'M', 'Blue', 29.99, 10),
    ('Black pants', 'Jeans, high waisted', 'Pants', '32', 'Black', 49.99, 5),
    ('White Sneakers', 'Sneakers', 'Shoes', '40', 'White', 69.99, 8),
    ('Floral Dress', 'Summer dress, floral print, thin straps.', 'Dress', 'M', 'Pink', 39.99, 12),
    ('Skinny Jeans', 'Dark denim jeans, high waist, skinny fit.', 'Pants', '28', 'Blue', 44.99, 18),
    ('White Sneakers', 'Casual sneakers, rubber sole, minimalist design.', 'Shoes', '40', 'White', 59.99, 10),
    ('Beige Chinos', 'Casual dress pants, straight cut, elastic waist.', 'Pants', '32', 'Beige', 39.99, 15),
    ('White Dress Shirt', 'Cotton shirt, long sleeves, classic collar.', 'Shirts', 'M', 'White', 29.99, 20),
    ('Brown Hiking Boots', 'Waterproof boots, rubber sole, perfect for hiking.', 'Shoes', '42', 'Brown', 89.99, 7),
    ('Distressed Jeans', 'Distressed denim jeans, mid-rise, regular fit.', 'Pants', '30', 'Blue', 49.99, 12);