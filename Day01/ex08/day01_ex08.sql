SELECT order_date, name || ' (age:' || age || ')' AS person_information
FROM
    (SELECT person_id, order_date FROM person_order) AS piod
    NATURAL JOIN
    (SELECT id AS person_id, name, age FROM person) AS pina
ORDER BY order_date, name;