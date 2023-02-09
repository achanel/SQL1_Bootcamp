SELECT * FROM person p CROSS JOIN pizzeria pz
ORDER BY p.id, pz.id;

-- - The result is below (raw ordering should be the same like below)

--       "1"	"Anna"	"16"	"female"	"Moscow"	"1"	"Pizza Hut"	"4.6"
--       "1"	"Anna"	"16"	"female"	"Moscow"	"2"	"Dominos"	"4.3"
--       "1"	"Anna"	"16"	"female"	"Moscow"	"3"	"DoDo Pizza"	"3.2"
--       "1"	"Anna"	"16"	"female"	"Moscow"	"4"	"Papa Johns"	"4.9"
--       "1"	"Anna"	"16"	"female"	"Moscow"	"5"	"Best Pizza"	"2.3"
--       "1"	"Anna"	"16"	"female"	"Moscow"	"6"	"DinoPizza"	"4.2"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"1"	"Pizza Hut"	"4.6"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"2"	"Dominos"	"4.3"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"3"	"DoDo Pizza"	"3.2"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"4"	"Papa Johns"	"4.9"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"5"	"Best Pizza"	"2.3"
--       "2"	"Andrey"	"21"	"male"	"Moscow"	"6"	"DinoPizza"	"4.2"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"1"	"Pizza Hut"	"4.6"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"2"	"Dominos"	"4.3"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"3"	"DoDo Pizza"	"3.2"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"4"	"Papa Johns"	"4.9"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"5"	"Best Pizza"	"2.3"
--       "3"	"Kate"	"33"	"female"	"Kazan"	"6"	"DinoPizza"	"4.2"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"1"	"Pizza Hut"	"4.6"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"2"	"Dominos"	"4.3"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"3"	"DoDo Pizza"	"3.2"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"4"	"Papa Johns"	"4.9"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"5"	"Best Pizza"	"2.3"
--       "4"	"Denis"	"13"	"male"	"Kazan"	"6"	"DinoPizza"	"4.2"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"1"	"Pizza Hut"	"4.6"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"2"	"Dominos"	"4.3"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"3"	"DoDo Pizza"	"3.2"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"4"	"Papa Johns"	"4.9"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"5"	"Best Pizza"	"2.3"
--       "5"	"Elvira"	"45"	"female"	"Kazan"	"6"	"DinoPizza"	"4.2"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"1"	"Pizza Hut"	"4.6"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"2"	"Dominos"	"4.3"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"3"	"DoDo Pizza"	"3.2"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"4"	"Papa Johns"	"4.9"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"5"	"Best Pizza"	"2.3"
--       "6"	"Irina"	"21"	"female"	"Saint-Petersburg"	"6"	"DinoPizza"	"4.2"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"1"	"Pizza Hut"	"4.6"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"2"	"Dominos"	"4.3"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"3"	"DoDo Pizza"	"3.2"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"4"	"Papa Johns"	"4.9"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"5"	"Best Pizza"	"2.3"
--       "7"	"Peter"	"24"	"male"	"Saint-Petersburg"	"6"	"DinoPizza"	"4.2"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"1"	"Pizza Hut"	"4.6"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"2"	"Dominos"	"4.3"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"3"	"DoDo Pizza"	"3.2"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"4"	"Papa Johns"	"4.9"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"5"	"Best Pizza"	"2.3"
--       "8"	"Nataly"	"30"	"female"	"Novosibirsk"	"6"	"DinoPizza"	"4.2"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"1"	"Pizza Hut"	"4.6"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"2"	"Dominos"	"4.3"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"3"	"DoDo Pizza"	"3.2"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"4"	"Papa Johns"	"4.9"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"5"	"Best Pizza"	"2.3"
--       "9"	"Dmitriy"	"18"	"male"	"Samara"	"6"	"DinoPizza"	"4.2"