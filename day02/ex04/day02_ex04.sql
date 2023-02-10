SELECT pizza_name, name AS pizzeria_name, price
FROM menu JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, name;

-- - The result is below (raw ordering should be the same like below)

--         "mushroom pizza"	"Dominos"	"1100"
--         "mushroom pizza"	"Papa Johns"	"950"
--         "pepperoni pizza"	"Best Pizza"	"800"
--         "pepperoni pizza"	"DinoPizza"	"800"
--         "pepperoni pizza"	"Papa Johns"	"1000"
--         "pepperoni pizza"	"Pizza Hut"	"1200"