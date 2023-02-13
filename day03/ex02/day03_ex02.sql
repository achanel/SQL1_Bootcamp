WITH pom AS (
SELECT * FROM menu
    LEFT JOIN person_order po ON menu.id = po.menu_id
WHERE po.menu_id IS NULL)
SELECT pom.pizza_name, pom.price, pizzeria.name AS pizzeria_name
FROM pom JOIN pizzeria ON pom.pizzeria_id = pizzeria.id
ORDER BY pom.pizza_name, pom.price;

-- - The result is below (raw ordering should be the same like below)

--       "cheese pizza"	"700"	"Papa Johns"
--       "cheese pizza"	"780"	"DoDo Pizza"
--       "cheese pizza"	"950"	"DinoPizza"
--       "sausage pizza"	"950"	"Papa Johns"
--       "supreme pizza"	"850"	"DoDo Pizza"