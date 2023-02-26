CREATE TABLE IF NOT EXISTS person_discounts (
    id bigint NOT NULL PRIMARY KEY,
    person_id bigint NOT NULL
        CONSTRAINT fk_person_discounts_person_id REFERENCES person,
    pizzeria_id bigint NOT NULL
        CONSTRAINT fk_person_discounts_pizzeria_id REFERENCES pizzeria,
    discount numeric DEFAULT 0 NOT NULL
);

-- - The SQL script looks like below.

--       select count(*) = 1 as check
--       from pg_tables
--       where tablename = 'person_discounts'                

-- - The result is below (raw ordering should be the same like on a screen below)

--       "true"