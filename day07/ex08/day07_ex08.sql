SELECT address, pizzeria.name, COUNT(*) AS count_of_orders
  FROM person_order
  JOIN menu
    ON menu_id = menu.id
  JOIN person
    ON person_id = person.id
  JOIN pizzeria
    ON pizzeria_id = pizzeria.id
GROUP BY address, pizzeria.name
ORDER BY address, pizzeria.name;

-- - The result is below (raw ordering should be the same like below)

--     "Kazan"	"Best Pizza"	"4"
--     "Kazan"	"DinoPizza"	"4"
--     "Kazan"	"Dominos"	"1"
--     "Moscow"	"Dominos"	"2"
--     "Moscow"	"Pizza Hut"	"2"
--     "Novosibirsk"	"Dominos"	"1"
--     "Novosibirsk"	"Papa Johns"	"1"
--     "Saint-Petersburg"	"Dominos"	"2"
--     "Saint-Petersburg"	"Papa Johns"	"1"
--     "Saint-Petersburg"	"Pizza Hut"	"2"
--     "Samara"	"Best Pizza"	"1"
--     "Samara"	"DinoPizza"	"1"