create table
    if NOT EXISTS course (
        rollno int NOT NULL,
        course varchar(50),
        primary key (rollno)
    );

insert into
    course
values
    (102, 'english'),
    (105, 'math'),
    (103, 'science'),
    (107, 'cs');

create table
    employee (
        id INT NOT NULL,
        name varchar(50),
        manager_id INT,
        primary key (id)
    );

INSERT into
    employee
values
    (101, 'adam', 103),
    (102, 'bob', 104),
    (103, 'casey', NULL),
    (104, 'donald', 103);

SELECT
    *
from
    employee;

----! inner join ----
SELECT
    *
from
    students as s
    INNER JOIN course as c on s.rollno = c.rollno;

----! left join ----
select
    *
from
    students as s
    LEFT JOIN course as c on s.rollno = c.rollno;

----! right join ----
select
    *
from
    students as s
    RIGHT JOIN course as c on s.rollno = c.rollno;

----! full join ----
select
    *
from
    students as s
    LEFT JOIN course as c on s.rollno = c.rollno
UNION
select
    *
from
    students as s
    RIGHT JOIN course as c on s.rollno = c.rollno;

---- ! left exclusive join ----
select
    *
from
    students as s
    LEFT JOIN course as c on s.rollno = c.rollno
WHERE
    c.rollno is NULL;

---- ! right exclusive join ----
select
    *
from
    students as s
    RIGHT JOIN course as c on s.rollno = c.rollno
WHERE
    s.rollno is NULL;

---- ! full exclusive join ----
SELECT
    *
from
    students as s
    LEFT JOIN course as c on s.rollno = c.rollno
where
    c.rollno is NULL
UNION
select
    *
from
    students as s
    RIGHT JOIN course as c on s.rollno = c.rollno
where
    s.rollno is NULL;

---- ! self join ----
SELECT
    A.name as manager,
    B.name as employee
from
    employee as A
    JOIN employee as B on A.id = B.manager_id;

---- ! union ----
SELECT
    name
from
    employee
UNION
SELECT
    full_name
from
    students;

---- ! union All ----
SELECT
    name
from
    employee
UNION ALL
SELECT
    name
from
    employee;