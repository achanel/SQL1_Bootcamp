/*Session #1*/
BEGIN;

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      5
(1 row)*/

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';/*update of rating for “Pizza Hut” to 4 points in a transaction mode.*/
/*UPDATE 1*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/

COMMIT WORK; /*publish your changes for all parallel sessions.*/
/*COMMIT*/

/*Session #2*/
BEGIN;

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #2*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      5
(1 row)*/

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';/*update of rating for “Pizza Hut” to 3.6 points in a transaction mode.*/
/*UPDATE 1*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #2*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/

COMMIT WORK; /*publish your changes for all parallel sessions.*/
/*COMMIT*/