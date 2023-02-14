/*Session #1*/
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
/*BEGIN*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      3.6
(1 row)*/

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';/*update of rating for “Pizza Hut” to 5 points in a transaction mode.*/
/*UPDATE 1*/

COMMIT WORK; /*publish your changes for all parallel sessions.*/
/*COMMIT*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/*id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      4
(1 row)*/

/*Session #2*/
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
/*BEGIN*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      3.6
(1 row)*/

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';/*update of rating for “Pizza Hut” to 5 points in a transaction mode.*/
/*ERROR:  could not serialize access due to concurrent update*/

COMMIT WORK; /*publish your changes for all parallel sessions.*/
/*ROLLBACK*/

SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';/*check that you can see a changes in session #1*/
/*id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      4
(1 row)*/