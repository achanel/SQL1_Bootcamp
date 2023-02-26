CREATE UNIQUE INDEX idx_person_discounts_unique
    ON person_discounts(person_id, pizzeria_id);

SET enable_seqscan = OFF;

EXPLAIN (ANALYSE, TIMING OFF)
SELECT * FROM person_discounts
         WHERE person_id = 4
           AND pizzeria_id = 6;

-- - The result should contain a part of text below

--       "Index Scan using idx_person_discounts_unique on person_discounts ..."