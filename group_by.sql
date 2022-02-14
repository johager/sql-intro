-- These questions reference the invoice, track and album tables.

-- Find the sum of totals in the invoice table grouped by billing_state.

select sum(total), billing_state from invoice group by billing_state order by billing_state;

-- Find the average track length (in milliseconds) by album. Order the table by the averages.

select avg(milliseconds) as ave from track group by album_id order by ave;

-- Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.

select artist_id, count(*) from album
where artist_id in (8, 22)
group by artist_id;