CREATE OR REPLACE FUNCTION reserve_book(
    p_book_id INT,
    p_borrower_id INT,
    p_expire_date DATE
)
    RETURNS VOID AS $$
BEGIN
    INSERT INTO reservations (book_id, borrower_id, reservation_date, expire_date)
    VALUES (p_book_id, p_borrower_id, CURRENT_DATE, p_expire_date);
END;
$$ LANGUAGE plpgsql;

SELECT reserve_book(1, 1, '2025-06-01');