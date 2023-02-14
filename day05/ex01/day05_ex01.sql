SET enable_seqscan = OFF;
SET max_parallel_workers_per_gather = 0;

EXPLAIN (ANALYZE, TIMING OFF)
SELECT pizza_name, pizzeria.name
FROM menu
         JOIN pizzeria
              ON pizzeria_id = pizzeria.id;

-- - The result should contain a part of text below.

--       "Index Scan using idx_menu_pizzeria_id on menu m  ..."