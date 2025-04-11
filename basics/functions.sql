SELECT
    max(marks)
from
    students;

SELECT
    min(marks)
from
    students;

SELECT
    AVG(marks)
from
    students;

SELECT
    SUM(marks)
from
    students;

SELECT
    count(name)
from
    students;

select
    rollno,
    name
from
    students
WHERE
    marks = (
        SELECT
            max(marks)
        from
            students
    );