WITH b AS (
    SELECT user_id, type, currency_id, sum(money) AS volume
    FROM balance
    GROUP BY user_id, type, currency_id)

SELECT coalesce(u.name, 'not defined')     AS name,
       coalesce(u.lastname, 'not defined') AS lastname,
       b.type                              AS type,
       volume,
       coalesce(c.name, 'not defined')     AS currency_name,
       coalesce(c.rate_to_usd, 1)          AS last_rate_to_usd,
       volume * coalesce(c.rate_to_usd, 1) AS total_volume_in_usd
FROM b
    LEFT JOIN "user" u ON b.user_id = u.id
    LEFT JOIN currency c
       ON (b.currency_id = c.id
               AND c.updated = (SELECT max(currency.updated)
                                FROM currency
                                WHERE  c.id = currency.id
                                GROUP BY currency.id))
ORDER BY name DESC, lastname, type;


-- select coalesce(u.name,'not defined') as name,
--             coalesce(u.lastname,'not defined') as lastname,
--             t1.type,
--             t1.volume,
--             coalesce(c.name,'not defined') as currency_name,
--             coalesce((select rate_to_usd from currency c1 where c1.id = c.id and c1.updated = c.last_updated),
--                         1) as last_rate_to_usd,
--             t1.volume::numeric * coalesce((select rate_to_usd 
--             from currency c1 where c1.id = c.id and c1.updated = c.last_updated),1) as total_volume_in_usd
--         from (
--         select user_id, type, currency_id, sum(money) as volume
--         from  balance b
--         group by user_id,type, currency_id) as t1
--         full join "user" u on u.id = t1.user_id
--         full join (select id,name,max(updated) as last_updated from currency c group by id, name) as c on c.id = t1.currency_id
--         order by 1 desc,2,3;

-- - The result is below

--       "Петр"	"not defined"	"2"	"203"	"not defined"	"1"	"203"
--       "Иван"	"Иванов"	"1"	"410"	"EUR"	"0.9"	"369"
--       "not defined"	"not defined"	"0"	"120"	"JPY"	"0.0087"	"1.044"
--       "not defined"	"not defined"	"1"	"120"	"USD"	"1"	"120"
--       "not defined"	"Сидоров"	"0"	"50"	"EUR"	"0.9"	"45"
--       "not defined"	"Сидоров"	"1"	"500"	"USD"	"1"	"500"
--       "not defined"	"Сидоров"	"2"	"500"	"JPY"	"0.0087"	"4.35"