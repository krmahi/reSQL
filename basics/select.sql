-- all
SELECT
    *
from
    students;

-- specific col
SELECT
    rollno,
    marks,
    name
FROM
    students;

-- distincts
SELECT DISTINCT
    city
from
    students;

-- where clause
SELECT
    *
from
    students
where
    city = "Delhi";

SELECT
    *
from
    students
where
    marks > 80;

SELECT
    *
from
    students
where
    marks > 80
    and city = "pune";

-- with operator
-- arithematic and comparision
select
    *
from
    students
where
    marks + 10 > 100;

select
    *
from
    students
where
    marks + 10 < 100;

-- logical -> between
select
    *
from
    students
where
    marks BETWEEN 80 and 90;

-- IN
select
    *
from
    students
where
    city IN ("Delhi", "Mumbai");

-- not (with IN for list)
select
    *
from
    students
where
    city NOT IN ("Delhi", "Mumbai");

-- no data    
select
    *
from
    students
where
    city IN ("noida", "banglore");

-- limit clause
--first 3 rows returned
SELECT
    *
from
    students
LIMIT
    3;

-- Limit with where
SELECT
    *
from
    students
where
    marks > 80
LIMIT
    1;

-- order By
SELECT
    *
FROM
    students
ORDER BY
    city ASc;

SELECT
    *
FROM
    students
ORDER BY
    city DESC;

SELECT
    rollno,
    name,
    city
FROM
    students
ORDER BY
    marks DESC;

-- top 3 students
SELECT
    rollno,
    name
from
    students
ORDER BY
    marks DESC
LIMIT
    3;

-- group by
SELECT
    city,
    count(name)
from
    students
GROUP BY
    city;

-- max marks in a city
SELECT
    city,
    max(marks)
from
    students
GROUP BY
    city;

-- we can make multiple col groups
SELECT
    city,
    name,
    count(rollno)
from
    students
GROUP BY
    city,
    name;

-- HAVING clause (where cannot be used on groups)
-- no of student in each city where max marks cross 90
select
    city,
    count(rollno)
from
    students
GROUP BY
    city
HAVING
    max(marks) > 90;