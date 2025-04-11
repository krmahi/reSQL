CREATE DATABASE if NOT EXISTS XYZ;

USE XYZ;

CREATE TABLE
    if NOT EXISTS employees (
        id INT primary key,
        name varchar(50),
        salary INT NOT NULL
    );

INSERT into
    employees
values
    (1, "adam", 25000),
    (2, "bob", 30000),
    (3, "casey", 40000);

SELECT
    *
FROM
    employees;