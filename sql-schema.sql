CREATE TABLE episodes (
	episode_id TEXT Primary Key,
	rating FLOAT,
	title TEXT,
	release_date date,
	season INT,
	episode INT
);
CREATE TABLE deaths (
	episode_id Text Primary Key,
	death_count INT
);

drop table episodes
drop table deaths

SELECT * FROM episodes;

SELECT * FROM deaths;

SELECT e.episode_id, e.rating, e.title, e.release_date, e.season, e.episode, d.death_count
FROM episodes e
INNER JOIN deaths d
ON e.episode_id = d.episode_id;