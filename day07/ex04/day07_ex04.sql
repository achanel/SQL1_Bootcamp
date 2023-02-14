SELECT person.name, agg.count AS count_of_visits
FROM (SELECT person_id, COUNT(*) AS count
        FROM person_visits
        GROUP BY person_id
        HAVING COUNT(*) > 3) AS agg
JOIN person
ON agg.person_id = person.id;