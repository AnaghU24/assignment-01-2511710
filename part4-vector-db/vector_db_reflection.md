## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal documents like 500-page contracts. Keyword search relies on exact word matching, which means it may miss relevant information if the wording in the document is different from the query. For example, a query like "termination clauses" may not match sections that use slightly different terms like "contract ending conditions."

A vector database solves this problem by using embeddings, which capture the semantic meaning of text. Instead of matching exact words, it compares the meaning of the query with the meaning of document sections. This allows the system to retrieve relevant results even if the wording is different.

In this system, contracts would first be broken into smaller chunks and converted into embeddings using a model. These embeddings are stored in a vector database. When a lawyer asks a question, the query is also converted into an embedding, and the system finds the most similar chunks based on cosine similarity.

This approach enables more accurate and intelligent search, making it ideal for legal applications where understanding context is critical.
