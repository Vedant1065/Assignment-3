use pubs;
-- Question-8 Show the sql to show the publishers with no titles
select * from publishers;

select a.pub_name,a.pub_id
from publishers a
where a.pub_id not in ( select b.pub_id from titles b)

-- Question-6 Show the sql to find all the titles with more than one author.

select * from titles;
select * from titleauthor;

select a.title_id, b.title 
from titleauthor a, titles b
where a.title_id = b.title_id
group by a.title_id, b.title
having count( a.au_id) >1;

--Question- 7 Show the sql to show all the authors with more than one title

select * from authors;
select * from titleauthor;
select * from titles;

SELECT titleauthor.au_id, authors.au_lname
FROM titleauthor
LEFT JOIN authors ON titleauthor.au_id = authors.au_id
GROUP BY titleauthor.au_id, authors.au_lname
HAVING COUNT (titleauthor.au_id) > 1
