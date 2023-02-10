SELECT pz.name, pz.rating FROM pizzeria pz
LEFT JOIN person_visits pv on pz.id = pv.pizzeria_id
WHERE pv.pizzeria_id IS NULL;

-- - The result is below (raw ordering should be the same like on a screen below)

--       "DoDo Pizza"	"3.2"