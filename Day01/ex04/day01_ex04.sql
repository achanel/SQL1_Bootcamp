SELECT person_id FROM person_order WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id FROM person_visits WHERE visit_date = '2022-01-07'

-- - The result is below (raw ordering should be the same like below)

--       "4"
--       "4"