SELECT order_date, name || ' (age:' || age || ')' AS person_information
FROM person_order JOIN person p on p.id = person_order.person_id
ORDER BY person_order.order_date, name;

-- - The result is below (raw ordering should be the same like below)

--       2022-01-01	Andrey (age:21)
--       2022-01-01	Andrey (age:21)
--       2022-01-01	Anna (age:16)
--       2022-01-01	Anna (age:16)
--       2022-01-01	Irina (age:21)
--       2022-01-03	Peter (age:24)
--       2022-01-04	Kate (age:33)
--       2022-01-05	Peter (age:24)
--       2022-01-05	Peter (age:24)
--       2022-01-06	Nataly (age:30)
--       2022-01-07	Denis (age:13)
--       2022-01-07	Denis (age:13)
--       2022-01-07	Denis (age:13)
--       2022-01-07	Nataly (age:30)
--       2022-01-08	Denis (age:13)
--       2022-01-08	Denis (age:13)
--       2022-01-09	Dmitriy (age:18)
--       2022-01-09	Elvira (age:45)
--       2022-01-09	Elvira (age:45)
--       2022-01-10	Dmitriy (age:18)