CREATE DATABASE Library_System;
USE Library_System;
-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    genre_id INT,
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

INSERT INTO Books (book_id, title, author_id, genre_id, publication_year) VALUES
(1, 'The Great Gatsby', 1, 1, 1925),
(2, 'To Kill a Mockingbird', 3, 2, 1960),
(3, 'Pride and Prejudice', 2, 3, 1813),
(4, '1984', 2, 4, 1949),
(5, 'The Catcher in the Rye', 5, 1, 1951),
(6, 'Harry Potter and the Philosopher''s Stone', 6, 2, 1997),
(7, 'The Hobbit', 5, 1, 1937),
(8, 'The Da Vinci Code', 3, 3, 2003),
(9, 'The Lord of the Rings', 6, 1, 1954),
(10, 'The Alchemist', 4, 4, 1988);
-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    nationality VARCHAR(100)
);
INSERT INTO Authors (author_id, name, nationality) VALUES
(1, 'F. Scott Fitzgerald', 'American'),
(2, 'Harper Lee', 'American'),
(3, 'Jane Austen', 'British'),
(4, 'George Orwell', 'British'),
(5, 'J.D. Rowling', 'American'),
(6, 'J.K. Rowling', 'British');
-- Create Genres table
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100)
);
INSERT INTO Genres (genre_id, genre_name) VALUES
(1, 'Fiction'),
(2, 'Novel'),
(3, 'Romance'),
(4, 'Dystopian'),
(5, 'Mystery'),
(6, 'Fantasy');
-- Create Borrowers table
CREATE TABLE Borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);
INSERT INTO Borrowers (borrower_id, name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Alice Johnson', 'alice@example.com'),
(4, 'David Brown', 'david@example.com'),
(5, 'Emily Davis', 'emily@example.com'),
(6, 'Michael Wilson', 'michael@example.com'),
(7, 'Sophia Martinez', 'sophia@example.com'),
(8, 'William Anderson', 'william@example.com'),
(9, 'Olivia Taylor', 'olivia@example.com'),
(10, 'Daniel Thomas', 'daniel@example.com');
-- Create Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT,
    borrower_id INT,
    checkout_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (borrower_id) REFERENCES Borrowers(borrower_id)
);
INSERT INTO Transactions (transaction_id, book_id, borrower_id, checkout_date, return_date) VALUES
(1, 4, 1, '2024-04-17', '2024-05-01'),
(2, 2, 2, '2024-04-16', '2024-04-30'),
(3, 1, 6, '2024-04-15', '2024-04-29'),
(4, 7, 8, '2024-04-14', '2024-04-28'),
(5, 5, 5, '2024-04-13', '2024-04-27'),
(6, 6, 9, '2024-04-12', '2024-04-26'),
(7, 3, 7, '2024-04-11', '2024-04-25'),
(8, 9, 4, '2024-04-10', '2024-04-24'),
(9, 9, 3, '2024-04-09', '2024-04-23'),
(10, 8, 10, '2024-04-08', '2024-04-22');
############################END############################

##################QueryBased Question Start##########################
#Retrieve all columns from the "Books" table.
SELECT * FROM Books;

#Retrieve the titles of all books published after the year 2000.
SELECT title FROM Books Where publication_year > 2000;

#List the names of all authors who have written books in the "Fiction" genre.
SELECT DISTINCT Authors.name 
FROM Authors 
JOIN BOOKS ON Authors.author_id = Books.author_id
JOIN Genres ON Books.genre_id = Genres.genre_id
WHERE genre_name = 'Fiction';

#Count the number of books written by each author.
SELECT Authors.name, COUNT(Books.book_id) as Number_of_Books
FROM Books
JOIN Authors ON Authors.author_id = Books.author_id
GROUP BY Authors.author_id, Authors.name;

#Calculate the average publication year of all books.
SELECT AVG(publication_year) FROM Books;

#Find the top 5 most borrowed books along with their respective borrower counts.
SELECT Books.title , Count(*) As borrowed 
FROM Books 
JOIN Transactions ON Books.book_id = Transactions.book_id
GROUP BY Books.title
ORDER BY borrowed DESC
LIMIT 5;

#Calculate the total number of transactions for each genre, sorted in descending order of transaction count.
SELECT Genres.genre_name,  COUNT(*) As transactions FROM Transactions
JOIN Books ON Transactions.book_id = Books.book_id
JOIN Genres ON Books.genre_id = Genres.genre_id
GROUP BY Genres.genre_name
ORDER BY transactions DESC;

#Retrieve the titles of all books along with their corresponding author names.
SELECT Books.title, Authors.name FROM Books 
JOIN Authors ON Books.author_id = Authors.author_id;

#Find the total number of books published each year, sorted in ascending order of publication year.
SELECT publication_year, COUNT(*) FROM Books
GROUP BY publication_year
ORDER BY publication_year ASC;

#List the names of all borrowers who have borrowed books published before the year 2000.
Select DISTINCT Borrowers.name, Books.publication_year FROM Borrowers
JOIN Transactions ON Borrowers.borrower_id = Transactions.borrower_id
JOIN Books ON Transactions.book_id = Books.book_id 
WHERE Books.publication_year < 2000;

#Calculate the average number of days a book is checked out (duration) across all transactions.
SELECT AVG(DATEDIFF(return_date, checkout_date)) AS average_duration
FROM Transactions;

#Find the top 3 most popular authors based on the total number of books borrowed.
SELECT Authors.name, COUNT(*) AS total_borrowed
FROM Authors
JOIN Books ON Authors.author_id = Books.author_id
JOIN Transactions ON Books.book_id = Transactions.book_id
GROUP BY Authors.author_id, Authors.name
ORDER BY total_borrowed DESC
LIMIT 3;

