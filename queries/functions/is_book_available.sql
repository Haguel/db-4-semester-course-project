CREATE OR REPLACE FUNCTION is_book_available(p_book_id INT)
    RETURNS BOOLEAN AS $$
BEGIN
    RETURN (SELECT available_copies > 0 FROM books WHERE id = p_book_id);
END;
$$ LANGUAGE plpgsql;

SELECT is_book_available(1);