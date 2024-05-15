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

-- =========== Task 3. Date and time types ===========
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

-- SELECT 
--     first_name,
--     email
-- FROM users
-- WHERE created_at > '2022-06-30' AND created_at < '2022-08-01' AND email NOT SIMILAR TO '%@%.%'

-- SELECT 
--     first_name,
--     email
-- FROM users
-- WHERE telephone NOT SIMILAR TO '[0-9]{3}'

-- SELECT title FROM articles WHERE creator_id IN (1, 4);

-- SELECT first_name,
-- last_name,
-- salary
-- FROM staff
-- WHERE department = 'sales'
-- ORDER BY first_name ASC, salary DESC;


-- SELECT first_name
-- FROM users
-- WHERE birthday < '2002-10-03'
-- ORDER BY first_name ASC LIMIT 3 OFFSET 2

-- SELECT buyer_id, COUNT(product) AS orders_count, SUM(price) AS total_price
-- FROM orders
-- GROUP BY buyer_id
-- HAVING COUNT(product) >= 2
-- ORDER BY total_price DESC

--=================
-- INSERT INTO students_progress
-- (first_name,last_name,faculty,grade)
-- VALUES
-- ('Oliver','Doblin','A',93),
-- ('Perry','Fensome','B',54);

-- DELETE FROM students_progress
-- WHERE faculty = 'C' AND grade < 20;

--===========
-- ALTER TABLE users 
--    ADD UNIQUE (email);

-- ALTER TABLE users
--     RENAME COLUMN name TO first_name;

-- ALTER TABLE users
--     ALTER COLUMN first_name SET NOT NULL;

-- ALTER TABLE users
--     ADD COLUMN created_at TIMESTAMP;

-- ALTER TABLE users
--     DROP COLUMN age;


--============== Adding from other table ================
-- CREATE TABLE IF NOT EXISTS users (
--     id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
--     name VARCHAR(50)
-- );

-- INSERT INTO users
-- (name)
-- VALUES
-- ('Tom');

-- CREATE TABLE IF NOT EXISTS cars (
--     id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
--     user_id BIGINT NOT NULL,
--     model VARCHAR(50)
-- );

-- INSERT INTO cars
-- (user_id, model)
-- VALUES ((SELECT id FROM users WHERE name = 'Tom'), 'Tesla Cybertruck'),
-- ((SELECT id FROM users WHERE name = 'Tom'), 'Toyota Corolla');

===== CTE ====
-- WITH actor_films AS (
--     SELECT
--         actor_id,
--         COUNT(DISTINCT genre) AS genre_count
--     FROM films
--     GROUP BY actor_id
-- )

-- SELECT actors.full_name AS actor
-- FROM actors
-- INNER JOIN actor_films ON actors.id = actor_films.actor_id
-- WHERE actor_films.genre_count >= 2
-- ORDER BY actors.full_name;
