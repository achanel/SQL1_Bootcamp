CREATE INDEX idx_person_order_multi
    ON person_order (person_id, menu_id);

SET enable_seqscan = OFF;

EXPLAIN (ANALYSE, TIMING OFF)
SELECT person_id, menu_id, order_date
FROM person_order
WHERE person_id = 8
AND menu_id = 19;

-- - The result should contain a part of text below.

--       "Index Only Scan using idx_person_order_multi on person_order  ..."