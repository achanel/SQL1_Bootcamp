CREATE INDEX idx_menu_unique
    ON menu (pizzeria_id, pizza_name);

SET enable_seqscan = OFF;

EXPLAIN (ANALYSE, TIMING OFF)
SELECT *
FROM menu
WHERE pizzeria_id = 1
  AND pizza_name = 'pepperoni pizza';

-- - The result should contain a part of text below. Can be "Index Scan" or "Index Only Scan" scanning.

--       "Index Scan using idx_menu_unique on menu  ..."