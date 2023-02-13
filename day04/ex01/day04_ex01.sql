SELECT name FROM (
    SELECT name FROM v_persons_female
                UNION SELECT name FROM v_persons_male
                 ) AS p
ORDER BY name;

-- -The result below (raw ordering should be the same like on a screen below)

-- "Andrey"
-- "Anna"
-- "Denis"
-- "Dmitriy"
-- "Elvira"
-- "Irina"
-- "Kate"
-- "Nataly"
-- "Peter"