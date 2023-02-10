WITH md AS (SELECT * FROM person_order
    JOIN menu ON menu_id = menu.id
    JOIN person ON person_id = person.id
WHERE gender = 'female')
SELECT md.name FROM md WHERE pizza_name = 'pepperoni pizza'
INTERSECT
SELECT md.name FROM md WHERE pizza_name = 'cheese pizza';

-- - The result is below (raw ordering should be the same like below)

--        "Anna"
--        "Nataly"