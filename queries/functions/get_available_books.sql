CREATE OR REPLACE FUNCTION get_available_books()
    RETURNS TABLE (
                      book_id INT,
                      title VARCHAR(255),
                      available_copies INT
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT books.id, books.title, books.available_copies
        FROM books
        WHERE books.available_copies > 0;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_available_books();