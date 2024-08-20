-- 1. Film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklý deðerleri sýralayýnýz.
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. Film tablosunda bulunan replacement_cost sütununda birbirinden farklý kaç tane veri vardýr?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count
FROM film;

-- 3. Film tablosunda bulunan film isimlerinde (title) kaç tanesi T karakteri ile baþlar ve ayný zamanda rating 'G' ye eþittir?
SELECT COUNT(*) AS t_starting_and_g_rating_count
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluþmaktadýr?
SELECT COUNT(*) AS five_character_country_count
FROM country
WHERE LENGTH(country) = 5;

-- 5. City tablosundaki þehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS r_ending_city_count
FROM city
WHERE city LIKE '%r' OR city LIKE '%R';
