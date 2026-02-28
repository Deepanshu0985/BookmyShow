-- =========================
-- THEATRE
-- =========================
CREATE TABLE theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- =========================
-- SCREEN
-- =========================
CREATE TABLE screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT NOT NULL,
    screen_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id)
);

-- =========================
-- LANGUAGE
-- =========================
CREATE TABLE language (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(50) UNIQUE NOT NULL
);

-- =========================
-- FORMAT
-- =========================
CREATE TABLE format (
    format_id INT PRIMARY KEY AUTO_INCREMENT,
    format_name VARCHAR(50) UNIQUE NOT NULL
);

-- =========================
-- MOVIE
-- =========================
CREATE TABLE movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(150) NOT NULL,
    duration_minutes INT NOT NULL
);

-- =========================
-- SHOW
-- =========================
CREATE TABLE show_table (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    screen_id INT NOT NULL,
    language_id INT NOT NULL,
    format_id INT NOT NULL,
    show_date DATE NOT NULL,
    show_time TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (screen_id) REFERENCES screen(screen_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (format_id) REFERENCES format(format_id)
);

-- Optional performance index
CREATE INDEX idx_show_lookup
ON show_table (show_date, screen_id);