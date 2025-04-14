# MySql-PLP-Assignment-
Bookstore Database Project
Introduction
Welcome to our Bookstore Database Project! This project allows us to collaborate on designing and implementing a real-world database using MySQL. By working together, we aim to develop a well-structured system that efficiently manages books, customers, orders, and shipping details.
What We’re Building
We are creating a fully functional bookstore database that will support essential operations, including managing book inventory, tracking customer orders, and handling shipping processes. Our design consists of multiple interconnected tables, ensuring efficient data storage and retrieval.
Skills We’ll Gain
Throughout this project, we will develop valuable database skills, including:
- Designing an optimized MySQL database schema.
- Defining relationships between entities for data integrity.
- Managing database access through user roles for security.
- Querying data to extract meaningful business insights.

Database Tables
Here is the core structure of our bookstore database:
1. Book Management
- book: Stores details of books available in the store.
- book_author: Manages the many-to-many relationship between books and authors.
- author: Holds information about different authors.
- book_language: Stores possible languages of books.
- publisher: Keeps track of book publishers.

2. Customer & Address Management
- customer: Stores customer details.
- customer_address: Links customers to multiple addresses.
- address_status: Defines the status of an address (e.g., current, old).
- address: Contains all address details.
- country: Tracks countries associated with addresses.

3. Order & Shipping Management
- cust_order: Stores customer order details.
- order_line: Links books to specific orders.
- - shipping_method: Defines possible shipping methods.

- order_history: Keeps a record of order events (e.g., ordered, canceled, delivered).
- order_status: Lists possible statuses of an order (e.g., pending, shipped, delivered).

How We Will Use This Database
Once implemented, we will be able to: ✅ Store and manage book inventory
✅ Track customer details and multiple addresses
✅ Process orders and manage shipping
✅ Record order history and statuses
✅ Run queries to analyze book sales, customer activity, and shipping efficiency
Collaboration & Roles
Since this is a group project, we are dividing responsibilities to ensure smooth execution:
- Database Design – Setting up tables and relationships.
- Data Entry & Management – Adding sample data.
- Query Writing – Creating useful SQL queries.
- Security & User Roles – Managing database access permissions.
- Documentation & Reporting – Writing reports and organizing findings.

We will be using GitHub for version control, allowing us to collaborate seamlessly.
Next Steps
Now that our database structure is defined, our next steps are:
- Finalizing primary and foreign keys for relationships.
- Populating the database with sample records.
- Optimizing indexing and security settings for performance.
- Testing SQL queries to retrieve meaningful insights.

Conclusion
This project gives us the opportunity to apply database design principles to a practical scenario. Through teamwork, we will gain valuable MySQL experience while developing a functional system that simulates real-world business operations.
We’re excited to bring this database to life! 🚀

