select id, name, case when age between 10 and 20 then 'interval #1'
    when age > 20 and age < 24 then 'interval #2'
    else 'interval #3' end as interval_info
from person
order by interval_info asc;

-- - The result is below (raw ordering should be the same like below)

--       "1"	"Anna"	"interval #1"
--       "4"	"Denis"	"interval #1"
--       "9"	"Dmitriy"	"interval #1"
--       "6"	"Irina"	"interval #2"
--       "2"	"Andrey"	"interval #2"
--       "8"	"Nataly"	"interval #3"
--       "5"	"Elvira"	"interval #3"
--       "7"	"Peter"	"interval #3"
--       "3"	"Kate"	"interval #3"