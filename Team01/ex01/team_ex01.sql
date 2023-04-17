insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

SELECT coalesce(u.name, 'not defined')     AS name,
       coalesce(u.lastname, 'not defined') AS lastname,
       c.name                              AS currency_name,
       b.money * c.rate_to_usd             AS currency_in_usd
FROM balance b
    LEFT JOIN "user" u ON b.user_id = u.id
    INNER JOIN currency c
        ON (b.currency_id = c.id
               AND c.updated = coalesce(
                   (SELECT max(currency.updated)
                    FROM currency
                    WHERE c.id = currency.id
                      AND b.updated >= currency.updated
                    GROUP BY currency.id),
                   (SELECT min(currency.updated)
                    FROM currency
                    WHERE c.id = currency.id
                      AND b.updated < currency.updated
                    GROUP BY currency.id)))
ORDER BY name DESC, lastname, currency_name;


--  select t1.name,
--             t1.lastname,
--             currency_name,
--             money * rate_to_usd as currency_in_usd
--         from (
--         select coalesce(u.name,'not defined') as name,
--             coalesce(u.lastname,'not defined') as lastname,
--             c.name as currency_name,
--             money,
--             coalesce((select rate_to_usd 
--             from currency c where b.currency_id = c.id and c.updated < b.updated order by  c.updated desc limit 1),
--                     (select rate_to_usd 
--                     from currency c where b.currency_id = c.id and c.updated > b.updated order by  c.updated asc limit 1)) as rate_to_usd
--         from balance b inner join
--             (select c.id, c.name from currency c group by c.id,c.name) as c on c.id = b.currency_id
--             left join "user" u on u.id = b.user_id) as t1
--         order by 1 desc,2,3;

-- - The result is below

--       "Иван"	"Иванов"	"EUR"	"150.1"
--       "Иван"	"Иванов"	"EUR"	"17"
--       "Иван"	"Иванов"	"EUR"	"158"
--       "not defined"	"not defined"	"JPY"	"0.948"
--       "not defined"	"not defined"	"USD"	"120"
--       "not defined"	"Сидоров"	"EUR"	"39.5"
--       "not defined"	"Сидоров"	"JPY"	"3.95"
--       "not defined"	"Сидоров"	"USD"	"500"