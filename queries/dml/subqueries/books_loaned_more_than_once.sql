SELECT b.title
FROM books b
WHERE (
          SELECT COUNT(*) FROM loans l WHERE l.book_id = b.id
      ) > 1;