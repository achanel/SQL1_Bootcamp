WITH pop AS (
    SELECT pizzeria.name, gender FROM person_order
        JOIN person ON person_id = person.id
        JOIN menu ON menu_id = menu.id
        JOIN pizzeria ON menu.pizzeria_id = pizzeria.id),
     po_male AS (SELECT name FROM pop WHERE gender = 'male'),
     po_female AS (SELECT name FROM pop WHERE gender = 'female')

SELECT name AS pizzeria_name
FROM (
         (SELECT * FROM po_male EXCEPT SELECT * FROM po_female)
         UNION
         (SELECT * FROM po_female EXCEPT SELECT * FROM po_male)
     ) AS u
ORDER BY pizzeria_name;

-- - The result is below (raw ordering should be the same like below)

--         "Papa Johns"