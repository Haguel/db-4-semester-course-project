SELECT b.title
FROM books b
         JOIN publishers p ON b.publisher_id = p.id
WHERE p.id = 1;