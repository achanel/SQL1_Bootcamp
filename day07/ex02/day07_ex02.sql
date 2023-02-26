SELECT name, count, action_type
FROM (
    (SELECT pizzeria_id, COUNT(*) AS count, 'order' AS action_type
    FROM person_order
        JOIN menu
          ON menu.id = menu_id
    GROUP BY menu.pizzeria_id
    ORDER BY count DESC LIMIT 3)
UNION (
    SELECT pizzeria_id, COUNT(*) AS count, 'visit'
    FROM person_visits
    GROUP BY pizzeria_id
    ORDER BY count DESC LIMIT 3)) AS agg
JOIN pizzeria
ON pizzeria.id = agg.pizzeria_id
ORDER BY action_type, count DESC;

-- - The result is below (raw ordering should be the same like below)

--       "Dominos"	"6"	"order"
--       "Best Pizza"	"5"	"order"
--       "DinoPizza"	"5"	"order"
--       "Dominos"	"7"	"visit"
--       "DinoPizza"	"4"	"visit"
--       "Pizza Hut"	"4"	"visit"