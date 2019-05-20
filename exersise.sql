USE book_shop;
SELECT title, author_lname, 
Case
WHEN title Like '%stories%' THEN 'Short Stories'
WHEN title like '%Just Kids%' or title like'%A Heartbreaking Work of Staggering Genius%' THEN 'Memoir'
ELSE 'Novel'
END AS TYPE
FROM books;

SELECT author_lname,author_fname,
	CASE
    WHEN COUNT(*) = 1 THEN '1 BOOK'
    ELSE CONCAT (COUNT(*),' BOOKS')
    END AS COUNT
 FROM books GROUP BY author_lname, author_fname;

SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent, 
    customers.id
FROM customers 
JOIN orders 
    ON customers.id = orders.customer_id 
GROUP BY orders.customer_id 
ORDER BY total_spent DESC;