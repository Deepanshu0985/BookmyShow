-- THEATRES
INSERT INTO theatre (theatre_name, city) VALUES
('PVR Nexus', 'Delhi'),
('INOX Mall', 'Mumbai');

-- SCREENS
INSERT INTO screen (theatre_id, screen_name) VALUES
(1, 'Audi 1'),
(1, 'Audi 2'),
(2, 'Screen 1');

-- LANGUAGES
INSERT INTO language (language_name) VALUES
('Hindi'),
('English'),
('Telugu');

-- FORMATS
INSERT INTO format (format_name) VALUES
('2D'),
('3D'),
('IMAX');

-- MOVIES
INSERT INTO movie (movie_name, duration_minutes) VALUES
('Dasara', 156),
('Kisi Ka Bhai Kisi Ki Jaan', 145),
('Tu Jhoothi Main Makkaar', 150),
('Avatar: The Way of Water', 192);

-- SHOWS
INSERT INTO show_table
(movie_id, screen_id, language_id, format_id, show_date, show_time)
VALUES
(1, 1, 3, 1, '2026-05-26', '12:15:00'),
(2, 1, 1, 1, '2026-05-26', '10:00:00'),
(2, 1, 1, 1, '2026-05-26', '13:20:00'),
(3, 2, 1, 1, '2026-05-26', '13:15:00'),
(4, 2, 2, 3, '2026-05-26', '13:20:00');