CREATE OR REPLACE FUNCTION borrow_book(
    p_book_id INT,
    p_borrower_id INT,
    p_who_borrowed_id INT,
    p_due_date DATE
)
    RETURNS VOID AS $$
BEGIN
    -- Check if the book is available
    IF (SELECT available_copies FROM books WHERE id = p_book_id) > 0 THEN
        -- Insert the loan
        INSERT INTO loans (book_id, borrower_id, who_borrowed_id, date_loaned, due_date)
        VALUES (p_book_id, p_borrower_id, p_who_borrowed_id, CURRENT_DATE, p_due_date);

        -- Decrement available copies
        UPDATE books
        SET available_copies = available_copies - 1
        WHERE id = p_book_id;
    ELSE
        RAISE EXCEPTION 'Book is not available';
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT borrow_book(1, 1, 1, '2025-06-01');