SELECT bor.name, bor.surname
FROM borrowers bor
         JOIN reservations r ON bor.id = r.borrower_id
         LEFT JOIN loans l ON r.book_id = l.book_id AND l.borrower_id = bor.id
WHERE l.id IS NULL;