/* Here we will delete the duplicate row. In our version, the row we want to delete
 has ID number 5 (instead 4)
*/

USE cars_database;

DELETE FROM cars 
WHERE
    ID = 5;