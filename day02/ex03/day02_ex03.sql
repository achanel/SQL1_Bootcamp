WITH md AS (SELECT gs::date AS missing_date
FROM generate_series ('2022-01-01', '2022-01-10', '1 day'::interval) gs),
         pv AS (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2)
SELECT missing_date
FROM md LEFT JOIN pv ON pv.visit_date = md.missing_date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;

-- - The result is below (raw ordering should be the same like below)

--       "2022-01-03"
--       "2022-01-04"
--       "2022-01-05"
--       "2022-01-06"
--       "2022-01-07"
--       "2022-01-08"
--       "2022-01-09"
--       "2022-01-10"