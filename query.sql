-- P2: List all shows for a given theatre and date

SELECT
    t.theatre_name,
    m.movie_name,
    l.language_name,
    f.format_name,
    s.show_date,
    s.show_time
FROM show_table s
JOIN movie m ON s.movie_id = m.movie_id
JOIN screen sc ON s.screen_id = sc.screen_id
JOIN theatre t ON sc.theatre_id = t.theatre_id
JOIN language l ON s.language_id = l.language_id
JOIN format f ON s.format_id = f.format_id
WHERE t.theatre_id = 1
  AND s.show_date = '2026-05-26'
ORDER BY m.movie_name, s.show_time;