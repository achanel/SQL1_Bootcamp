SELECT pizzeria.name, agg.count_of_orders, agg.average_price, agg.max_price, agg.min_price
FROM (SELECT pizzeria_id, COUNT(*) AS count_of_orders, ROUND(AVG(menu.price), 2) AS average_price,
             MAX(menu.price) AS max_price, MIN(menu.price) AS min_price
        FROM person_order
        JOIN menu
          ON menu_id = menu.id
    GROUP BY menu.pizzeria_id) AS agg
        JOIN pizzeria
          ON pizzeria.id = agg.pizzeria_id
ORDER BY pizzeria.name;

-- - The result is below (raw ordering should be the same like below)

--     "Best Pizza"	"5"	"780"	"850"	"700"
--     "DinoPizza"	"5"	"880"	"1000"	"800"
--     "Dominos"	"6"	"933.33"	"1100"	"800"
--     "Papa Johns"	"2"	"975"	"1000"	"950"
--     "Pizza Hut"	"4"	"1125"	"1200"	"900"