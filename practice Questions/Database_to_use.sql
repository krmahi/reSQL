CREATE DATABASE if NOT EXISTS college;

use college;

create table
    if NOT EXISTS students (
        rollno INT primary key,
        name varchar(50),
        marks float NOT NULL,
        grade varchar(1),
        city varchar(20)
    );

INSERT into
    students
values
    (101, "anil", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
    (103, "chetan", 85, "B", "Mumbai"),
    (104, "dhruv", 96, "A", "Delhi"),
    (105, "emanuel", 12, "F", "Delhi"),
    (106, "farah", 82, "B", "Delhi");

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