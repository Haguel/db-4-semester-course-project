SELECT b.title, l.due_date
FROM books b
         JOIN loans l ON b.id = l.book_id
WHERE l.date_returned IS NULL AND l.due_date < CURRENT_DATE;