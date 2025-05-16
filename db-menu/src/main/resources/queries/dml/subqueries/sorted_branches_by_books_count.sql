SELECT br.name
FROM branches br
WHERE (
          SELECT COUNT(*) FROM books b WHERE b.branch_id = br.id
      ) = (
          SELECT MAX(book_count)
          FROM (
                   SELECT COUNT(*) AS book_count
                   FROM books
                   GROUP BY branch_id
               ) AS counts
      );