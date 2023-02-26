SELECT name, COUNT(person_id)
    AS count_of_visits
FROM person_visits
    LEFT JOIN person
        ON person_visits.person_id = person.id
GROUP BY 1
ORDER BY 2
DESC LIMIT 4;

-- - The result is below (raw ordering should be the same like below)

--       "Dmitriy"	"4"
--       "Denis"	"3"
--       "Irina"	"3"
--       "Nataly"	"3"
