USE Publications;

-- CHALLENGE 1
-- Step 1

SELECT titleauthor.au_id AS author_id, 
titleauthor.title_id,
titles.price * sales.qty * titles.royalty/100 * titleauthor.royaltyper/100 AS royalty
FROM titleauthor
LEFT JOIN titles
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON sales.title_id = titles.title_id;

-- Step 2

SELECT titleauthor.au_id AS author_id, 
titleauthor.title_id,
SUM(titles.price * sales.qty * titles.royalty/100 * titleauthor.royaltyper/100) AS aggregated_royalty
FROM titleauthor
LEFT JOIN titles
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY titleauthor.au_id, titleauthor.title_id
ORDER BY titleauthor.au_id, titleauthor.title_id;

-- Step 3

SELECT 
    r.author_id,
    SUM(r.aggregated_royalty) + adv.Advances AS PROFIT
FROM
    (SELECT 
        titleauthor.au_id AS author_id,
            titleauthor.title_id,
            SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS aggregated_royalty
    FROM
        titleauthor
    LEFT JOIN titles ON titles.title_id = titleauthor.title_id
    LEFT JOIN sales ON sales.title_id = titles.title_id
    GROUP BY titleauthor.au_id , titleauthor.title_id
    ORDER BY titleauthor.au_id , titleauthor.title_id) r
        LEFT JOIN
    (SELECT 
        titleauthor.au_id AS author_id,
            SUM(titles.advance) AS Advances
    FROM
        titleauthor
    LEFT JOIN titles ON titles.title_id = titleauthor.title_id
    GROUP BY titleauthor.au_id) adv ON adv.author_id = r.author_id
GROUP BY r.author_id
ORDER BY PROFIT DESC
LIMIT 3
;

-- CHALLENGE 2  

/* SOLUTION BY 
CREATING TEMPORARY TABLES*/


CREATE TEMPORARY TABLE royalties AS
(SELECT titleauthor.au_id AS author_id, 
titleauthor.title_id,
SUM(titles.price * sales.qty * titles.royalty/100 * titleauthor.royaltyper/100) AS aggregated_royalty
FROM titleauthor
LEFT JOIN titles
ON titles.title_id = titleauthor.title_id
LEFT JOIN sales
ON sales.title_id = titles.title_id
GROUP BY titleauthor.au_id, titleauthor.title_id
ORDER BY titleauthor.au_id, titleauthor.title_id);

CREATE TEMPORARY TABLE sum_up_royalties AS
(SELECT author_id, 
SUM(aggregated_royalty) AS total_royalty
FROM royalties
GROUP BY author_id);

CREATE TEMPORARY TABLE advances AS(
SELECT titleauthor.au_id,
SUM(titles.advance) AS total_advances
FROM titleauthor
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
GROUP BY titleauthor.au_id
ORDER BY titleauthor.au_id
);

SELECT 
    sum_up_royalties.author_id,
    (sum_up_royalties.total_royalty + advances.total_advances) AS profit
FROM
    sum_up_royalties
        LEFT JOIN
    advances ON advances.au_id = sum_up_royalties.author_id
ORDER BY Profit DESC
LIMIT 3;

-- Challenge 3

CREATE TABLE most_profiting_authors AS
 (SELECT sum_up_royalties.author_id,
    (sum_up_royalties.total_royalty + advances.total_advances) AS profits FROM
    sum_up_royalties
        LEFT JOIN
    advances ON advances.au_id = sum_up_royalties.author_id
ORDER BY profits DESC
LIMIT 3);




 