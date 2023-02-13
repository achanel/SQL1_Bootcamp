SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM person_visits
    JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
    JOIN person ON person_visits.person_id = person.id
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY  pizza_name, price, pizzeria_name;

-- - The result is below (raw ordering should be the same like on a screen below)

--       "cheese pizza"	"950"	"DinoPizza"	"2022-01-04"
--       "pepperoni pizza"	"800"	"Best Pizza"	"2022-01-03"
--       "pepperoni pizza"	"800"	"DinoPizza"	"2022-01-04"
--       "sausage pizza"	"1000"	"DinoPizza"	"2022-01-04"
--       "supreme pizza"	"850"	"Best Pizza"	"2022-01-03"