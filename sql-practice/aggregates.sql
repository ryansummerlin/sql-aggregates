-- Step 1: count number of cats

SELECT COUNT(*) FROM cats;


-- Step 2

SELECT name, MIN(birth_year) as oldest_birth_year FROM cats;

SELECT name, MAX(birth_year) as youngest_birth_year FROM cats;

-- Both at once

SELECT name, birth_year FROM cats
WHERE MIN(birth_year) OR MAX(birth_year);
