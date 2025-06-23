# Library Management System

This project is a basic **Library Management System** using SQL Server. It includes SQL scripts to create the database schema and an ER diagram for visual understanding.

## 📚 Features

- Manage books, authors, publishers, and members.
- Track book loans and returns.
- Normalize data with clear foreign key relationships.

## 🗂️ Database Schema

The system consists of the following tables:

1. **Authors**: Stores author details.
2. **Publishers**: Stores publisher details.
3. **Books**: Stores book details with references to authors and publishers.
4. **Members**: Stores member information.
5. **Loans**: Tracks book borrow and return activity.

## 🔑 Keys and Relationships

- Each `Book` is written by one `Author` and published by one `Publisher`.
- A `Member` can borrow many `Books`, and each loan is tracked in the `Loans` table.
- Foreign key constraints ensure data integrity.

## 📦 Files Included

- `library_schema.sql`: SQL Server script to create the database schema.
- `library_er_diagram.png`: ER diagram representing the database structure.
- `README.md`: This documentation file.

## 🛠️ How to Use

1. Open SQL Server Management Studio or any compatible SQL client.
2. Run the `library_schema.sql` script to create the database and tables.
3. Use the schema to build a frontend or manage library operations.

## 📝 Author

Created by Anitha R  
M.E in Computer Science 
