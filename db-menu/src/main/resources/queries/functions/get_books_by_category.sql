CREATE OR REPLACE FUNCTION get_books_by_category(p_category_id INT)
    RETURNS TABLE (
                      book_id INT,
                      title VARCHAR(255),
                      available_copies INT
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT books.id, books.title, books.available_copies
        FROM books
        WHERE category_id = p_category_id;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_books_by_category(1); -- Science Fiction