/*Session #1*/
BEGIN;

UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';/*update of rating for “Pizza Hut” to 4 points in a transaction mode.*/
/*UPDATE 1*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      4
(1 row)*/

COMMIT WORK; /*publish your changes for all parallel sessions.*/
/*COMMIT*/

/*Session #2*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*before commit*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      3
(1 row)*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*after commit*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/


