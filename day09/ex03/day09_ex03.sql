DROP TRIGGER IF EXISTS trg_person_insert_audit ON person;
DROP TRIGGER IF EXISTS trg_person_update_audit ON person;
DROP TRIGGER IF EXISTS trg_person_delete_audit ON person;
DROP FUNCTION IF EXISTS fnc_trg_person_insert_audit();
DROP FUNCTION IF EXISTS fnc_trg_person_update_audit();
DROP FUNCTION IF EXISTS fnc_trg_person_delete_audit();
TRUNCATE TABLE person_audit;

CREATE OR REPLACE FUNCTION fnc_trg_person_audit() RETURNS TRIGGER AS
$person_audit$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        INSERT INTO person_audit(row_id, name, age, gender, address)
        VALUES (NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
        VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD. address);
    ELSIF (TG_OP = 'DELETE') THEN
        INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
        VALUES ('D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    END IF;
    RETURN NULL;
END;
$person_audit$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_person_audit
    AFTER INSERT OR UPDATE OR DELETE ON person
    FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;

SELECT * FROM person_audit;

-- - result of SQL

--       "2022-03-21 20:33:30.826364 +00:00"	"I"	"10"	"Damir"	"22"	"male"	"Irkutsk"
--       "2022-03-21 20:33:31.282922 +00:00"	"U"	"10"	"Damir"	"22"	"male"	"Irkutsk"
--       "2022-03-21 20:33:31.746362 +00:00"	"U"	"10"	"Bulat"	"22"	"male"	"Irkutsk"
--       "2022-03-21 20:33:32.228181 +00:00"	"D"	"10"	"Damir"	"22"	"male"	"Irkutsk"