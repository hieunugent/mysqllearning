USE Sale;
CREATE TABLE customers(
	id INT auto_increment primary key,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100)
);
CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);