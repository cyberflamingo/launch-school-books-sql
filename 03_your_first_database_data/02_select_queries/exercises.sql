-- 01
-- \c encyclopedia
SELECT
  population
FROM
  countries
WHERE
  name = 'USA';
-- 02
SELECT
  population,
  capital
FROM
  countries;
-- 03
SELECT
  name
FROM
  countries
ORDER BY
  name;
-- 04
SELECT
  name,
  capital
FROM
  countries
ORDER BY
  population;
-- 05
SELECT
  name,
  capital
FROM
  countries
ORDER BY
  population DESC;
-- 06
SELECT
  name,
  binomial_name,
  max_weight_kg,
  max_age_years
FROM
  animals
ORDER BY
  max_age_years,
  max_weight_kg,
  name DESC;
-- 07
SELECT
  name
FROM
  countries
WHERE
  population > 70000000;
-- 08
SELECT
  name
FROM
  countries
WHERE
  population > 70000000
  AND population < 200000000;
-- 09
SELECT
  first_name,
  last_name
FROM
  celebrities
WHERE
  deceased ! = true
  OR deceased IS NULL;
-- 10
SELECT
  first_name,
  last_name
from
  celebrities
WHERE
  occupation ILIKE '%singer%';
-- 11
SELECT
  first_name,
  last_name
from
  celebrities
WHERE
  occupation ILIKE '%actor%'
  OR occupation ILIKE '%actress%';
-- 12
SELECT
  first_name,
  last_name
FROM
  celebrities
WHERE
  (
    occupation LIKE '%Actor%'
    OR occupation LIKE '%Actress%'
  )
  AND occupation LIKE '%Singer%';
-- 13
SELECT
  burger
FROM
  orders
WHERE
  burger_cost < 5.00
ORDER BY
  burger_cost;
-- 14
SELECT
  customer_name,
  customer_email,
  customer_loyalty_points
FROM
  orders
WHERE
  customer_loyalty_points >= 20
ORDER BY
  customer_loyalty_points DESC;
-- 15
SELECT
  burger
FROM
  orders
WHERE
  customer_name = 'Natasha O''Shea';
-- 16
SELECT
  customer_name
FROM
  orders
WHERE
  drink IS NULL;
-- 17
SELECT
  burger,
  side,
  drink
FROM
  orders
WHERE
  side <> 'fries'
  OR side IS NULL;
-- 18
SELECT
  burger,
  side,
  drink
FROM
  orders
WHERE
  side IS NOT NULL
  AND drink IS NOT NULL;
