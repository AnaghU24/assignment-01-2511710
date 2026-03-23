-- Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Data

INSERT INTO customers VALUES
('C1', 'Anagh', 'Bangalore'),
('C2', 'Rahul', 'Mumbai'),
('C3', 'Priya', 'Delhi'),
('C4', 'Neha', 'Chennai'),
('C5', 'Arjun', 'Mumbai');

INSERT INTO sales_reps VALUES
('S1', 'Ramesh'),
('S2', 'Suresh'),
('S3', 'Amit'),
('S4', 'Kiran'),
('S5', 'Vijay');

INSERT INTO products VALUES
('P1', 'Phone', 20000),
('P2', 'Laptop', 50000),
('P3', 'Shoes', 3000),
('P4', 'Watch', 5000),
('P5', 'Bag', 1500);

INSERT INTO orders VALUES
('O1', 'C1', 'S1', '2023-01-01'),
('O2', 'C2', 'S2', '2023-01-02'),
('O3', 'C3', 'S3', '2023-01-03'),
('O4', 'C1', 'S1', '2023-01-04'),
('O5', 'C5', 'S4', '2023-01-05');

INSERT INTO order_items VALUES
(1, 'O1', 'P1', 1),
(2, 'O2', 'P2', 1),
(3, 'O3', 'P3', 2),
(4, 'O4', 'P4', 1),
(5, 'O5', 'P5', 3);
