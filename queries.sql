-- Insert data into tables
INSERT INTO country (country_name) VALUES ('United States'), ('Canada'), ('United Kingdom');

INSERT INTO address (street, city, state, postal_code, country_id) 
VALUES 
('123 Main St', 'New York', 'NY', '10001', 1),
('456 Maple Ave', 'Toronto', 'ON', 'M4B 1B4', 2),
('789 High St', 'London', NULL, 'SW1A 1AA', 3);

INSERT INTO publisher (publisher_name, address_id) 
VALUES 
('Penguin Random House', 1),
('HarperCollins', 2),
('Oxford University Press', 3);

INSERT INTO book_language (language_name) VALUES ('English'), ('French'), ('Spanish');

INSERT INTO author (first_name, last_name, bio) 
VALUES 
('George', 'Orwell', 'English novelist and essayist, journalist and critic.'),
('Jane', 'Austen', 'English novelist known for her six major novels.'),
('Mark', 'Twain', 'American writer, humorist, entrepreneur, publisher, and lecturer.');

INSERT INTO book (title, publication_year, publisher_id, language_id) 
VALUES 
('1984', 1949, 1, 1),
('Pride and Prejudice', 1813, 3, 1),
('The Adventures of Tom Sawyer', 1876, 2, 1);

INSERT INTO book_author (book_id, author_id) 
VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO customer (first_name, last_name, email, phone) 
VALUES 
('John', 'Doe', 'john.doe@example.com', '+27 72 567 9890'),
('Jane', 'Smith', 'jane.smith@example.com', '+254 98 765 4321');

INSERT INTO customer_address (customer_id, address_id) 
VALUES 
(1, 1),
(2, 2);

INSERT INTO shipping_method (method_name, cost) 
VALUES 
('Standard Shipping', 5.99),
('Express Shipping', 15.99);

INSERT INTO order_status (status_description) 
VALUES 
('Pending'), 
('Shipped'), 
('Delivered');

INSERT INTO cust_order (customer_id, order_date, shipping_method_id, order_status_id) 
VALUES 
(1, '2023-10-01 10:00:00', 1, 1),
(2, '2023-10-02 14:30:00', 2, 2);

INSERT INTO order_line (order_id, book_id, quantity) 
VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1);

INSERT INTO order_history (order_id, status_id, change_date) 
VALUES 
(1, 1, '2023-10-01 10:00:00'),
(1, 2, '2023-10-02 12:00:00'),
(2, 1, '2023-10-02 14:30:00');
