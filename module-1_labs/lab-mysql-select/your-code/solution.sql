USE Publications;

-- CHALLENGE 1

SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    titles.title AS 'TITLE',
    publishers.pub_name AS 'PUBLISHER'
FROM
    authors
        INNER JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        INNER JOIN
    titles ON titles.title_id = titleauthor.title_id
        INNER JOIN
    publishers ON publishers.pub_id = titles.pub_id;



-- CHALLENGE 2

SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    publishers.pub_name AS 'PUBLISHER',
    COUNT(DISTINCT titles.title_id) AS 'TITLE COUNT'
FROM
    authors
        INNER JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        INNER JOIN
    titles ON titles.title_id = titleauthor.title_id
        INNER JOIN
    publishers ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id , publishers.pub_name
ORDER BY authors.au_id;
    
    -- CHALLENGE 3
    
    SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    SUM(sales.qty) AS 'TOTAL'
FROM
    authors
        INNER JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        INNER JOIN
    sales ON sales.title_id = titleauthor.title_id
GROUP BY authors.au_id
ORDER BY SUM(sales.qty) DESC
LIMIT 3;

-- CHALLENGE 4
     
    SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
	SUM( CASE WHEN sales.title_id IS NULL THEN 0
    ELSE sales.qty END) AS TOTAL
FROM
    authors
        LEFT JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        LEFT JOIN
    sales ON sales.title_id = titleauthor.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC;

-- BONUS CHALLENGE

SELECT 
    authors.au_id,
    authors.au_lname,
    authors.au_fname,
    titleauthor.title_id,
    titles.advance + (titleauthor.royaltyper * titles.price * SUM(sales.qty)) / 100 AS PROFIT
FROM
    authors
        LEFT JOIN
    titleauthor ON titleauthor.au_id = authors.au_id
        LEFT JOIN
    titles ON titles.title_id = titleauthor.title_id
        LEFT JOIN
    sales ON sales.title_id = titles.title_id
GROUP BY authors.au_id , titleauthor.title_id
ORDER BY PROFIT DESC
LIMIT 3;


