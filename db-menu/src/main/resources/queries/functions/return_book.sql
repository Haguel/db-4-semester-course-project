CREATE OR REPLACE FUNCTION return_book(
    p_book_id INT,
    p_borrower_id INT
)
    RETURNS VOID AS $$
BEGIN
    -- Update the loan to set date_returned
    UPDATE loans
    SET date_returned = CURRENT_DATE
    WHERE book_id = p_book_id
      AND borrower_id = p_borrower_id
      AND date_returned IS NULL;

    -- Check if a loan was updated
    IF NOT FOUND THEN
        RAISE EXCEPTION 'No active loan found for this book and borrower';
    END IF;

    -- Increment available copies
    UPDATE books
    SET available_copies = available_copies + 1
    WHERE id = p_book_id;
END;
$$ LANGUAGE plpgsql;

SELECT return_book(1, 1);