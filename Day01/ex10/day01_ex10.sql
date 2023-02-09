SELECT p.name AS person_name, m.pizza_name, pz.name AS pizzeria_name
FROM person_order
    JOIN person p on p.id = person_order.person_id
    JOIN menu m on m.id = person_order.menu_id
    JOIN pizzeria pz on pz.id = m.pizzeria_id
ORDER BY p.name, m.pizza_name;

-- - The result is below (raw ordering should be the same like below)

--       "Andrey"	"cheese pizza"	"Dominos"
--       "Andrey"	"mushroom pizza"	"Dominos"
--       "Anna"	"cheese pizza"	"Pizza Hut"
--       "Anna"	"pepperoni pizza"	"Pizza Hut"
--       "Denis"	"cheese pizza"	"Best Pizza"
--       "Denis"	"pepperoni pizza"	"Best Pizza"
--       "Denis"	"pepperoni pizza"	"DinoPizza"
--       "Denis"	"sausage pizza"	"DinoPizza"
--       "Denis"	"supreme pizza"	"Best Pizza"
--       "Dmitriy"	"pepperoni pizza"	"DinoPizza"
--       "Dmitriy"	"supreme pizza"	"Best Pizza"
--       "Elvira"	"pepperoni pizza"	"DinoPizza"
--       "Elvira"	"sausage pizza"	"DinoPizza"
--       "Irina"	"mushroom pizza"	"Papa Johns"
--       "Kate"	"cheese pizza"	"Best Pizza"
--       "Nataly"	"cheese pizza"	"Dominos"
--       "Nataly"	"pepperoni pizza"	"Papa Johns"
--       "Peter"	"mushroom pizza"	"Dominos"
--       "Peter"	"sausage pizza"	"Pizza Hut"
--       "Peter"	"supreme pizza"	"Pizza Hut"