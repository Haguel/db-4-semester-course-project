SELECT s.name, s.surname
FROM staff s
         JOIN loans l ON s.id = l.who_borrowed_id;