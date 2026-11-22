-- SQL-Ex: SELECT (обучающий этап)

-- Задача 1
SELECT model, speed, hd FROM PC
WHERE price<500

-- Задача 2
SELECT DISTINCT maker
FROM Product 
WHERE type = 'Printer'

-- Задача 3
Select model, ram, screen 
FROM Laptop
WHERE price>1000


-- Задача 4 
select * from Printer
WHERE color = 'y'


-- Задача 5
SELECT model, speed, hd FROM PC
WHERE (cd = '12x' OR cd = '24x') AND price<600

-- Задача 6
SELECT DISTINCT  maker,speed FROM Laptop 
JOIN Product
ON Product.model = Laptop.model
WHERE hd>=10


-- Задача 7
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
SELECT DISTINCT maker FROM Product
WHERE type = 'PC'
AND maker NOT IN (SELECT maker FROM Product
WHERE type = 'Laptop')

-- Задача 9
SELECT  DISTINCT maker FROM Product
JOIN PC
ON PC.model = Product.model
WHERE speed >= 450


-- Задача 10
SELECT model, price
FROM Printer
GROUP BY model, price
HAVING price IN (SELECT MAX(price) FROM Printer)
