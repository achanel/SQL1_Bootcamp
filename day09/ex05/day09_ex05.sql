DROP FUNCTION fnc_persons_female();
DROP FUNCTION fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(pgender varchar DEFAULT 'female')
    RETURNS TABLE
            (
                id      bigint,
                name    varchar,
                age     integer,
                gender  varchar,
                address varchar
            )
    AS $$
        SELECT *
        FROM person
        WHERE gender = pgender;
    $$ LANGUAGE sql;

SELECT *
FROM fnc_persons(pgender := 'male');
SELECT *
FROM fnc_persons();

-- - The result of SQL

--       "2"	"Andrey"	"21"	"male"	"Moscow"
--       "4"	"Denis"	"13"	"male"	"Kazan"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"

-- - The result of SQL

--       "1"	"Anna"	"16"	"female"	"Moscow"
--       "3"	"Kate"	"33"	"female"	"Kazan"
--       "5"	"Elvira"	"45"	"female"	"Kazan"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"