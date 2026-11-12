-- SQL-Ex: SELECT (обучающий этап)
-- Файл: sql/select-basics/tasks_01_10.sql

-- Задача 1
-- TODO: 
SELECT model, speed, hd FROM PC
WHERE price<500

-- Задача 2
-- TODO: 
SELECT DISTINCT maker
FROM Product 
WHERE type = 'Printer'

-- Задача 3
-- TODO: 
Select model, ram, screen 
FROM Laptop
WHERE price>1000


-- Задача 4
-- TODO: 
select * from Printer
WHERE color = 'y'


-- Задача 5
-- TODO: 
SELECT model, speed, hd FROM PC
WHERE (cd = '12x' OR cd = '24x') AND price<600

-- Задача 6
-- TODO: вставьте запрос
SELECT DISTINCT  maker,speed FROM Laptop 
JOIN Product
ON Product.model = Laptop.model
WHERE hd>=10


-- Задача 7
-- TODO: 
SELECT p1.model, a1.price
FROM Product p1
JOIN PC a1
ON p1.model = a1.model
WHERE maker = 'B'

UNION

SELECT p2.model, a2.price
FROM Product p2
JOIN Laptop a2
ON p2.model = a2.model
WHERE maker = 'B'

UNION

SELECT p3.model, a3.price
FROM Product p3
JOIN Printer a3
ON p3.model = a3.model
WHERE maker = 'B'


-- Задача 8
-- TODO: 
SELECT DISTINCT maker FROM Product
WHERE type = 'PC'
AND maker NOT IN (SELECT maker FROM Product
WHERE type = 'Laptop')

-- Задача 9
-- TODO: 
SELECT  DISTINCT maker FROM Product
JOIN PC
ON PC.model = Product.model
WHERE speed >= 450


-- Задача 10
-- TODO: 
SELECT model, price
FROM Printer
GROUP BY model, price
HAVING price IN (SELECT MAX(price) FROM Printer)