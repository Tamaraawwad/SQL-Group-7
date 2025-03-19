-- Exercises on String Patterns, Sorting, and Grouping Built-in Database Functions

SELECT * FROM indian_startup_fundingcleaned LIMIT 5;

-- 1. Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru”
SELECT sum(AmountinUSD) FROM indian_startup_fundingcleaned WHERE CityLocation= "Bengaluru";

-- 2. Write SQL query to sort the table by startup name DESC

SELECT * FROM indian_startup_fundingcleaned ORDER BY UPPER(StartupName) DESC;

-- 3. Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru” and AmountinUSD>380000

SELECT SUM(AmountinUSD) FROM indian_startup_fundingcleaned WHERE CityLocation= "Bengaluru" AND AmountinUSD>380000;

-- 4. Write SQL query to get all CityLocations that has an AmountinUSD >380000
SELECT CityLocation FROM indian_startup_fundingcleaned WHERE AmountinUSD > 380000;

-- 5. Write SQL query to get only unique CityLocations that has an AmountinUSD >380000
SELECT DISTINCT(CityLocation) FROM indian_startup_fundingcleaned WHERE AmountinUSD > 380000;

-- 6. Write SQL query to get all StartupNames where AmountinUSD<380000
SELECT StartupName From indian_startup_fundingcleaned WHERE AmountinUSD < 380000;

-- 7. Write SQL query to sort the output from the previous question DESC
SELECT StartupName From indian_startup_fundingcleaned WHERE AmountinUSD < 380000 ORDER BY StartupName DESC;

-- 8. Write SQL query to get the City location that has the maximum funding amount “Note that if the data is not cleaned properly you will get a non-logical result”
SELECT CityLocation FROM indian_startup_fundingcleaned WHERE AmountinUSD=(SELECT MAX(AmountinUSD) FROM indian_startup_fundingcleaned);

-- 9. Write SQL query to get the total funding AmountinUSD for each IndustryVertical
SELECT IndustryVertical, SUM(AmountinUSD) From indian_startup_fundingcleaned GROUP BY IndustryVertical;

-- 10. Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with letter “A”


-- 11. Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with letter “A” and sort the output DESC by the total AmountinUSD
-- 12. Write SQL query to count all the start_ups in the Education field
-- 13. Write SQL query to count all the start_Ups in the E-Commerce field
-- 14. Write SQL query to count all the start_Ups in the E-Commerce field, where city location equals “Bengaluru”
-- 15. For each Industry Vertical find the total funding amount
-- 16. For each Industry Vertical find the total funding amount as “Total_fund” and the average funding amount as “Avg_Fund”. In this question provide two answers: 1- using GROUP BY Industry Vertical, 2- using sub_queries
-- 17. Write SQL query to get the minimum value of funding for the “Uniphore” start_up
-- 18. Write SQL query to get the length of the city location names
-- 19. Write SQL query to convert start_ups names into uppercase if the funding amount is >380,000
-- 20. Write SQL query to select distinct industry vertical names, knowing that names are a mix of lowercase and uppercase values.
