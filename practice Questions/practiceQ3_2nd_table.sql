-- total payment according to each payment method
create table
    IF NOT EXISTS payment (
        customer_id int NOT NULL,
        customer varchar(50),
        mode VARCHAR(50),
        city VARCHAR(50),
        primary key (customer_id)
    )
insert into
    payment
values
    (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
    (102, 'Ethan sinclair', 'credit card', 'miami'),
    (103, 'maya', 'credit card', 'seattle'),
    (104, 'liam', 'Netbanking', 'denver'),
    (105, 'sophia', 'credit card', 'orleans'),
    (106, 'caleb', 'debit card', 'minneapolis'),
    (107, 'ava', 'debit card', 'phoenix'),
    (108, 'lucas', 'netbanking', 'boston'),
    (109, 'martinez', 'Netbanking', 'nashville'),
    (110, 'jackson', 'credit card', 'boston');

SELECT
    *
from
    payment;

select
    mode,
    count(customer)
from
    payment
GROUP BY
    mode;