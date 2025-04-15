CREATE VIEW
    IF NOT EXISTS student_list AS
SELECT
    rollno,
    full_name,
    marks
from
    students;

DROP VIEW student_list;

SELECT
    *
from
    student_list;

SELECT
    *
from
    student_list
where
    marks < 90;