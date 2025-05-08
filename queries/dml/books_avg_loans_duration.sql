SELECT AVG(date_returned - date_loaned) AS avg_days
FROM loans
WHERE date_returned IS NOT NULL;