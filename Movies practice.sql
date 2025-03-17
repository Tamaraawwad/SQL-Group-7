SELECT * FROM Movies1;
SELECT mov_name, mov_year FROM Movies1;
SELECT * FROM Movies1 WHERE mov_name="American Beauty";

SELECT * FROM Movies1 WHERE mov_year= 1999;
SELECT * FROM Movies1 WHERE mov_year < 1998;
SELECT mov_name, rev_name FROM Movies1;
SELECT rev_name FROM Movies1 WHERE rev_stars >=7;
SELECT mov_name FROM Movies1 WHERE rev_stars IS NULL;
SELECT mov_name FROM Movies1 WHERE mov_id IN (901,905,917);
SELECT mov_name, mov_year FROM Movies1 WHERE mov_name like "%Boogie Night%";
SELECT mov_id FROM Movies1 WHERE rev_name like "%Alec Shaw%";






