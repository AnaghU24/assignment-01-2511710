## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, new products cannot be inserted unless an order exists. Product information is tied to order rows.

### Update Anomaly
Customer data such as city is repeated across multiple rows. Updating it requires changing multiple records, which can lead to inconsistency.

### Delete Anomaly
Deleting an order may remove important information. If a customer has only one order, deleting it removes all customer data.

## Normalization Justification

Keeping all data in a single table may appear simple, but it leads to redundancy and inconsistencies. In the dataset, customer, product, and order details are repeated across multiple rows. This increases storage and creates update problems.

For example, if a customer’s city changes, multiple rows must be updated. Missing one leads to inconsistent data. Similarly, new products cannot be added without creating an order, and deleting an order may remove customer information.

By normalizing into separate tables such as customers, products, and orders, we eliminate redundancy and ensure consistency. Each piece of data is stored only once, making updates easier and preventing anomalies.

Therefore, normalization is necessary for maintaining data integrity and scalability.
