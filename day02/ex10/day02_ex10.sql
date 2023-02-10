SELECT p1.name AS person_name1,
       p2.name AS person_name2,
       p1.address AS common_address
FROM person p1 INNER JOIN person p2
    ON p1.address = p2.address
WHERE p1.id > p2.id
ORDER BY p1.name, p2.name, p1.address;

-- - The result is below (raw ordering should be the same like below)

--        "Andrey"	"Anna"	"Moscow"
--        "Denis"	"Kate"	"Kazan"
--        "Elvira"	"Denis"	"Kazan"
--        "Elvira"	"Kate"	"Kazan"
--        "Peter"	"Irina"	"Saint-Petersburg"