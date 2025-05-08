CREATE OR REPLACE FUNCTION get_borrower_loan_history(p_borrower_id INT)
    RETURNS TABLE (
                      loan_id INT,
                      book_id INT,
                      date_loaned DATE,
                      due_date DATE,
                      date_returned DATE
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT loans.id, loans.book_id, loans.date_loaned, loans.due_date, loans.date_returned
        FROM loans
        WHERE borrower_id = p_borrower_id;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_borrower_loan_history(1);