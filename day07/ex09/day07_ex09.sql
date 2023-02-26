WITH agg AS (
    SELECT p.address, ROUND((MAX(p.age) - MIN(p.age)::float4 / MAX(p.age))::numeric, 2)
        AS formula, ROUND(AVG(p.age), 2) AS average
      FROM person p
  GROUP BY p.address)
SELECT *, formula > average
    AS comparison
  FROM agg
ORDER BY agg.address;

-- - The result is below (raw ordering should be the same like below)

--     "Kazan"	"44.71"	"30.33"	"true"
--     "Moscow"	"20.24"	"18.5"	"true"
--     "Novosibirsk"	"29"	"30"	"false"
--     "Saint-Petersburg"	"23.13"	"22.5"	"true"
--     "Samara"	"17"	"18"	"false"