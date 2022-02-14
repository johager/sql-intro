-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

create table person (
  id serial primary key,
  name varchar(100) not null,
  age int,
  height_cm int,
  city varchar(50),
  favorite_color varchar(25)
);

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

insert into person (name, age, height_cm, city, favorite_color)
values ('name1', 25, 168, 'city1', 'green');

insert into person (name, age, height_cm, city, favorite_color)
values
('name2', 35, 172, 'city2', 'green'),
('name3', 18, 179, 'city3', 'red'),
('name4', 27, 182, 'city4', 'blue'),
('name4', 13, 170, 'city5', NULL);

-- Select all the people in the person table by height from tallest to shortest.

select * from person order by height_cm desc;

-- Select all the people in the person table by height from shortest to tallest.

select * from person order by height_cm;

-- Select all the people in the person table by age from oldest to youngest.

select * from person order by age desc;

-- Select all the people in the person table older than age 20.

select * from person where age > 20 order by age;

-- Select all the people in the person table that are exactly 18.

select * from person where age = 18 order by id;

-- Select all the people in the person table that are less than 20 and older than 30.

select * from person where age < 20 and age > 30 order by id;

--  // I think you meant to select people less than 20 or older than 30 in order get a non-zero return because very few people are both less than 20 and older than 30 at the same time //

select * from person where age < 20 or age > 30 order by id;

-- Select all the people in the person table that are not 27 (use not equals).

select * from person where age != 27 order by id;

-- Select all the people in the person table where their favorite color is not red.

select * from person where favorite_color != 'red' order by id;

-- Select all the people in the person table where their favorite color is not red and is not blue.

select * from person where favorite_color != 'red' and favorite_color != 'blue' order by id;

-- Select all the people in the person table where their favorite color is orange or green.

select * from person where favorite_color = 'orange' or favorite_color = 'green' order by id;

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).

select * from person where favorite_color in ('orange', 'green', 'blue') order by id;

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).

select * from person where favorite_color in ('yellow', 'purple') order by id;