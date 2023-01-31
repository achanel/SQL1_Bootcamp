SELECT order_date, name || ' (age:' || age || ')' AS person_information
FROM person_order JOIN person p on p.id = person_order.person_id
ORDER BY person_order.order_date, name;