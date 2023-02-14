SELECT pizzeria.name, sum.total_count
  FROM (SELECT agg.pizzeria_id, SUM(count) AS total_count
          FROM (SELECT pizzeria_id, COUNT(*) AS count
                FROM person_visits
                GROUP BY pizzeria_id
                UNION
                SELECT menu.pizzeria_id, COUNT(*) AS count
                  FROM person_order
                  JOIN menu
                    ON person_order.menu_id = menu.id
                  GROUP BY menu.pizzeria_id) AS agg
        GROUP BY agg.pizzeria_id) AS sum
        JOIN pizzeria
        ON pizzeria.id = sum.pizzeria_id
ORDER BY total_count DESC, name;