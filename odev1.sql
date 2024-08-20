/*1. Film tablosunda bulunan title ve description sütunlarýndaki verileri sýralama*/
SELECT title, description
FROM film
ORDER BY title, description;
/*2. Film tablosunda bulunan tüm sütunlardaki verileri, film uzunluðu (length) 60'dan büyük ve 75'ten küçük olma koþullarýyla sýralama:*/
select *
FROM film 
where lenght > 60 AND lenght < 75
order by lenght;
/*3. Film tablosunda bulunan tüm sütunlardaki verileri, rental_rate 0.99 ve replacement_cost 12.99 veya 28.99 olma koþullarýyla sýralama:*/
SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate, replacement_cost;
/*4. 4. Customer tablosunda bulunan first_name sütunundaki deðeri 'Mary' olan müþterinin last_name sütunundaki deðeri nedir?*/
SELECT last_name
FROM customer
WHERE first_name = 'Mary';
/*5.  Film tablosundaki uzunluðu(length) 50'den büyük olmayýp ayný zamanda rental_rate deðeri 2.99 veya 4.99 olmayan verileri sýralama:*/
SELECT *
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;
