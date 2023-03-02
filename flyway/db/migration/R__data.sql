INSERT INTO products (name, description, price)
VALUES ('Sample Product 1', 'Dummy product description 1', 99.99), ('Sample Product 2', 'Dummy product description 1', 999.90);

INSERT INTO customers (first_name, last_name, email, address)
VALUES ('John', 'White', 'john_white@email.com', '4187 Ross Street, Makanda, IL');

INSERT INTO orders (customer_id, total_price)
VALUES (1, 99.99), (1, 99.99), (1, 999.90);
