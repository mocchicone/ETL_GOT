CREATE TABLE episodes (
	episode_id TEXT Primary Key,
	Rating FLOAT,
	Title TEXT,
	Release_date date,
	Season INT,
	Episode INT
);
CREATE TABLE deaths (
	episode_id Text Primary Key,
	death_count INT
);

drop table deaths

SELECT * FROM episodes;

SELECT * FROM deaths;

SELECT e.episode_id, e.rating, e.title, e.release_date, e.season, e.episode, d.death_count
FROM episodes e
INNER JOIN deaths d
ON e.episode_id = d.episode_id;