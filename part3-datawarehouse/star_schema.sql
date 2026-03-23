-- Dimension Tables

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue INT,
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert cleaned data

INSERT INTO dim_date VALUES
(1, '2023-01-01', 1, 2023),
(2, '2023-02-01', 2, 2023),
(3, '2023-03-01', 3, 2023);

INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

INSERT INTO dim_product VALUES
(1, 'Phone', 'Electronics'),
(2, 'Laptop', 'Electronics'),
(3, 'Shirt', 'Clothing');

INSERT INTO fact_sales VALUES
(1,1,1,1,2,40000),
(2,1,2,2,1,50000),
(3,2,1,3,5,6000),
(4,2,3,1,1,20000),
(5,3,2,2,2,100000),
(6,3,1,3,3,3600),
(7,1,3,1,1,20000),
(8,2,2,2,1,50000),
(9,3,3,3,4,4800),
(10,1,1,2,1,50000);
