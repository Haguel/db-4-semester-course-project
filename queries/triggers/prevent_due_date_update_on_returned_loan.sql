CREATE OR REPLACE FUNCTION prevent_due_date_update_on_returned_loan()
    RETURNS TRIGGER AS $$
BEGIN
    -- Check if the loan has already been returned (date_returned is not NULL)
    IF OLD.date_returned IS NOT NULL AND NEW.due_date != OLD.due_date THEN
        RAISE EXCEPTION 'Cannot update due_date for a returned loan (Loan ID: %)', OLD.id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_prevent_due_date_update_on_returned_loan
    BEFORE UPDATE OF due_date ON loans
    FOR EACH ROW
EXECUTE FUNCTION prevent_due_date_update_on_returned_loan();

UPDATE loans
SET due_date = CURRENT_DATE
WHERE id = (
    SELECT id FROM loans
    WHERE date_returned IS NOT NULL
    ORDER BY id
    LIMIT 1
);