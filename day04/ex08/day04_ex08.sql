DROP VIEW IF EXISTS v_persons_female;
DROP VIEW IF EXISTS v_persons_male;
DROP VIEW IF EXISTS v_generated_dates;
DROP VIEW IF EXISTS v_symmetric_union;
DROP VIEW IF EXISTS v_price_with_discount;

DROP MATERIALIZED VIEW IF EXISTS mv_dmitriy_visits_and_eats;

-- - The check script is below.

    -- SELECT count(*) =0 as check
    -- FROM pg_class
    -- where relname in('v_generated_dates', 'v_persons_female', 'v_persons_male',
    -- 'v_price_with_discount', 'v_symmetric_union', 'mv_dmitriy_visits_and_eats')

-- -The result below (raw ordering should be the same like on a screen below)

    -- "true"