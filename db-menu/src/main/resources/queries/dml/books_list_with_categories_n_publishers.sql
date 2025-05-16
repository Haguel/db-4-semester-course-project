SELECT b.title, c.name AS category, p.name AS publisher
FROM books b
         JOIN categories c ON b.category_id = c.id
         JOIN publishers p ON b.publisher_id = p.id;