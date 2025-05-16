SELECT b.title, br.name AS branch
FROM books b
         JOIN branches br ON b.branch_id = br.id
WHERE br.id = 1;