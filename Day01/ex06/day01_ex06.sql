SELECT i.action_date, p.name AS person_name
    FROM (
        (SELECT order_date AS action_date, person_id
        FROM person_order
        INTERSECT
        SELECT visit_date, person_id FROM person_visits) AS i
            JOIN (SELECT name, id FROM person) AS p ON i.person_id = p.id)
ORDER BY action_date, person_id DESC