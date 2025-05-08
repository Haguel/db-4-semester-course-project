CREATE OR REPLACE FUNCTION update_available_copies_on_loan()
    RETURNS TRIGGER AS $$
BEGIN
    UPDATE books
    SET available_copies = available_copies - 1
    WHERE id = NEW.book_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_available_copies_on_loan
    AFTER INSERT ON loans
    FOR EACH ROW
EXECUTE FUNCTION update_available_copies_on_loan();

INSERT INTO loans (book_id, borrower_id, who_borrowed_id, date_loaned, due_date)
VALUES (1, 1, 1, CURRENT_DATE, '2025-06-01');