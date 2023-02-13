CREATE VIEW v_persons_female AS
    SELECT * FROM person WHERE gender = 'female';

CREATE VIEW v_persons_male AS
SELECT * FROM person WHERE gender = 'male';

-- -The SQL script looks like below
--     SELECT *
--     FROM v_persons_female
--     order by 1

-- -The result below (raw ordering should be the same like on a screen below)

--     "1" "Anna" "16" "female" "Moscow"
--     "3" "Kate" "33" "female" "Kazan"
--     "5" "Elvira" "45" "female" "Kazan"
--     "6" "Irina" "21" "female" "Saint-Petersburg"
--     "8" "Nataly" "30" "female" "Novosibirsk"

-- -The SQL script looks like below
--     SELECT *
--     FROM v_persons_male
--     order by 1

-- -The result below (raw ordering should be the same like on a screen below)

--     "2" "Andrey" "21" "male" "Moscow"
--     "4" "Denis" "13" "male" "Kazan"
--     "7" "Peter" "24" "male" "Saint-Petersburg"
--     "9" "Dmitriy" "18" "male" "Samara"