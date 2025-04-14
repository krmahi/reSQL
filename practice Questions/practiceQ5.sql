alter table students change name full_name varchar(50);

delete from students
where
    marks < 80;

ALTER table students
drop grade;

SELECT
    *
from
    students;