/*1. 'A' ile Ba�lay�p 'a' ile Biten �lke �simlerini S�ralama*/

SELECT country
FROM country
WHERE country LIKE 'A%a'
ORDER BY country;
/*2. En Az 6 Karakterden Olu�an ve 'n' ile Biten �lke �simlerini S�ralama*/

SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n'
ORDER BY country;
/*3. En Az 4 Adet 'T' Karakteri ��eren Film �simlerini S�ralama (B�y�k/K���k Harf Farketmeksizin)*/

SELECT title
FROM film
WHERE LENGTH(REGEXP_REPLACE(title, '[^Tt]', '', 'g')) >= 4
ORDER BY title;
/*4. 'C' ile Ba�layan, Uzunlu�u 90'dan B�y�k ve Rental Rate 2.99 Olan Filmleri S�ralama*/

SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
ORDER BY title, length, rental_rate;