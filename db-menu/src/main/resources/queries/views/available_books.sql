CREATE VIEW available_books AS
SELECT
    b.id AS book_id,
    b.isbn,
    b.title,
    c.name AS category,
    p.name AS publisher,
    br.name AS branch,
    br.location AS branch_location,
    b.available_copies
FROM
    books b
        JOIN categories c ON b.category_id = c.id
        JOIN publishers p ON b.publisher_id = p.id
        JOIN branches br ON b.branch_id = br.id
WHERE
    b.available_copies > 0
ORDER BY
    b.title, br.name;