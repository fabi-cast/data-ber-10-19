/* We created a database schema different from the one of the exercise. In our case the 
misspelling appears in the table stores.*/

USE cars_database;

UPDATE stores 
SET 
    city = 'Miami'
WHERE
    city = 'Mimia';

UPDATE customers 
SET 
    email = (CASE
        WHEN name_customer = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
        WHEN name_customer = 'Abraham Lincoln' THEN 'lincoln@us.gov'
        WHEN name_customer = 'Napoleón Bonaparte' THEN 'hello@napoleon.me'
    END);


