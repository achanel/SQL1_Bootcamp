SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
    JOIN person_visits ON pizzeria.id = pizzeria_id
    JOIN person ON person.id = person_visits.person_id
    JOIN menu ON menu.pizzeria_id =  pizzeria.id
WHERE person.name = 'Dmitriy'
  AND price < 800 AND person_visits.visit_date = '2022-01-08';

  -- - The result is below (raw ordering should be the same like below)

  --     "Papa Johns"