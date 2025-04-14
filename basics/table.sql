use college;

CREATE TABLE
    students (
        id INT primary key,
        name varchar(50),
        age INT NOT NULL
    );

CREATE table
    if NOT EXISTS department (
        id int NOT NULL,
        name VARCHAR(50),
        primary key (id)
    );

insert into
    department
values
    (101, "english"),
    (102, "IT");

update department
set
    id = 103
where
    id = 102;

update department
set
    id = 111
where
    id = 101;

select
    *
from
    department;

CREATE table
    if NOT EXISTS teachers (
        id int NOT NULL,
        name VARCHAR(50),
        dept_id int NOT NULL,
        primary key (id),
        foreign key (dept_id) references department (id) on delete cascade ON UPDATE CASCADE
    );

INSERT into
    teachers
values
    (101, "adam", 101),
    (102, "Eve", 102);

select
    *
from
    teachers;

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

-- alter (change schema)
-- ADD column
ALTER TABLE students
ADD column age int NOT NULL DEFAULT 19;

-- modify column
ALTER table students MODIFY age varchar(2);

-- change column
ALTER table students change age stu_age INT;

-- drop column
ALTER table students
DROP column stu_age;

-- rename to (table_name)
ALTER table students
rename to stu;

ALTER table stu
rename to students;

-- TRUNCATE
truncate table students;

select
    *
from
    students;