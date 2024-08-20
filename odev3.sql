/*1. 'A' ile Baþlayýp 'a' ile Biten Ülke Ýsimlerini Sýralama*/

SELECT country
FROM country
WHERE country LIKE 'A%a'
ORDER BY country;
/*2. En Az 6 Karakterden Oluþan ve 'n' ile Biten Ülke Ýsimlerini Sýralama*/

SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n'
ORDER BY country;
/*3. En Az 4 Adet 'T' Karakteri Ýçeren Film Ýsimlerini Sýralama (Büyük/Küçük Harf Farketmeksizin)*/

SELECT title
FROM film
WHERE LENGTH(REGEXP_REPLACE(title, '[^Tt]', '', 'g')) >= 4
ORDER BY title;
/*4. 'C' ile Baþlayan, Uzunluðu 90'dan Büyük ve Rental Rate 2.99 Olan Filmleri Sýralama*/

SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
ORDER BY title, length, rental_rate;