SELECT b.title
FROM books b
         JOIN reservations r ON b.id = r.book_id
         LEFT JOIN loans l ON b.id = l.book_id AND l.date_returned IS NULL
WHERE l.book_id IS NULL;