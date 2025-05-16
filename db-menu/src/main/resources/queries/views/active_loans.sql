CREATE VIEW active_loans AS
SELECT
    l.id AS loan_id,
    b.title AS book_title,
    b.isbn,
    bor.name AS borrower_name,
    bor.surname AS borrower_surname,
    bor.email AS borrower_email,
    s.name AS staff_name,
    s.surname AS staff_surname,
    l.date_loaned,
    l.due_date
FROM
    loans l
        JOIN books b ON l.book_id = b.id
        JOIN borrowers bor ON l.borrower_id = bor.id
        JOIN staff s ON l.who_borrowed_id = s.id
WHERE
    l.date_returned IS NULL
ORDER BY
    l.due_date;