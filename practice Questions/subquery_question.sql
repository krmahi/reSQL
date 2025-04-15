--* names of all students who scored more than class avg
select
    full_name,
    marks
from
    students
where
    marks > (
        select
            avg(marks)
        from
            students
    );

--* find the names of all students with even roll no
select
    rollno,
    full_name
from
    students
where
    rollno % 2 = 0;

--! or with subqueries
select
    full_name
from
    students
where
    rollno IN (
        select
            rollno
        from
            students
        where
            rollno % 2 = 0
    );

--* find the max marks of the students from delhi

--! using group by

select
    city,
    max(marks)
from
    students
GROUP BY
    city
having city = 'delhi';


--! using normal queries

select 
    max(marks) 
from 
    students 
where 
    city = 'delhi';

--! using subqueries

select 
    *
from
    students
where
    city = 'delhi' and marks = (select max(marks) from students where city = 'delhi');

-- * or

select 
    max(marks)
from 
    (select 
            *
        from
            students
        where
            city = 'delhi') as DELHI;


--* subquery with SELECT

SELECT (SELECT max(marks) from students), full_name from students;