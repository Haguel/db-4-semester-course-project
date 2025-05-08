SELECT bor.name, bor.surname
FROM borrowers bor
WHERE (
          SELECT COUNT(DISTINCT b.branch_id)
          FROM loans l
                   JOIN books b ON l.book_id = b.id
          WHERE l.borrower_id = bor.id
      ) > 1;