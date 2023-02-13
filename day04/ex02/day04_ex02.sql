CREATE VIEW v_generated_dates AS
    SELECT DATE_TRUNC('day', dt)::date AS generated_date
    FROM generate_series('2022-01-01'::date, '2022-01-31'::date, '1 day'::interval) AS dt
ORDER BY dt;

-- - The check script is below.

--     SELECT count(*)=31 as check,
--         min(generated_date) as check1,
--         max(generated_date) as check2
--     FROM v_generated_dates;

-- -The result below (raw ordering should be the same like on a screen below)

    -- true 2022-01-01 2022-01-31