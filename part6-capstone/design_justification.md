## Storage Systems

For patient records and hospital transactions, I used a relational database (MySQL) because it ensures strong consistency, reliability, and supports structured data. This is important since patient information must always remain accurate.

For ICU monitoring data, I used a streaming system such as Kafka because the data is generated continuously in real-time. This allows efficient ingestion and processing of high-frequency vital signals.

For reporting and analytics, I used a data warehouse. It stores cleaned and structured data optimized for queries like monthly reports, bed occupancy, and cost analysis.

For natural language search, I used a vector database. Patient notes and records are converted into embeddings and stored in this system. This allows doctors to search patient history using plain English queries.

## OLTP vs OLAP Boundary

The OLTP system consists of the MySQL database where real-time patient transactions such as admissions, treatments, and updates are recorded. This system handles frequent inserts and updates.

The OLAP system begins at the data warehouse. Data is extracted from the OLTP system through ETL pipelines, cleaned, and transformed into a format suitable for analysis. The warehouse is used for reporting and decision-making.

The boundary lies between the transactional database (MySQL) and the analytical systems (data warehouse and AI models). Once data leaves the OLTP system and is processed for analysis, it becomes part of OLAP.

## Trade-offs

One major trade-off in this architecture is increased system complexity. Using multiple systems such as MySQL, Kafka, a data warehouse, and a vector database increases the difficulty of managing and maintaining the system.

This can be mitigated by using automated data pipelines and orchestration tools to handle data flow between systems. Proper monitoring and logging can also help ensure system reliability. Although complex, this design provides scalability, flexibility, and better performance for different use cases.
