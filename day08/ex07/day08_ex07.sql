/*Session #1*/
BEGIN ;
/*BEGIN*/
UPDATE pizzeria SET rating = 3 WHERE id = 1;
/*UPDATE 1*/
UPDATE pizzeria SET rating = 3 WHERE id = 2;
/*UPDATE 1*/
COMMIT WORK ;
/*COMMIT*/


/*Session #2*/
BEGIN ;
/*BEGIN*/
UPDATE pizzeria SET rating = 2 WHERE id = 2;
/*UPDATE 1*/
UPDATE pizzeria SET rating = 2 WHERE id = 1;
/*ERROR:  deadlock detected
DETAIL:  Process 43756 waits for ShareLock on transaction 937; blocked by process 43763.
Process 43763 waits for ShareLock on transaction 938; blocked by process 43756.
HINT:  See server log for query details.
CONTEXT:  while updating tuple (0,31) in relation "pizzeria"*/
COMMIT WORK ;
/*ROLLBACK*/