SELECT b.title
FROM books b
WHERE b.id NOT IN (SELECT book_id FROM loans);