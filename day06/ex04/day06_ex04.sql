AlTER TABLE person_discounts ADD CONSTRAINT ch_nn_person_id
    CHECK (person_id IS NOT NULL );
AlTER TABLE person_discounts ADD CONSTRAINT ch_nn_pizzeria_id
    CHECK (pizzeria_id IS NOT NULL );
AlTER TABLE person_discounts ADD CONSTRAINT ch_nn_discount
    CHECK (discount IS NOT NULL );
AlTER TABLE person_discounts ALTER COLUMN discount SET DEFAULT 0;
AlTER TABLE person_discounts ADD CONSTRAINT ch_range_discount
    CHECK (person_discounts.discount BETWEEN 0 AND 100);

-- - The SQL script looks like below.

--       select count(*) = 4 as check
--       from pg_constraint
--       where conname in ('ch_nn_person_id','ch_nn_pizzeria_id','ch_nn_discount','ch_range_discount')                   

-- - The result is below (raw ordering should be the same like below)

--         "true"

-- - The SQL script looks like below.

--       select column_default::integer = 0 as check
--       from information_schema.columns
--       where column_name = 'discount' and table_name = 'person_discounts'          

-- - The result is below (raw ordering should be the same like below)

--         "true"                        