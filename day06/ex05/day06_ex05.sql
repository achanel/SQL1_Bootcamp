COMMENT ON TABLE person_discounts IS 'Таблица персональных скидок';
COMMENT ON COLUMN person_discounts.id IS 'Первичный ключ';
COMMENT ON COLUMN person_discounts.person_id IS 'Внешний ключ атрибута person_id';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Внешний ключ атрибута pizzeria_id';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка в процентах';

-- - The SQL script looks like below.

--       SELECT count(*) = 5 as check
--       FROM   pg_description
--       WHERE  objoid = 'person_discounts'::regclass                 

-- - The result is below (raw ordering should be the same like below)

--        "true"