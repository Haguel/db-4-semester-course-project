SELECT bor.name, bor.surname, l.date_loaned, l.id AS loan_id
FROM borrowers bor
         JOIN loans l ON bor.id = l.borrower_id
WHERE (l.date_loaned, l.id) IN (
    SELECT MAX(l2.date_loaned), MAX(l2.id)
    FROM loans l2
    WHERE l2.borrower_id = bor.id
    GROUP BY l2.borrower_id
);