select name, rating from pizzeria where rating >= 3.5 and rating <= 5 order by rating;
select name, rating from pizzeria where rating between 3.5 and 5 order by rating;

-- The result is below (raw ordering should be the same like below)

--       "DinoPizza"	"4.2"
--       "Dominos"	"4.3"
--       "Pizza Hut"	"4.6"
--       "Papa Johns"	"4.9"

-- - The SQL script looks like below (to use BETWEEN keyword).

--       select name, rating from pizzeria where rating between 3.5 and 5 order by rating

-- The result is below (raw ordering should be the same like on a screen below)

--       "DinoPizza"	"4.2"
--       "Dominos"	"4.3"
--       "Pizza Hut"	"4.6"
--       "Papa Johns"	"4.9"