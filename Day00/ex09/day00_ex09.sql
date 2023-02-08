SELECT (SELECT name FROM person WHERE id = pv.person_id) AS person_name ,
       (SELECT name FROM pizzeria WHERE id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name ASC, pizzeria_name DESC;

-- - The result is below (raw ordering should be the same like below)

--        "Denis"	"DinoPizza"
--        "Denis"	"Best Pizza"
--        "Dmitriy"	"Papa Johns"
--        "Dmitriy"	"Best Pizza"
--        "Elvira"	"Dominos"
--        "Elvira"	"DinoPizza"
--        "Irina"	"Dominos"
--        "Nataly"	"Papa Johns"