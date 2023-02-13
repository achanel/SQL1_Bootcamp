CREATE OR REPLACE VIEW v_symmetric_union AS
WITH v2 AS (
    SELECT person_id
    FROM person_visits
    WHERE visit_date = '2022-01-02'
),
     v6 AS (
         SELECT person_id
         FROM person_visits
         WHERE visit_date = '2022-01-06'
     )
SELECT *
FROM v2
WHERE person_id NOT IN (SELECT person_id FROM v6)
union
SELECT *
FROM v6
WHERE person_id NOT IN (SELECT person_id FROM v2)
ORDER BY person_id;

-- - The check script is below.

    -- SELECT *
    -- FROM v_symmetric_union

-- -The result below (raw ordering should be the same like on a screen below)

    -- "2"
    -- "8"