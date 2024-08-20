-- 1. Film tablosunda bulunan replacement_cost s�tununda bulunan birbirinden farkl� de�erleri s�ralay�n�z.
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. Film tablosunda bulunan replacement_cost s�tununda birbirinden farkl� ka� tane veri vard�r?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film;

-- 3. Film tablosunda bulunan film isimlerinde (title) ka� tanesi T karakteri ile ba�lar ve ayn� zamanda rating 'G' ye e�ittir?
SELECT COUNT(*) AS t_starting_and_g_rating_count
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. Country tablosunda bulunan �lke isimlerinden (country) ka� tanesi 5 karakterden olu�maktad�r?
SELECT COUNT(*) AS five_character_country_count
FROM country
WHERE LENGTH(country) = 5;

-- 5. City tablosundaki �ehir isimlerinin ka� tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS r_ending_city_count
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';
