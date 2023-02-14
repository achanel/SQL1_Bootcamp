CREATE INDEX idx_menu_pizzeria_id
    ON menu(pizzeria_id);
CREATE INDEX idx_person_order_person_id
    ON person_order(person_id);
CREATE INDEX idx_person_order_menu_id
    ON person_order(menu_id);
CREATE INDEX idx_person_visits_person_id
    ON person_visits(person_id);
CREATE INDEX idx_person_visits_pizzeria_id
    ON person_visits (pizzeria_id);

-- - The SQL script looks like below.

--       select count(*) = 5 as check
--       from pg_indexes
--       where indexname in ('idx_menu_pizzeria_id','idx_person_order_person_id',
--       'idx_person_order_menu_id','idx_person_visits_person_id','idx_person_visits_pizzeria_id')               

-- - The result is below (raw ordering should be the same like on a screen below)

--       "true"