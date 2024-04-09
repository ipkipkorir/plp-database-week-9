-- create a database schema
CREATE DATABASE plplibrarydb;

-- connect to the database
USE plplibrarydb;

-- create table named books
CREATE TABLE books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    Author VARCHAR(200) NOT NULL,
    Genre VARCHAR(55),
    PublicationYear YEAR
);

-- inserting sample data into table 'books'
INSERT INTO books (BookID, Title, Author, Genre, PublicationYear )
VALUES
    (1, 'Database Programming with MySQL', 'Fatima John', 'Computer Science', 2020),
    (2, 'Front End Development with REACT Library', 'John Doe', 'Computer Scince', 2024),
    (3, 'African History', 'George Wepughulu', 'African History', 2020),
    (4, 'Things Fall Apart', 'Chinua Achebe', 'African Literature', 1958);

-- perform data manipulation
-- Retrieve all columns for books published in the year 2020
SELECT * FROM books WHERE PublicationYear=2020;

-- Find the distinct genres available in the Books table
SELECT DISTINCT Genre FROM books;

-- update table 'books'
UPDATE books SET Genre='Computer Science' WHERE BookID=2;

-- Alias the column Author as BookAuthor in a query result
SELECT Title, Author AS BookAuthor, Genre, PublicationYear FROM books;