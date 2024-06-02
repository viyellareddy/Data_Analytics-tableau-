CREATE DATABASE Netflix;
USE Netflix;
-- import netflix_title. csv --
-- Total Movies and TV Shows by Country
SELECT country, type, COUNT(*) AS total_titles
FROM netflix_title
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY total_titles DESC;

-- Distribution of Content Ratings
SELECT rating, type, COUNT(*) AS total_titles
FROM netflix_title
GROUP BY rating, type
ORDER BY total_titles DESC;

-- Movies and TV Shows Distribution
SELECT type, COUNT(*) AS total_titles
FROM netflix_title
GROUP BY type;

-- Top 10 Genres
SELECT listed_in AS genre, type, COUNT(*) AS total_titles
FROM netflix_title
GROUP BY listed_in, type
ORDER BY total_titles DESC
LIMIT 10;

-- Titles Added Each Year
SELECT DATE_FORMAT(STR_TO_DATE(date_added, '%M %d, %Y'), '%Y') AS year, type, COUNT(*) AS total_titles
FROM netflix_title
GROUP BY year, type
ORDER BY year;
