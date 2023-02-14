WITH pvg AS (
    SELECT person_id, COUNT(*) AS count_of_visits
      FROM person_visits
  GROUP BY person_id
)
SELECT person.name, pvg.count_of_visits
  FROM pvg
      JOIN person
        ON pvg.person_id = person.id
ORDER BY pvg.count_of_visits DESC, pvg.person_id
LIMIT 4;
