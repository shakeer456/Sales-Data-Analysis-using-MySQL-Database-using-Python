CREATE DATABASE sales_db;

USE sales_db;


CREATE TABLE sales(

id INT AUTO_INCREMENT PRIMARY KEY,

product VARCHAR(50),

quantity INT,

price DECIMAL(10,2)

);


INSERT INTO sales(product,quantity,price)
VALUES
('Laptop',2,60000),
('Mouse',5,500),
('Keyboard',3,1200),
('Laptop',1,60000),
('Mouse',7,500),
('Keyboard',2,1200),
('Monitor',4,15000),
('Monitor',1,15000);


SELECT * FROM sales;