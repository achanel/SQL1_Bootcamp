SELECT person.name, menu.pizza_name, menu.price,
       CAST(menu.price * (1 - person_discounts.discount / 100)
           as numeric(18, 0)),
       pizzeria.name AS pizzeria_name
FROM person_order
    JOIN person
        ON person_order.person_id = person.id
    JOIN menu
        ON person_order.menu_id = menu.id
    JOIN pizzeria
        ON menu.pizzeria_id = pizzeria.id
    JOIN person_discounts
        ON person_discounts.person_id = person.id
            AND person_discounts.pizzeria_id = pizzeria.id
ORDER BY person.name, menu.pizza_name;

-- - The result is below (raw ordering should be the same like below)

--      "Andrey"	"cheese pizza"	"800"	"624" "Dominos"
--       "Andrey"	"mushroom pizza"	"1100"	"858" "Dominos"
--       "Anna"	"cheese pizza"	"900"	"702" "Pizza Hut"
--       "Anna"	"pepperoni pizza"	"1200"	"936" "Pizza Hut"
--       "Denis"	"cheese pizza"	"700"	"490" "Best Pizza"
--       "Denis"	"pepperoni pizza"	"800"	"624" "DinoPizza"
--       "Denis"	"pepperoni pizza"	"800"	"560" "Best Pizza"
--       "Denis"	"sausage pizza"	"1000"	"780" "DinoPizza"
--       "Denis"	"sicilian pizza"	"900"	"805.5" "Dominos"
--       "Denis"	"supreme pizza"	"850"	"595" "Best Pizza"
--       "Dmitriy"	"pepperoni pizza"	"800"	"716" "DinoPizza"
--       "Dmitriy"	"supreme pizza"	"850"	"760.75" "Best Pizza"
--       "Elvira"	"pepperoni pizza"	"800"	"624" "DinoPizza"
--       "Elvira"	"sausage pizza"	"1000"	"780" "DinoPizza"
--       "Irina"	"mushroom pizza"	"950"	"850.25" "Papa Johns"
--       "Irina"	"sicilian pizza"	"900"	"805.5" "Dominos"
--       "Kate"	"cheese pizza"	"700"	"626.5" "Best Pizza"
--       "Nataly"	"cheese pizza"	"800"	"716" "Dominos"
--       "Nataly"	"pepperoni pizza"	"1000"	"895" "Papa Johns"
--       "Peter"	"mushroom pizza"	"1100"	"984.5" "Dominos"
--       "Peter"	"sausage pizza"	"1200"	"936" "Pizza Hut"
--       "Peter"	"supreme pizza"	"1200"	"936" "Pizza Hut"