-- =========== Task 1. Creating tables ===========
-- CREATE TABLE games (
--     id INTEGER PRIMARY KEY,
--     title TEXT,
--     year INTEGER, 
--     rating FLOAT,
--     studio TEXT
-- );

-- CREATE TABLE top_games (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     title TEXT,
--     year INTEGER, 
--     rating FLOAT,
--     studio TEXT
-- );
-- =========== Task 2. Adding values ===========
-- INSERT INTO games
--   (id,title,year,rating,studio)
-- VALUES (1, 'Grand Theft Auto V', 2013, 4.8, 'Rockstar Games'),
--   (2, 'Red Dead Redemption 2', 2018, 4.9, 'Rockstar Games'),
--   (3, 'Call of Duty: Modern Warfare', 2019, 4.7, 'Infinity Ward'),
--   (4, 'The Last of Us Part II', 2020, 4.8, 'Naughty Dog'),
--   (5, 'The Witcher 3: Wild Hunt', 2019, 4.9, 'CD Projekt Red'),
--   (6, 'Grand Theft Auto: San Andreas', 2004, 4.9, 'Rockstar Games'),
--   (7, 'The Last of Us', 2013, 4.9, 'Naughty Dog'),
--   (8, 'Cyberpunk 2077', 2020, 4.8, 'CD Projekt Red'),
--   (9, 'NBA 2K22', 2020, 4.7, '2K Sports'),
--   (10, 'Fortnite', 2017, 4.7, 'Epic Games');

-- SELECT * FROM games
-- WHERE studio = 'Rockstar Games';

-- CREATE TABLE IF NOT EXISTS events (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(50),
--   date DATE,
--   time TIME,
--   location VARCHAR(100),
--   description TEXT
-- );

-- INSERT INTO "events" (id,name,date,time,location,description) VALUES
-- (1,'New Year','2024-12-31','23:59:59.00','SPB','Description'),
-- (2,'Christmas','2024-12-25','23:59:59.00','SPB','Description');

-- CREATE TABLE article_categories (
--     id BIGINT GENERATED ALWAYS AS IDENTITY,
--     name TEXT
-- );

-- INSERT INTO article_categories (
--   name
--   ) VALUES
--   ('Sports'),
--   ('Politics');

-- SELECT 
--     first_name,
--     email
-- FROM users
-- WHERE created_at > '2022-06-30' AND created_at < '2022-08-01' AND email NOT SIMILAR TO '%@%.%'
