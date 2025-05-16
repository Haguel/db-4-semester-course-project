CREATE OR REPLACE FUNCTION add_book_with_authors(
    p_isbn VARCHAR(13),
    p_title VARCHAR(255),
    p_publisher_id INT,
    p_year_published SMALLINT,
    p_category_id INT,
    p_branch_id INT,
    p_available_copies INT,
    p_author_id INT
)
    RETURNS VOID AS $$
DECLARE
    v_book_id INT;
BEGIN
    -- Insert the book and retrieve the generated ID
    INSERT INTO books (isbn, title, publisher_id, year_published, category_id, branch_id, available_copies)
    VALUES (p_isbn, p_title, p_publisher_id, p_year_published, p_category_id, p_branch_id, p_available_copies)
    RETURNING id INTO v_book_id;

    INSERT INTO book_authors (book_id, author_id)
    VALUES (v_book_id, p_author_id);
END;
$$ LANGUAGE plpgsql;

SELECT add_book_with_authors('9781234567890', 'New Book', 1, 2023::smallint, 1, 1, 5, 1);