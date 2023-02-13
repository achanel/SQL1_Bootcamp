INSERT INTO person_visits
VALUES ((SELECT MAX(id) + 1 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        '2022-02-24'),
        ((SELECT MAX(id) + 2 FROM person_visits),
         (SELECT id FROM person WHERE name = 'Irina'),
         (SELECT id FROM pizzeria WHERE name = 'Dominos'),
         '2022-02-24');

-- - The check script is below.

--        select count(*)=2 as check
--        from person_visits
--        where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;

-- - The result is below 

--        true