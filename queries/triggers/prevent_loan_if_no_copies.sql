CREATE OR REPLACE FUNCTION prevent_loan_if_no_copies()
    RETURNS TRIGGER AS $$
DECLARE
    v_available_copies INT;
BEGIN
    SELECT available_copies INTO v_available_copies
    FROM books
    WHERE id = NEW.book_id;

    IF v_available_copies <= 0 THEN
        RAISE EXCEPTION 'Немає доступних копій для книги з ID %', NEW.book_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_prevent_loan_if_no_copies
    BEFORE INSERT ON loans
    FOR EACH ROW
EXECUTE FUNCTION prevent_loan_if_no_copies();

INSERT INTO loans (book_id, borrower_id, who_borrowed_id, date_loaned, due_date)
VALUES (46, 1, 1, CURRENT_DATE, '2025-06-01');