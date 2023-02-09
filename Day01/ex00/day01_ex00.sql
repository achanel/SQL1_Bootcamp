SELECT id AS object_id, name AS object_name
FROM person
UNION
SELECT id, pizza_name FROM menu
ORDER BY object_id ASC, object_name ASC;

-- - The result is below (row ordering for 1st column should be the same like on a screen below, but ordering for second column depends on system options)

--       "1"	"Anna"
--       "1"	"cheese pizza"
--       "2"	"Andrey"
--       "2"	"pepperoni pizza"
--       "3"	"Kate"
--       "3"	"sausage pizza"
--       "4"	"Denis"
--       "4"	"supreme pizza"
--       "5"	"cheese pizza"
--       "5"	"Elvira"
--       "6"	"Irina"
--       "6"	"pepperoni pizza"
--       "7"	"Peter"
--       "7"	"sausage pizza"
--       "8"	"cheese pizza"
--       "8"	"Nataly"
--       "9"	"Dmitriy"
--       "9"	"mushroom pizza"
--       "10"	"cheese pizza"
--       "11"	"supreme pizza"
--       "12"	"cheese pizza"
--       "13"	"mushroom pizza"
--       "14"	"pepperoni pizza"
--       "15"	"sausage pizza"
--       "16"	"cheese pizza"
--       "17"	"pepperoni pizza"
--       "18"	"supreme pizza"