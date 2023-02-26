CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit() RETURNS TRIGGER AS
$person_audit$
BEGIN
    INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
    VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD. address);
    RETURN OLD;
END;
$person_audit$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_person_update_audit
    AFTER UPDATE ON person
    FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
SELECT * FROM person_audit;

-- - result of SQL

--       "2022-03-21 20:27:40.283551 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
--       "2022-03-21 20:29:38.834865 +00:00"	"U"	"10"	"Damir"	"22"	"male"	"Irkutsk"
--       "2022-03-21 20:29:39.333943 +00:00"	"U"	"10"	"Bulat"	"22"	"male"	"Irkutsk"