-- INSERT INTO animals ( name, type, age ) 
-- VALUES ('Leo', 'lion', 12),
-- ('Jerry', 'mouse', 4),
-- ('Marty', 'zebra', 10),
-- ('Gloria', 'hippo', 8),
-- ('Alex', 'lion', 9),
-- ('Melman', 'giraffe', 15),
-- ('Nala', 'lion', 2),
-- ('Marie', 'cat', 1),
-- ('Flounder', 'fish', 8);

-- Create a table called animals that has 4 columns: id - serialized integer that’s the primary key, name - can be any data type that holds strings, type - also for strings, and age which will be a whole number.

create table animals (
    id serial primary key,
    name varchar(100) not null,
    type varchar(100) not null,
    age int
);

-- Next, run the commented code provided in delete.sql to insert some data into your table.

-- Try selecting from animals to confirm that everything worked.

select * from animals limit 5;

-- Delete all ‘lion’ entries from the table.

delete from animals where type='lion';

-- Delete all animals whose names start with “M”.

delete from animals where name like 'M%';

-- Delete all entries whose age is less than 9.

delete from animals where age < 9;
