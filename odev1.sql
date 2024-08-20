/*1. Film tablosunda bulunan title ve description s�tunlar�ndaki verileri s�ralama*/
SELECT title, description
FROM film
ORDER BY title, description;
/*2. Film tablosunda bulunan t�m s�tunlardaki verileri, film uzunlu�u (length) 60'dan b�y�k ve 75'ten k���k olma ko�ullar�yla s�ralama:*/
select *
FROM film 
where lenght > 60 AND lenght < 75
order by lenght;
/*3. Film tablosunda bulunan t�m s�tunlardaki verileri, rental_rate 0.99 ve replacement_cost 12.99 veya 28.99 olma ko�ullar�yla s�ralama:*/
SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY rental_rate, replacement_cost;
/*4. 4. Customer tablosunda bulunan first_name s�tunundaki de�eri 'Mary' olan m��terinin last_name s�tunundaki de�eri nedir?*/
SELECT last_name
FROM customer
WHERE first_name = 'Mary';
/*5.  Film tablosundaki uzunlu�u(length) 50'den b�y�k olmay�p ayn� zamanda rental_rate de�eri 2.99 veya 4.99 olmayan verileri s�ralama:*/
SELECT *
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;
