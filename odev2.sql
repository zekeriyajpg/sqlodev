/* 1. Replacement Cost Değeri 12.99 ile 16.99 Arasında Olan Filmleri Sıralama (BETWEEN - AND Yapısını Kullanarak)*/
SELECT *
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99
ORDER BY replacement_cost;
/* 2. Belirli First Name Değerlerine Sahip Aktörleri Sıralama (IN Operatörünü Kullanarak)*/
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;
/* 3. Belirli Rental Rate ve Replacement Cost Değerlerine Sahip Filmleri Sıralama (IN Operatörünü Kullanarak)*/
SELECT *
FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY rental_rate, replacement_cost;s
