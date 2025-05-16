CREATE OR REPLACE FUNCTION prevent_duplicate_isbn()
    RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM books
        WHERE isbn = NEW.isbn
          AND id != NEW.id
    ) THEN
        RAISE EXCEPTION 'ISBN % вже існує', NEW.isbn;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_prevent_duplicate_isbn
    BEFORE INSERT OR UPDATE ON books
    FOR EACH ROW
EXECUTE FUNCTION prevent_duplicate_isbn();

INSERT INTO books (isbn, title, publisher_id, year_published, category_id, branch_id, available_copies)
VALUES ('9780000000083', 'Case 99', 3, 2001, 3, 1, 5);