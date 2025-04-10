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