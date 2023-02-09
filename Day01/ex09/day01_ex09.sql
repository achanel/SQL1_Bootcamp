SELECT name FROM pizzeria
            WHERE id NOT IN (SELECT pizzeria_id FROM person_visits);

SELECT name FROM pizzeria WHERE NOT EXISTS
    (SELECT pizzeria_id FROM person_visits WHERE pizzeria_id = pizzeria.id);

--     - The result is below (raw ordering should be the same like below)

--        "DoDo Pizza"

-- - The SQL script looks like below.

--       select name
--       from pizzeria
--       where not exists (select 1 from person_visits pv where pv.pizzeria_id = pizzeria.id)

-- - The result is below (raw ordering should be the same like below)

--        "DoDo Pizza"                