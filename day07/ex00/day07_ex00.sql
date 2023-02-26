SELECT person_id, COUNT(*) AS count_of_visits
  FROM person_visits
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id;

-- - The result is below (raw ordering should be the same like on a screen below)

--       "9"	"4"
--       "4"	"3"
--       "6"	"3"
--       "8"	"3"
--       "2"	"2"
--       "3"	"2"
--       "5"	"2"
--       "7"	"2"
--       "1"	"1"
