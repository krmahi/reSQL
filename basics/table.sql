use college;

CREATE TABLE
    students (
        id INT primary key,
        name varchar(50),
        age INT NOT NULL
    );

INSERT INTO
    students
VALUES
    (1, 'mahi', 22);

INSERT INTO
    students
VALUES
    (2, 'shradha', 21);

SELECT
    *
FROM
    students;

DROP TABLE students;

CREATE TABLE
    students (rollno INT primary key, name varchar(50));

SELECT
    *
FROM
    students
INSERT INTO
    students
values
    (101, "mahi"),
    (102, "ruhi"),
    (103, "shradha");

INSERT INTO
    students (rollno, name)
values
    (104, "rohanni");

INSERT INTO
    students (name, rollno)
values
    ("suhani", 105);

-- disable safe update mode
set
    SQL_SAFE_UPDATES = 0;

-- update
update students
set
    grade = "O"
where
    grade = "A";

update students
set
    marks = 86
where
    rollno = 105;

update students
set
    grade = "B"
where
    marks between 80 AND 90;

-- increment marks by 1
update students
set
    marks = marks + 1;

update students
set
    marks = 12
where
    rollno = 105;

delete from students
where
    marks < 33;

select
    *
from
    students;