CREATE TABLE games (
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER, 
    rating FLOAT,
    studio TEXT
);

CREATE TABLE top_games (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year INTEGER, 
    rating FLOAT,
    studio TEXT
);

INSERT INTO games
  (id,title,year,rating,studio)
VALUES (1, 'Grand Theft Auto V', 2013, 4.8, 'Rockstar Games'),
  (2, 'Red Dead Redemption 2', 2018, 4.9, 'Rockstar Games'),
  (3, 'Call of Duty: Modern Warfare', 2019, 4.7, 'Infinity Ward'),
  (4, 'The Last of Us Part II', 2020, 4.8, 'Naughty Dog'),
  (5, 'The Witcher 3: Wild Hunt', 2019, 4.9, 'CD Projekt Red'),
  (6, 'Grand Theft Auto: San Andreas', 2004, 4.9, 'Rockstar Games'),
  (7, 'The Last of Us', 2013, 4.9, 'Naughty Dog'),
  (8, 'Cyberpunk 2077', 2020, 4.8, 'CD Projekt Red'),
  (9, 'NBA 2K22', 2020, 4.7, '2K Sports'),
  (10, 'Fortnite', 2017, 4.7, 'Epic Games');

SELECT * FROM games
WHERE studio = 'Rockstar Games';
