briefly explain:
What your database models.
The purpose of each SQL file.
Any assumptions or default values used

ANSWERS:
I USED postgresql to create my database called Bookstore Inventory Management System.
in this database i created three tables or entities which are books, customers and orders with their respectively columns.

SAMPLES:
CREATE TABLE books(
book_id SERIAL PRIMARY KEY, // using SERIAL keyword, it means book_id will provided automatically.
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(100),
price DECIMAL(100),
stock_quantity VARCHAR(50)
);

CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(50)
);

CREATE TABLE Orders(
order_id SERIAL PRIMARY KEY,
customer_id INT,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_amount VARCHAR(50)
);
i saved this file as create_tables.sql.

After creating tables and columns, i inserted values into the tables:
INSERT INTO books(title, author, genre, price, stock_quantity)
VALUES('Pride and Prejudice', 'Jane Austen', 'Romance, Comedy of Manners', 30000, 21),
      ('Hunger Games', 'Suzanne Collins', 'Science Fiction, Young Adult', 23000, 12),
      ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 12000, 6),
      ('Quantum Theory Cannot Hurt You', 'Marcus Chown', 'Non-Fiction', 20000, 20),
      ('Romeo and Juliet', 'William Shakespeare', 'Genre: Drama', 23000, 13);

INSERT INTO customers(first_name, last_name, email, phone)
VALUES('MUBAHIMANA', 'Louise', 'louise@gmail.com', 07821345689),
('IRADUKUNDA', 'Yvette', 'yvette@gmail.com', 0782070740),
('MUNEZERO','Aline', 'aline@gmail.com', 0788882010),
('INGABIRE', 'Channelle', 'chanelle@gmail.com', 0788888190),
('MUHINPUNDU', 'Anne', 'anne@gmail.com', 0788208097);

INSERT INTO orders(customer_id, total_amount)
VALUES(1, 20000),
      (2, 30000),
      (1, 40000),
      (4, 10000),
      (3, 45000);
      i saved this file as insert_data.sql

  In assignment, we were assigned to manipulate data using thefollowing operatos:
  UPDATE, DELETE and SELECT by passig some conditions.
  In assignement, there are some examples provided to manipulate but i used my data by applying those operations.
  
  Here it is:
  
PROBLEM 1: in assignment, we were assigned to Increase the price of the book titled 'The Silent Patient' by 5 and i had no title called that name,
  but i provided title called 'Hunger Games' and i increase the price by adding 5.
      
  ANSWER: UPDATE books SET price = price + 5 WHERE title = 'Hunger Games'; 
  

PROBLEM 2: Change the stock quantity of the book 'Atomic Habits' to 25
  SO, I updated the column called stock_quantity to 25 where to a title called 'Romeo and Juliet'

  ANSWER: UPDATE books SET stock_quantity = 25 WHERE title ='Romeo and Juliet';
  

PROBLEM 3: Delete the customer with the email 'john.doe@example.com'
   SO, i deleted the customer with the email called 'chanelle@gmail.com'.

   ANSWER: DELETE FROM customers WHERE email = 'chanelle@gmail.com';
   

PROBLEM 4: Delete the order with the order_id of 3
    SO, i deleted the order with the order_id equals to 3,

  ANSWER: DELETE FROM orders WHERE order_id = 3;
  

PROBLEM 5: List all books in the 'Fiction' genre
   SO, I selected all from books table where genre is equal to 'Science Fiction'.

   ANSWER: SELECT * FROM books WHERE genre = 'Science Fiction';


PROBLEM 6: Show all orders with a total amount greater than 50
  I selected all from orders table where a total amount are greater than 50.
  
ANSWER: SELECT * FROM orders WHERE total_amount > '50';

PROBLEM 7: Search for customers whose last name contains 'son'
   I selected all from customers table where last name contains 'son'
   
  ANSWER: SELECT * FROM customers WHERE last_name LIKE '%son%';
No name from the values i entered will contain 'son', it will return nothing.



