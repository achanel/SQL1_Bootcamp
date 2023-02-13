CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
    SELECT pizzeria.name
    FROM  person_visits
        JOIN person ON person_id = person.id
        JOIN pizzeria ON pizzeria_id = pizzeria.id
    WHERE visit_date = '2022-01-08' AND person.name = 'Dmitriy'
INTERSECT
    SELECT pizzeria.name
    FROM pizzeria JOIN menu ON pizzeria.id = menu.pizzeria_id
    WHERE price < 800;

-- - The check script is below.

    -- SELECT *
    -- FROM mv_dmitriy_visits_and_eats

-- -The result below (raw ordering should be the same like on a screen below)

    -- "Papa Johns"