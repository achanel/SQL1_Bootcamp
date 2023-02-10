SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM person_order JOIN person ON person.id = person_id
    JOIN menu ON menu.id = menu_id
    JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE person.name = 'Denis' OR person.name = 'Anna'
ORDER BY pizza_name, pizzeria.name;

-- - The result is below (raw ordering should be the same like below)

--     "cheese pizza"	"Best Pizza"
--     "cheese pizza"	"Pizza Hut"
--     "pepperoni pizza"	"Best Pizza"
--     "pepperoni pizza"	"DinoPizza"
--     "pepperoni pizza"	"Pizza Hut"
--     "sausage pizza"	"DinoPizza"
--     "supreme pizza"	"Best Pizza"