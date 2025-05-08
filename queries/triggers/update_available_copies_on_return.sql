CREATE OR REPLACE FUNCTION update_available_copies_on_return()
    RETURNS TRIGGER AS $$
BEGIN
    IF NEW.date_returned IS NOT NULL AND OLD.date_returned IS NULL THEN
        UPDATE books
        SET available_copies = available_copies + 1
        WHERE id = NEW.book_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_available_copies_on_return
    AFTER UPDATE ON loans
    FOR EACH ROW
EXECUTE FUNCTION update_available_copies_on_return();

UPDATE loans
SET date_returned = CURRENT_DATE
WHERE id = (
    SELECT id FROM loans
    WHERE date_returned IS NULL
    ORDER BY id
    LIMIT 1
);
