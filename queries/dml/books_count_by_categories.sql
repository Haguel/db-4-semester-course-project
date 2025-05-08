SELECT c.name, COUNT(b.id) AS total_books
FROM categories c
         JOIN books b ON c.id = b.category_id
GROUP BY c.name;