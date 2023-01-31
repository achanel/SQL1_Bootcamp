SELECT p.name AS person_name, m.pizza_name, pz.name AS pizzeria_name
FROM person_order
    JOIN person p on p.id = person_order.person_id
    JOIN menu m on m.id = person_order.menu_id
    JOIN pizzeria pz on pz.id = m.pizzeria_id
ORDER BY p.name, m.pizza_name;