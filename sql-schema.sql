-- Create Two Tables
CREATE TABLE GOT_episodes (
	id INT PRIMARY KEY,
	episode_ID FLOAT,
	rating FLOAT,
	title TEXT,
	release_date FLOAT,
	season INT,
	episode INT
);

CREATE TABLE GOT_deaths (
	id INT PRIMARY KEY,
	episode_ID FLOAT,
	season INT,
	episode INT,
	death_count INT
);

-- Query to check successful load
SELECT * FROM GOT_episodes;

SELECT * FROM GOT_deaths;

-- Join tables on episode_ID
SELECT GOT_episodes.id, GOT_episodes.episode_ID, GOT_episodes.rating, GOT_episodes.title, GOT_episodes.release_date, GOT_episodes.season, 
	GOT_episodes.episode, GOT_deaths.death_count
FROM GOT_episodes
INNER JOIN GOT_deaths
ON GOT_episodes.episode_id = GOT_deaths.episode_id;
