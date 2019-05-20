-- SELECT 
--     title, 
--     rating 
-- FROM series
-- JOIN reviews
--     ON series.id = reviews.series_id;

-- SELECT 
-- 	title, 
--     AVG(rating) as avg_rating 
-- FROM series
-- JOIN reviews
--     ON series.id = reviews.series_id
-- Group by series.id
-- order by avg_rating;

-- Select * from reviewers
-- join reviews
-- on reviewers.id = reviews.reviewer_id;
-- SELECT
--     first_name,
--     last_name,
--     rating
-- FROM reviewers
-- INNER JOIN reviews
--     ON reviewers.id = reviews.reviewer_id;

--   SELECT
--     first_name,
--     last_name,
--     rating
-- FROM reviews
-- INNER JOIN reviewers
--     ON reviewers.id = reviews.reviewer_id;  
--     
--     SElect title from series left join reviews on series.id = reviews.series_id
--     where rating IS  null;
--     
-- SELECT 
-- 	title,
-- 	genre, 
-- 	ifnull(avg(rating),0) as avg_rating 
-- from series 
-- inner join reviews 
-- on series.id = reviews.series_id
-- group by genre;

-- select 
-- 	first_name,
-- 	last_name,
-- 	COUNT(rating) AS COUNT,
-- 	IFNULL(MIN(rating),0) AS MIN,
-- 	IFNULL(MAX(rating),0) AS MAX,
-- 	IFNULL(avg(rating),0) AS AVG,
-- 	CASE
-- 		WHEN COUNT(rating) >=1 THEN 'ACTIVE'
-- 		ELSE 'INACTIVE'
-- 	END AS STATUS
-- FROM 
-- reviewers
-- left join reviews
-- on reviewers.id = reviews.reviewer_id
-- group by  reviewers.id;

SELECT 
	title,
	rating, 
    concat( first_name,' ', last_name) as reviewer
FROM reviewers
inner join reviews
on reviewers.id = reviews.reviewer_id
inner join series
	on series.id = reviews.series_id
    order by title;

 