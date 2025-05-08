CREATE OR REPLACE FUNCTION get_overdue_loans()
    RETURNS TABLE (
                      loan_id INT,
                      book_id INT,
                      borrower_id INT,
                      due_date DATE
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT loans.id, loans.book_id, loans.borrower_id, loans.due_date
        FROM loans
        WHERE loans.due_date < CURRENT_DATE
          AND loans.date_returned IS NULL;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_overdue_loans();