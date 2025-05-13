CREATE TABLE books(
book_id SERIAL PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(100),
price DECIMAL(100),
stock_quantity VARCHAR(50)
);

CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(50)
);

CREATE TABLE Orders(
order_id SERIAL PRIMARY KEY,
customer_id INT,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount VARCHAR(50)
);