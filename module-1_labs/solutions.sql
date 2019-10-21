-- QUERY 1
SELECT 
    client_id
FROM
    `client`
WHERE
    district_id = 1
ORDER BY client_id
LIMIT 5;

-- QUERY 2
SELECT 
    client_id
FROM
    client
WHERE
    district_id = 72
ORDER BY client_id DESC
LIMIT 1; 

-- QUERY 3: From the `loan` table, what are the 3 lowest amounts?
SELECT 
    amount
FROM
    loan
ORDER BY amount
LIMIT 3;

-- QUERY 4. From the `loan` table, what are the possible values for status, ordered alphabetically in ascending order?
SELECT DISTINCT
    `status`
FROM
    loan
ORDER BY `status` ASC;

-- QUERY 5. From the `loans` table, what is the `loan_id` of the highest payment received?
SELECT 
    loan_id
FROM
    (SELECT 
        loan_id, MAX(payments)
    FROM
        loan
    GROUP BY loan_id
    ORDER BY MAX(payments) DESC
    LIMIT 1) B;
    
--  QUERY 6. From the `loans` table, what is the loan `amount` of the lowest 5 `account_id`s. Show the `account_id` and the corresponding `amount`
SELECT 
    account_id, amount
FROM
    loan
ORDER BY account_id ASC
LIMIT 5;

-- QUERY 7. From the `loans` table, which are the `account_id`s with the lowest loan `amount` have a loan `duration` of 60?

SELECT 
    account_id
FROM
    (SELECT 
        account_id, MIN(amount)
    FROM
        loan
    WHERE
        duration = 60
    GROUP BY account_id
    ORDER BY MIN(amount) ASC) b
;

-- QUERY  8. From the order table, what are the unique values of k_symbol?

SELECT DISTINCT
    k_symbol
FROM
    `order`
ORDER BY k_symbol;

-- QUERY 9. From the order table, which are the order_ids from the client with the account_id 34?

SELECT 
    order_id
FROM
    `order`
WHERE
    account_id = 34
ORDER BY order_id;

-- QUERY 10. From the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
  
SELECT DISTINCT
    account_id
FROM
    `order`
WHERE
    order_id BETWEEN 29540 AND 29560
ORDER BY account_id
;

-- QUERY 11. From the order table, what are the individual amounts that were sent to (account_to) id 30067122?

SELECT 
    amount
FROM
    `order`
WHERE
    account_to = 30067122; 

-- QUERY 12. From the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id = 793 in chronological order, from newest to oldest.

SELECT 
    trans_id, `date`, `type`, amount
FROM
    trans
WHERE
    account_id = 793
ORDER BY `date` DESC
LIMIT 10;


