INSERT INTO menu
VALUES ((SELECT MAX(menu.id) + 1 FROM menu),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        'sicilian pizza', 900)

-- - The check script is below.

--        select count(*)=1 as check
--        from menu
--        where id = 20 and pizzeria_id=2 and pizza_name = 'sicilian pizza' and price=900

-- - The result is below 

--       true