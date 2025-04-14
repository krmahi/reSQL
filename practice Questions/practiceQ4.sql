-- return no of student on grades
select
    grade,
    count(rollno)
from
    students
GROUP BY
    grade
ORDER BY
    grade;