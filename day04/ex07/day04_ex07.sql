INSERT INTO person_visits
VALUES ((SELECT MAX(id) + 1 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Dmitriy'),
        (SELECT pizzeria_id
         FROM menu JOIN pizzeria
             ON pizzeria_id = pizzeria.id
         WHERE price < 800
           AND pizzeria.name != 'Papa Johns'
         LIMIT 1),
        '2022-01-08');

SELECT pizzeria.name
FROM person_visits
         JOIN person ON person_id = person.id
         JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE visit_date = '2022-01-08'
  AND person.name = 'Dmitriy'

INTERSECT

SELECT pizzeria.name
FROM pizzeria JOIN menu
              ON pizzeria.id = pizzeria_id
WHERE price < 800;

SELECT * FROM mv_dmitriy_visits_and_eats;

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * FROM mv_dmitriy_visits_and_eats;

-- - The check script is below.

    -- SELECT *
    -- FROM mv_dmitriy_visits_and_eats

-- -The result below (raw ordering should be the same like on a screen below)

    -- "DoDo Pizza"
    -- "Papa Johns"