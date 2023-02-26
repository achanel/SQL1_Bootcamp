DROP FUNCTION IF EXISTS fnc_person_visits_and_eats_on_date(character varying, numeric, date);

CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    IN pperson varchar DEFAULT 'Dmitriy',
    IN pprice numeric DEFAULT 500,
    IN pdate date DEFAULT '2022-01-08')
    RETURNS TABLE
        (
            name varchar)
    AS $$
        BEGIN
            RETURN QUERY
                SELECT pz.name
                FROM (SELECT pv.pizzeria_id
                      FROM person_visits pv
                          JOIN person p ON pv.person_id = p.id
                      WHERE pv.visit_date = pdate
                        AND p.name = pperson
                INTERSECT
                SELECT m.pizzeria_id
                FROM menu m
                    WHERE m.price < pprice) AS pvp
                JOIN pizzeria pz ON pz.id = pvp.pizzeria_id;
        END;
    $$
    LANGUAGE plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');


- The result of SQL

      "Papa Johns"
      "DoDo Pizza"
         

- The result of SQL

      "Pizza Hut"