SELECT s.name, s.surname, COUNT(l.id) AS loan_count
FROM staff s
         JOIN loans l ON s.id = l.who_borrowed_id
GROUP BY s.id, s.name, s.surname
ORDER BY loan_count DESC
LIMIT 1;