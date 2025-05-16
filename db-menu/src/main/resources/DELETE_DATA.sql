BEGIN;

DELETE FROM book_authors;
DELETE FROM loans;
DELETE FROM reservations;
DELETE FROM books;
DELETE FROM authors;
DELETE FROM borrowers;
DELETE FROM staff;
DELETE FROM branches;
DELETE FROM publishers;
DELETE FROM categories;

COMMIT;