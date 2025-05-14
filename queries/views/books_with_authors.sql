CREATE VIEW books_with_authors AS
SELECT
    b.id AS book_id,
    b.isbn,
    b.title,
    c.name AS category,
    STRING_AGG(a.name || ' ' || a.surname, ', ') AS authors,
    b.year_published,
    p.name AS publisher
FROM
    books b
        JOIN categories c ON b.category_id = c.id
        JOIN publishers p ON b.publisher_id = p.id
        JOIN book_authors ba ON b.id = ba.book_id
        JOIN authors a ON ba.author_id = a.id
GROUP BY
    b.id, b.isbn, b.title, c.name, b.year_published, p.name
ORDER BY
    b.title;