CREATE ROLE admin NOINHERIT;
CREATE ROLE librarian NOINHERIT;
CREATE ROLE reader NOINHERIT;
CREATE ROLE auditor NOINHERIT;

CREATE USER admin_user WITH PASSWORD 'adminpass';
GRANT admin TO admin_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;

CREATE USER librarian_user WITH PASSWORD 'librarianpass';
GRANT librarian TO librarian_user;
GRANT SELECT, INSERT, UPDATE ON books, borrowers, loans, reservations TO librarian;
GRANT SELECT, INSERT, UPDATE ON book_authors TO librarian;
GRANT SELECT ON authors, categories, publishers, branches, staff TO librarian;

CREATE USER reader_user WITH PASSWORD 'readerpass';
GRANT reader TO reader_user;
GRANT SELECT ON books, authors, categories, publishers, branches TO reader;
GRANT SELECT ON loans, reservations TO reader;

CREATE USER auditor_user WITH PASSWORD 'auditorpass';
GRANT auditor TO auditor_user;
GRANT SELECT ON books, authors, categories, publishers, branches,
    book_authors, borrowers, loans, reservations, staff TO auditor;

-- Важно: если используются SERIAL поля,
-- дополнительно даём права на последовательности (чтобы INSERT работал без ошибок)
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO librarian, auditor, reader;