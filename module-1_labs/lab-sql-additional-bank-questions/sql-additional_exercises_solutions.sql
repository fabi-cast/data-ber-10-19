USE bank;

CREATE TEMPORARY TABLE client_gender AS (
    SELECT
        client_id,
        IF(RIGHT(LEFT(birth_number,4),2) > 12, 'F', 'M') AS gender
    FROM client);

-- Question 1

SELECT 
    gender, COUNT(client_id) AS no_of_clients
FROM
    client_gender
GROUP BY gender
ORDER BY no_of_clients;

-- Question 2

SELECT 
    account_id, COUNT(client_id) AS no_linked_clients
FROM
    disp
GROUP BY account_id  
HAVING no_linked_clients > 2
ORDER BY no_linked_clients DESC , account_id;

-- Question 3.

 WITH R AS (SELECT 
    `account`.account_id, district.A3 AS region
FROM
    `account`
        JOIN
    district ON district.A1 = `account`.district_id)
SELECT 
R.region,
FLOOR(AVG(trans.amount)) AS average_amount
FROM trans
JOIN R
ON trans.account_id = R.account_id
GROUP BY R.region
ORDER BY R.region;

-- Question 4.

-- We use SET to assign the sum of all the transactions to the variable total_trans: 

SET @total_trans = (SELECT SUM(amount) AS trans_agg
FROM trans);

-- Then we use this variable to calculate the percentage of the amount of these categories: 

SELECT 
    ROUND(SUM(amount), 2) AS amount_other_banks,
    ROUND(SUM(amount) / @total_trans * 100, 2) AS percentage_from_total_trans
FROM
    trans
WHERE
    (operation = 'PREVOD Z UCTU'
        OR operation = 'PREVOD NA UCET');
 
 -- Question 5.
 
 /* First we filter the account_id's of clients which are owners, have finished loan 
 contracts that haven't paid (loan.status = 'B') or have running contracts but are in debt
 (loan.status = 'D')*/
 
 WITH filtered_table AS(
 SELECT `account`.district_id,
 COUNT(`account`.account_id) AS no_clients
 FROM `account`
 LEFT JOIN disp
 ON `account`.account_id = disp.account_id
 LEFT JOIN loan
 ON loan.account_id = disp.account_id
 WHERE disp.`type` = 'OWNER' AND (loan.`status`= 'B' OR loan.`status`= 'D')
 GROUP BY `account`.district_id
ORDER BY `account`.district_id)

SELECT district.A3 AS Region, 
SUM(filtered_table.no_clients) AS no_clients_owners
FROM district
LEFT JOIN filtered_table
ON district.A1 = filtered_table.district_id
GROUP BY region
ORDER BY no_clients_owners DESC, region
LIMIT 10;
 
 
 