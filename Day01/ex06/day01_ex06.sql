SELECT i.action_date, p.name AS person_name
    FROM (
        (SELECT order_date AS action_date, person_id
        FROM person_order
        INTERSECT
        SELECT visit_date, person_id FROM person_visits) AS i
            JOIN (SELECT name, id FROM person) AS p ON i.person_id = p.id)
ORDER BY action_date, person_id DESC

-- - The result is below (raw ordering should be the same like below)

--       "2022-01-01"	"Irina"
--       "2022-01-01"	"Anna"
--       "2022-01-01"	"Andrey"
--       "2022-01-03"	"Peter"
--       "2022-01-04"	"Kate"
--       "2022-01-05"	"Peter"
--       "2022-01-06"	"Nataly"
--       "2022-01-07"	"Nataly"
--       "2022-01-07"	"Denis"
--       "2022-01-08"	"Denis"
--       "2022-01-09"	"Elvira"
--       "2022-01-09"	"Dmitriy"
--       "2022-01-10"	"Dmitriy"