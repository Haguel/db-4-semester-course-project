SELECT b.title, a.name, a.surname
FROM books b
         JOIN book_authors ba ON b.id = ba.book_id
         JOIN authors a ON ba.author_id = a.id;