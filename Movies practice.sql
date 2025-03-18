-- SQL Exercise on WHERE Clause

-- 1. How can you retrieve the name and year of all movies?
SELECT mov_name, mov_year FROM Movies1;

-- 2. In which year was the movie 'American Beauty' released?
SELECT mov_year FROM Movies1 WHERE mov_name = 'American Beauty';

-- 3. Which movies were released in the year 1999?
SELECT * FROM Movies1 WHERE mov_year = 1999;

-- 4. How can you find all movies released before 1998?
SELECT * FROM Movies1 WHERE mov_year < 1998;

-- 5. How can you return the names of all reviewers and movie names together in a single list?
SELECT mov_name AS name FROM Movies1
UNION
SELECT rev_name AS name FROM Movies1;

-- 6. How can you find the names of all reviewers who have rated 7 or more stars?
SELECT rev_name FROM Movies1 WHERE rev_stars >= 7;

-- 7. How can you find the titles of all movies that have no ratings?
SELECT mov_name FROM Movies1 WHERE rev_stars IS NULL;

-- 8. How can you find the titles of movies with IDs 905, 907, and 917?
SELECT mov_name FROM Movies1 WHERE mov_id IN (905, 907, 917);

-- 9. How can you find the list of all movies (with their release year) that include the words 'Boogie Nights'?
SELECT mov_name, mov_year FROM Movies1 WHERE mov_name LIKE '%Boogie Nights%';

-- 10. What is the ID number of the actor whose first name is 'Woody' and last name is 'Allen'?
SELECT mov_id FROM Movies1 WHERE rev_name LIKE '%Woody Allen%';
