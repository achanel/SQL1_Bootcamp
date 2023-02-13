DELETE FROM person_order WHERE order_date = '2022-02-25';
DELETE FROM menu WHERE pizza_name = 'greek pizza';

-- - The check script is below.

--        select count(*)=0 as check
--        from person_order
--        where order_date='2022-02-25' and menu_id = (select id from menu where pizza_name = 'greek pizza')

-- - The result is below 

--        true

-- - The check script is below.

--        select count(*)=0 as check
--        from menu
--        where pizza_name = 'greek pizza'

-- - The result is below 

--        true