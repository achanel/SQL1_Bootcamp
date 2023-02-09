SELECT name AS object_name
FROM person
UNION ALL
SELECT pizza_name FROM menu
ORDER BY object_name;

-- - The result is below (raw ordering should be the same like below)

--       "Andrey"
--       "Anna"
--       "Denis"
--       "Dmitriy"
--       "Elvira"
--       "Irina"
--       "Kate"
--       "Nataly"
--       "Peter"
--       "cheese pizza"
--       "cheese pizza"
--       "cheese pizza"
--       "cheese pizza"
--       "cheese pizza"
--       "cheese pizza"
--       "mushroom pizza"
--       "mushroom pizza"
--       "pepperoni pizza"
--       "pepperoni pizza"
--       "pepperoni pizza"
--       "pepperoni pizza"
--       "sausage pizza"
--       "sausage pizza"
--       "sausage pizza"
--       "supreme pizza"
--       "supreme pizza"
--       "supreme pizza"