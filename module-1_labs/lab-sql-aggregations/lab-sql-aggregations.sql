use bank;

-- Query 1.

SELECT 
    district_id, COUNT(client_id) AS no_clients
FROM
    `client`
WHERE
    district_id < 10
GROUP BY district_id
ORDER BY district_id;

-- Query 2

SELECT `type`, COUNT(card_id) AS no_cards
FROM card
GROUP BY `type`
ORDER BY no_cards DESC;

-- Query 3

SELECT 
    account_id, SUM(amount) AS total_loan_amount
FROM
    loan
GROUP BY account_id
ORDER BY total_loan_amount DESC;

-- Query 4

SELECT 
    `date`, COUNT(loan_id) AS no_loans_issued
FROM
    loan
WHERE
    `date` < 930907
GROUP BY `date`
ORDER BY `date` DESC;

-- Query 5

SELECT 
    `date`, duration, COUNT(loan_id) AS no_loans_issued
FROM
    loan
WHERE
    `date` BETWEEN 971201 AND 971231
GROUP BY `date` , duration
ORDER BY `date` ASC , duration ASC;

-- Query 6


SELECT account_id, `type`, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396 AND `type`!= 'VYBER'
GROUP BY `type`
ORDER BY `type` ASC;

-- Query 7

SELECT 
    account_id,
    CASE `type`
        WHEN 'PRIJEM' THEN 'INCOMING'
        WHEN 'VYDAJ' THEN 'OUTGOING'
    END,
    FLOOR(SUM(amount)) AS total_amount
FROM
    trans
WHERE
    account_id = 396 AND `type` != 'VYBER'
GROUP BY `type`
ORDER BY `type` ASC;

-- QUERY 8
SELECT a.account_id, a.incoming , b.outgoing,  a.incoming - b.outgoing AS difference
FROM
(SELECT 
    account_id,
    FLOOR(SUM(amount)) AS incoming
FROM
    trans
WHERE
	`type` = 'PRIJEM'
    GROUP BY account_id
) a 
INNER JOIN 
(SELECT 
    account_id,
    FLOOR(SUM(amount)) AS outgoing
FROM
    trans
WHERE
    `type` = 'VYDAJ'
    GROUP BY account_id) b
ON a.account_id = b.account_id
ORDER BY difference DESC
LIMIT 10
;





 
