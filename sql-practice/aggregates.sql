-- Step 1: count number of cats

SELECT COUNT(*) FROM cats;


-- Step 2

SELECT name, MIN(birth_year) as oldest_birth_year FROM cats;

SELECT name, MAX(birth_year) as youngest_birth_year FROM cats;


-- Bonus Step 1

SELECT cats.name, COUNT(toys.id) AS num_toys FROM cats
    JOIN toys ON (cats.id = toys.cat_id)
    GROUP BY cats.name
    ORDER BY num_toys DESC;


-- Bonus Step 2

SELECT cats.name, COUNT(toys.id) AS num_toys FROM cats
    JOIN toys ON (cats.id = toys.cat_id)
    GROUP BY cats.name
    HAVING num_toys >= 2
    ORDER BY num_toys DESC;
