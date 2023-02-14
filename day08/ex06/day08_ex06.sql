/*Session #1*/
START TRANSACTION ISOLATION LEVEL REPEATABLE READ;
/*START TRANSACTION*/
SELECT SUM(rating) FROM pizzeria;
/* sum
------
 19.9
(1 row)*/
SELECT SUM(rating) FROM pizzeria;
/* sum
------
 19.9
(1 row)*/
COMMIT WORK ;
/*COMMIT*/
SELECT SUM(rating) FROM pizzeria;
/* sum
------
 23.9
(1 row)*/

/*Session #2*/
START TRANSACTION ISOLATION LEVEL REPEATABLE READ;
/*START TRANSACTION*/
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
/*UPDATE 1*/
COMMIT WORK ;
/*COMMIT*/
SELECT SUM(rating) FROM pizzeria;
/* sum
------
 23.9
(1 row)*/