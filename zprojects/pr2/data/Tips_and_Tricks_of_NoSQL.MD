Here are some Tips and Tricks for working with NoSQL databases:

1. Determine your data model: Since NoSQL databases don’t require a schema, it is important to have a clear understanding and well-defined data model.

2. Think Query First: Unlike relational databases, NoSQL databases don't work well with arbitrary queries. Define the queries you want to run first, and then optimize your data model around them.

3. Denormalize Your Data: Since NoSQL databases work on a denormalized data model, it is recommended to embed related data and avoid joins as much as possible. 

4. Use a Distributed Architecture: One of the biggest advantages of NoSQL databases is their ability to operate across multiple servers. Consider a distributed architecture for better scalability and high availability.

5. Balance Consistency and Availability: Unlike traditional databases, NoSQL databases often trade consistency for availability, and vice versa. Decide which one is more important for your application, and plan accordingly.

6. Understand the Database-specific Limitations: Each NoSQL database has its own limitations and trade-offs. Make sure that you understand the strengths and limitations of your chosen database and adjust your data model accordingly.

7. Optimize for Performance: NoSQL databases can offer high-speed data processing if optimized appropriately. Make sure to use partitioning, indexing, and other performance optimizations to get the best out of your database.

8. Plan for Disaster Recovery: Data loss can still occur in NoSQL databases, so create a disaster recovery and backup plan to ensure your data is safe in case of unforeseen circumstances.
