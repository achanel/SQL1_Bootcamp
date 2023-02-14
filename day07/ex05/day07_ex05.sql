SELECT DISTINCT person.name
  FROM person_order
  JOIN person
  ON person.id = person_order.person_id
  ORDER BY person.name;

SELECT person.name
  FROM person
  WHERE person.id IN (SELECT person_id FROM person_order)
  ORDER BY person.name;