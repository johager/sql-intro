-- Count how many orders were made from the USA.

select count(*) from invoice where billing_country='USA';

-- Find the largest order total amount.

select max(total) from invoice;

-- Find the smallest order total amount.

select min(total) from invoice;

-- Find all orders bigger than $5.

select * from invoice where total > 5 order by total;

-- Count how many orders were smaller than $5.

select count(*) from invoice where total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).

select count(*) from invoice where billing_state in ('CA','TX','AZ');

-- Get the average total of the orders.

select avg(total) from invoice;

-- Get the total sum of the orders.

select sum(total) from invoice;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.

update invoice set total=24 where invoice_id=5;

-- Delete the invoice with an invoice_id of 1.

delete from invoice_line where invoice_id=1;
delete from invoice where invoice_id=1;