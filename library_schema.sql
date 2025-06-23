
-- Create the database
CREATE DATABASE LibraryDB;
GO

-- Use the database
USE LibraryDB;
GO

-- Table: Authors
CREATE TABLE Authors (
    author_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    biography TEXT
);

-- Table: Publishers
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

-- Table: Books
CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(255) NOT NULL,
    author_id INT FOREIGN KEY REFERENCES Authors(author_id),
    publisher_id INT FOREIGN KEY REFERENCES Publishers(publisher_id),
    published_year INT,
    isbn VARCHAR(20) UNIQUE,
    copies_available INT DEFAULT 1
);

-- Table: Members
CREATE TABLE Members (
    member_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

-- Table: Loans
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY IDENTITY(1,1),
    book_id INT FOREIGN KEY REFERENCES Books(book_id),
    member_id INT FOREIGN KEY REFERENCES Members(member_id),
    loan_date DATE NOT NULL,
    due_date DATE,
    return_date DATE
);
