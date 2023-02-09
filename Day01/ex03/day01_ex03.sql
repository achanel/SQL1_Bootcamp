SELECT order_date AS action_date, person_id
FROM person_order
INTERSECT
SELECT visit_date, person_id FROM person_visits
ORDER BY action_date, person_id DESC

-- - The result is below (row ordering should be the same like below)

--       "2022-01-01"	"6"
--       "2022-01-01"	"2"
--       "2022-01-01"	"1"
--       "2022-01-03"	"7"
--       "2022-01-04"	"3"
--       "2022-01-05"	"7"
--       "2022-01-06"	"8"
--       "2022-01-07"	"8"
--       "2022-01-07"	"4"
--       "2022-01-08"	"4"
--       "2022-01-09"	"9"
--       "2022-01-09"	"5"
--       "2022-01-10"	"9"