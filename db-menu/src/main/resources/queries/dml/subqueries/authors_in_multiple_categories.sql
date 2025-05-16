SELECT a.name, a.surname
FROM authors a
WHERE (
          SELECT COUNT(DISTINCT b.category_id)
          FROM books b
                   JOIN book_authors ba ON b.id = ba.book_id
          WHERE ba.author_id = a.id
      ) > 1;