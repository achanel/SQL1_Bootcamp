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