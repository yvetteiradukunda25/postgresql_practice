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