SELECT COALESCE(p.name, '-') AS person_name, pv.visit_date, COALESCE(pz.name, '-') AS pizzeria_name
FROM ( SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
FULL JOIN person p ON pv.person_id = p.id
FULL JOIN pizzeria pz ON pv.pizzeria_id = pz.id
ORDER BY person_name, pv.visit_date;

-- The result is below (raw ordering should be the same like below)

--       -	null	DinoPizza
--       -	null	DoDo Pizza
--       Andrey	2022-01-01	Dominos
--       Andrey	2022-01-02	Pizza Hut
--       Anna	2022-01-01	Pizza Hut
--       Denis	null	-
--       Dmitriy	null	-
--       Elvira	null	-
--       Irina	2022-01-01	Papa Johns
--       Kate	2022-01-03	Best Pizza
--       Nataly	null	-
--       Peter	2022-01-03	Pizza Hut