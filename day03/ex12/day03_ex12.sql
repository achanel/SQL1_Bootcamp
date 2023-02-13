INSERT INTO person_order
SELECT (SELECT MAX(id) + gs.id FROM person_order group by gs.id),
       gs.id, (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       '2022-02-25'
FROM generate_series(1, (SELECT COUNT(id) FROM person)) AS gs(id);

-- - The check script is below.

--        select count(*)=9 as check
--        from person_order
--        where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')

-- - The result is below

--        true