SELECT pizza_name FROM menu
UNION
SELECT pizza_name FROM menu
ORDER BY pizza_name DESC;

-- The result is below (raw ordering should be the same like below)

--       supreme pizza
--       sausage pizza
--       pepperoni pizza
--       mushroom pizza
--       cheese pizza