-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

create table orders (
    order_id serial primary key,
    person_id int not null,
    product_name varchar(150) not null,
    product_price float not null,
    quantity int not null
);

-- Add 5 orders to the orders table.
-- • Make orders for at least two different people.
-- • person_id should be different for different people.

insert into orders (person_id, product_name, product_price, quantity)
values (1, 'product1', 1.25, 1);

insert into orders (person_id, product_name, product_price, quantity)
values
(2, 'product1', 1.25, 1),
(2, 'product2', 2.25, 2),
(3, 'product1', 1.25, 2),
(3, 'product3', 3.25, 2),
(4, 'product3', 3.25, 2);

-- Select all the records from the orders table.

select * from orders order by order_id;

-- Calculate the total number of products ordered.

select sum(quantity) from orders;

-- Calculate the total order price.

select sum(product_price * quantity) from orders;

-- Calculate the total order price by a single person_id.

select sum(product_price * quantity) from orders where person_id=2;