select
    city,
    count(rollno)
from
    students
where
    grade = "A"
GROUP BY
    city
HAVING
    max(marks) > 90
ORDER BY
    city ASC
LIMIT
    1;