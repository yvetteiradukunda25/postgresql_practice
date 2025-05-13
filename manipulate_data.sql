UPDATE books SET price = price + 5 WHERE title = 'Hunger Games'; 


UPDATE books SET stock_quantity = 25 WHERE title ='Romeo and Juliet';


DELETE FROM customers WHERE email = 'chanelle@gmail.com';


DELETE FROM orders WHERE order_id = 3;


SELECT * FROM books WHERE genre = 'Science Fiction';


SELECT * FROM orders WHERE total_amount > '50';


SELECT * FROM customers WHERE last_name LIKE '%son%';


