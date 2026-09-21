CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    age INT,
    city VARCHAR(20),
    address VARCHAR(200)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT
);

CREATE TABLE return_items (
    return_item_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT,
    return_date DATE NOT NULL,
    return_reason VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    shipment_date DATE NOT NULL,
    delivery_date DATE,
    shipment_status VARCHAR(30) NOT NULL
);

INSERT INTO customers
(customer_id, customer_name, email, age, city, address)
VALUES
(101, 'ARPIT', 'ARPIT@123', 23, 'BAREILLY', 'MADHINATH'),
(102, 'DEVANSH', 'DEVANSH@345', 24, 'LUCKNOW', 'BULANDSHAHR'),
(103, 'KAVITA', 'KAVITA@234', 20, 'AGRA', 'PHOOLBAGH'),
(104, 'RAHUL', 'RAHUL@321', 25, 'BAREILLY', 'SUBHASH NAGAR');

INSERT INTO products
(product_id, product_name, category, price, stock)
VALUES
(201, 'LAPTOP', 'ELECTRONICS', 20000.00, 20),
(202, 'DESKTOP', 'ELECTRONICS', 35000.50, 35),
(203, 'HEADPHONES', 'ACCESSORIES', 15000.00, 25),
(204, 'MOBILE', 'ACCESSORIES', 12000.50, 40);

INSERT INTO return_items
(return_item_id, customer_id, product_id, return_date, return_reason)
VALUES
(601, 102, 204, '2026-09-12', 'PRODUCT DAMAGED'),
(602, 104, 202, '2026-09-17', 'PRODUCT MISSING');

INSERT INTO shipments
(shipment_id, order_id, shipment_date, delivery_date, shipment_status)
VALUES
(501, 602, '2026-09-15', '2026-09-20', 'DELIVERED'),
(502, 601, '2026-09-18', NULL, 'IN TRANSIT');

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM return_items;
SELECT * FROM shipments;