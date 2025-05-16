SELECT b.title, c.name AS category, b.available_copies
FROM books b
         JOIN categories c ON b.category_id = c.id
WHERE b.available_copies > (
    SELECT AVG(available_copies)
    FROM books b2
    WHERE b2.category_id = b.category_id
);