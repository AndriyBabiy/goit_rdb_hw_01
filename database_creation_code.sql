CREATE TABLE clients (
	client_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255)
)

CREATE TABLE orders (
	order_number INT AUTO_INCREMENT PRIMARY KEY,
	order_date DATE,
	client_id INT,
	FOREIGN KEY (client_id) REFERENCES clients(client_id)
)

ALTER TABLE clients
ADD COLUMN client_address VARCHAR(255)

CREATE TABLE order_details (
	order_number INT,
	item_name VARCHAR(255),
	quantity INT,
	FOREIGN KEY (order_number) REFERENCES orders(order_number)
)

ALTER TABLE order_details
ADD COLUMN item_id INT AUTO_INCREMENT PRIMARY KEY

ALTER TABLE order_details 
MODIFY COLUMN order_number INT AFTER item_id,
MODIFY COLUMN item_name VARCHAR(255) AFTER order_number,
MODIFY COLUMN quantity INT AFTER item_name
