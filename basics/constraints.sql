-- multiple constraints
create table
    tb_name (id INT NOT NULL, primary key (id));

DROP table tb_name;

-- constraints
-- primary key combination
primary key (id, name) -- the combined col should be uniwue
-- foreign key
foreign key (cout_id) references customer (id) '''
cout_id -> current table col
customer -> 2nd table
id -> pk of 2nd table
'''
-- default
create table
    temp (
        id INT NOT NULL,
        salary INT default 25000,
        primary key (id)
    ) -- does not overwrite values , we can still insert different values 
    --its not a constant
insert into
    temp (id)
values
    (101);

-- drop table temp;
SELECT
    *
from
    temp;

-- CHECK
create table
    temp2 (
        id INT,
        city varchar(50),
        age INT NOT NULL,
        constraints age_check check (
            age <= 18
            and city = "Delhi"
        )
    );

-- we can write a contraint name or don't
CREATE table
    temp2 (age INT check (age <= 18));