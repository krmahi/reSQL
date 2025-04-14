-- find avg marks in each city in ASc and desc order
select
    city,
    avg(marks)
from
    students
GROUP BY
    city
ORDER BY
    avg(marks) ASC;

select
    city,
    avg(marks)
from
    students
GROUP BY
    city
ORDER BY
    avg(marks) DESC;