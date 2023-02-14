/*Session #1*/
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
/*BEGIN*/
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |      4
(1 row)*/
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/
COMMIT WORK ;
/*COMMIT*/
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/

/*Session #2*/
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
/*BEGIN*/
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
/*UPDATE 1*/
COMMIT WORK ;
/*COMMIT*/
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
/* id |   name    | rating
----+-----------+--------
  1 | Pizza Hut |    3.6
(1 row)*/