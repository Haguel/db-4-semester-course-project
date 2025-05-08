SELECT bor.name, bor.surname, l.due_date
FROM borrowers bor
         JOIN loans l ON bor.id = l.borrower_id
WHERE l.date_returned IS NULL AND l.due_date < CURRENT_DATE;